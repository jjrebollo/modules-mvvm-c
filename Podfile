# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

use_frameworks!

workspace 'ReferenceArch'

# Main app

def referencearch_pods
  pod 'RxSwift'
end


target 'ReferenceArch' do
  
  project 'ReferenceArch/ReferenceArch.xcodeproj'
  referencearch_pods

  target 'ReferenceArchTests' do
    inherit! :search_paths
    
  end

  target 'ReferenceArchUITests' do
    inherit! :search_paths
    
  end

end


# Module 1

def module1_pods
  pod 'RxSwift'
end

target 'Module1' do
  
  project 'Module1/Module1.xcodeproj'
  module1_pods

  target 'Module1Tests' do
    inherit! :search_paths
    
  end

end


# Base Module

def baseModule_pods
  pod 'RxSwift'
end

target 'BaseModule' do
  
  project 'BaseModule/BaseModule.xcodeproj'
  baseModule_pods

  target 'BaseModuleTests' do
    inherit! :search_paths
    
  end

end

# Module with UI

def uiModule_pods
  pod 'RxSwift'
end

target 'UIModule' do
  
  project 'UIModule/UIModule.xcodeproj'
  uiModule_pods

  target 'UIModuleTests' do
    inherit! :search_paths
    
  end

end
