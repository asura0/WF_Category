
Pod::Spec.new do |s|

s.name         = "WFCategory"#名称
s.version      = "1.0.0"#版本号
s.summary      = "a  demo description creat cocoapods"#描述

s.description  = <<-DESC
TODO:a  demo description creat cocoapods
DESC

s.homepage     = "https://github.com/asura0/WF_Category.git"#描述页面

s.license      = { :type => "MIT", :file => "LICENSE" }

s.author             = { "asura" => "924375908@qq.com" }

s.platform     = :ios, "7.0"#支持系统版本

s.source       = { :git => "https://github.com/asura0/WF_Category.git", :tag => "1.0.0" }

s.source_files  = 'Category/*.{h,m}'#源码

end