#
#  Be sure to run `pod spec lint SimpleCurrencies.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "SimpleCurrencies"
  s.version      = "1.0.0"
  s.summary      = "Currencies is a Swift framework that allows the iOS developers to use the currencies in a simplier way."
  s.description  = <<-DESC
			Currencies is a Swift framework that allows the iOS developers to use the currencies in a simplier way. You can for exemple retrieve all currencies metadata by calling one class variable or convert a number to currency string format with only one class method.
                   DESC
  s.homepage     = "https://github.com/iMac0de/SimpleCurrencies"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "iMac0de" => "contact@jeremy-peltier.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/iMac0de/SimpleCurrencies.git", :tag => "#{s.version}" }
  s.source_files  = "**/Headers/*", "**/Models/*"
  s.public_header_files = "**/Headers/*"
  s.resources  = "**/Resources/*"

end
