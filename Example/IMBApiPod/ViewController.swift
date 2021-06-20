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
        // Do any additional setup after loading the view, typically from a nib.
        let cliente:Client = Client()
      cliente.getList(type: [Posts].self, path: "posts") { result in
            switch result {
                case .success(let posts):
                    print(posts)
                 
                case .failure(let error):
                    print(error)
               }
        }
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

