# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'
use_frameworks!
inhibit_all_warnings!

def app_pods
  # Tool to enforce Swift style and conventions
  pod 'SwiftLint'
  # Firebase
  pod 'Firebase/Analytics'
end

target 'ConfigCI' do
  use_frameworks!
  app_pods
  
  target 'ConfigCITests' do
    inherit! :search_paths
  end
end
