


Pod::Spec.new do |s|


s.name         = "paipaixin"
s.version      = "0.0.3"
s.summary      = "A short description of PPX."



s.homepage     = "http://BruceXu008/PPX"


s.license      = "MIT (BruceXu008)"


s.author             = { "Bruce008" => "" }




s.source       = { :git => "https://github.com/JerryXu008/paipaixin.git", :tag => "0.0.3" }


s.platform     = :ios, '8.0'

s.source_files  = "Source", "Source/*.{h,m}","Source/inc/core/*.{h,m}","Source/inc/Feature/*.{h,m}","Source/inc/tools/*.{h,m}"


#s.vendored_libraries = ['Source/paipaixin/libPGPPCSDKLib.a']


s.exclude_files = "Source/Exclude"

s.resource     = 'Source/PPCSDK.bundle'
s.libraries    = 'sqlite3','z.1.2.5'
s.vendored_frameworks = ['Source/PPCSDK.framework']
s.dependency 'hbuilder'
#s.dependency 'MJRefresh', '~> 3.1.0'



#s.subspec 'DataModel' do |dataModel|
#dataModel.source_files = 'Source/PModel.*{h,m}'
#dataModel.public_header_files = 'Source/PModel.*{h}'
#end


end
