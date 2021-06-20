#
# Be sure to run `pod lib lint IMBApiPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IMBApiPod'
  s.version          = '0.1.1'
  s.summary          = 'A short description of IMBApiPod.'
  s.description      = 'Prueba de pod'
  s.homepage         = 'https://github.com/IrvinMB/IMBPodApi'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'IrvinMB' => 'imbcr89@gmail.com' }
  s.source           = { :git => 'https://github.com/IrvinMB/IMBPodApi.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'IMBApiPod/Classes/**/*'
end
