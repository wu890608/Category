Pod::Spec.new do |s|

  s.name         = "Category"
  s.version      = "0.0.2"
  s.summary      = "category"
  s.description  = <<-DESC
		分类集,分类集,分类集,                 
 DESC

  s.homepage     = "https://github.com/wu890608/Category"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "大强" => "997121430@qq.com" }
  s.platform     = :ios, "5.0"
  s.ios.deployment_target = "5.0"
  s.source       = { :git => "https://github.com/wu890608/Category.git", :tag => "0.0.2" }
  s.source_files  = "Category/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.frameworks = "UIKit", "CoreGraphics", "Foundation"


end
