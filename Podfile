# Uncomment the next line to define a global platform for your project
platform :ios, '14.7'

target 'New VIN Lookup' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
	inhibit_all_warnings!

  # Pods for New VIN Lookup
  pod 'Cause-Logic-Effect'
  pod 'IQKeyboardManagerSwift' 

  target 'New VIN LookupTests' do
    inherit! :search_paths
    pod 'RxTest'
    
    # Pods for testing
  end

  target 'New VIN LookupUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if target.name == 'RxSwift' and config.name == 'Debug'
        config.build_settings['OTHER_SWIFT_FLAGS'] ||= ['-D', 'TRACE_RESOURCES']
      end
    end
  end
end

