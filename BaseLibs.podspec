@version = "1.0.0"
Pod::Spec.new do |s|
s.name = "BaseLibs"
s.version = @version
s.summary = "BaseLibs"
s.description = "一些使用到的基本方法整理"
s.homepage = "https://github.com/brookzhou/BaseLibs"
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { "brookzhou" => "brook_zhou@foxmail.com" }
s.ios.deployment_target = '8.0'
s.source = { :git => "https://github.com/brookzhou/BaseLibs.git", :tag => "v#{s.version}" }
s.source_files = "BaseLibs/BaseLibs/**/*.{h,m}"
s.requires_arc = true
s.framework = "UIKit"
end