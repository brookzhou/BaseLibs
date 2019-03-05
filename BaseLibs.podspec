@version = "1.0.5"
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
s.source_files = "BaseLibs/BaseLibs/*.{h,m}"
s.requires_arc = true
s.framework = "UIKit"

    s.subspec 'UIStyle' do |ss|
        ss.source_files = "BaseLibs/BaseLibs/UIStyle/*.{h,m}"
    
    end
    s.subspec 'Macro' do |ss|
        ss.source_files = "BaseLibs/BaseLibs/Macro/*.{h,m}"
    end
    s.subspec 'System' do |ss|
        ss.source_files = "BaseLibs/BaseLibs/System/*.{h,m}"
        ss.frameworks = 'Foundation',"SystemConfiguration"
    end
    s.subspec 'ViewControllers' do |ss|
        ss.source_files = "BaseLibs/BaseLibs/ViewControllers/*.{h,m}"

    end
    s.subspec 'Views' do |ss|
        ss.source_files = "BaseLibs/BaseLibs/Views/*.{h,m}"
        s.subspec 'UITextFields' do |sss|
            sss.source_files = "BaseLibs/BaseLibs/Views/UITextFields/*.{h,m}"
        end
    end
    
end