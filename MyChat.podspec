Pod::Spec.new do |s|

s.name         = "MyChat"
s.version      = "0.1.1"
s.summary      = "Custom chat base on QiscusUI"
s.description  = <<-DESC
Custom Chat SDK Base on QiscusUI-Example.
DESC
s.homepage     = "https://qiscus.com"
s.license      = "MIT"
s.author       = "Qiscus"
s.source       = { :path => "MyChat/" }
s.source_files  = "MyChat/**/*.{swift}"
s.resource_bundles = {
    'MyChat' => ['MyChat/**/*.{xib,xcassets,imageset,png}']
}
s.platform      = :ios, "10.0"

s.dependency 'QiscusUI', '~> 0.2.1'
s.dependency 'SDWebImage', '~> 4.4.2'
s.dependency 'SwiftyJSON', '~> 4.2.0'
s.dependency 'Alamofire', '~> 4.7.3'
s.dependency 'SimpleImageViewer', '~> 1.1.1'

end
