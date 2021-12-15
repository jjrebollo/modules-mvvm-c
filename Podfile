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
