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
    
  end

end


# Module with no UI

def noUiModule_pods
  pod 'RxSwift'
end

target 'NoUIModule' do
  
  project 'NoUIModule/NoUIModule.xcodeproj'
  noUiModule_pods

  target 'NoUIModuleTests' do
    
  end

end
