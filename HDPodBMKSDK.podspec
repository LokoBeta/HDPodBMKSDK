Pod::Spec.new do |s|

    s.name         = "HDPodBMKSDK"
    s.module_name  = "HDPodBMKSDK"
    s.version      = "0.0.1"
    s.summary      = "HDPodBMKSDK"
    s.description  = "这个是用到百度地图sdk的一个pod工程"
    s.homepage     = "https://github.com/erduoniba"
    s.author       = { "denglibing" => "13049862397@163.com" }
    s.platform     = :ios, "8.0"
    s.requires_arc = true
    s.license      = { :type => 'MIT'}
    s.source       =  { :git => 'https://github.com/erduoniba/HDPodBMKSDK.git', :tag => "#{s.version}"}

    s.subspec 'HDPodBMKSDK' do |hdBMK|
        hdBMK.source_files = 'HDPodBMKSDK/*.{h,m,mm}'
    end

    s.dependency 'BaiduMapKit'
    
    s.frameworks   = "CoreLocation", "CoreTelephony", "OpenGLES", "QuartzCore", "Security", "SystemConfiguration", "BaiduMapAPI_Base", "BaiduMapAPI_Cloud", "BaiduMapAPI_Search", "BaiduMapAPI_Utils"
    s.libraries    = "z", "sqlite3.0", "crypto", "ssl"

    s.pod_target_xcconfig = {
        'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/BaiduMapKit/BaiduMapKit',
        'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/BaiduMapKit/BaiduMapKit/thirdlibs',
        'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -lObjC',
        'ENABLE_BITCODE'           => 'NO'
    }
end
