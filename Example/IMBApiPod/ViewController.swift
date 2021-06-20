//
//  ViewController.swift
//  IMBApiPod
//
//  Created by IrvinMB on 06/19/2021.
//  Copyright (c) 2021 IrvinMB. All rights reserved.
//

import UIKit
import IMBApiPod
class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        let baseURL:String = "https://my-json-server.typicode.com/IrvinMB/mypost1/"
        // Do any additional setup after loading the view, typically from a nib.
        let cliente:Client = Client(elBaseURL: baseURL)
      cliente.getList(type: [Posts].self, path: "posts") { result in
            switch result {
                case .success(let posts):
                    print(posts)
                 
                case .failure(let error):
                    print(error)
               }
        }
        cliente.getItems(type: [Posts].self, parametros: ["id" : 1], path:  "posts") { result in
              switch result {
                  case .success(let posts):
                      print("SE Obtiene: \(posts)")
                   
                  case .failure(let error):
                      print(error)
                 }
          }
        cliente.DeleteJson(path:"posts", identificador: "1",complete: { elResultPost  in
            print("SE elimina el id 1 \(elResultPost)")
        })
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

