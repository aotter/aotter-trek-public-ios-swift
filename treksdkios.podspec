Pod::Spec.new do |s|
          #1.
          s.name                   = "treksdkios"
          #2.
          s.version                = "0.0.6"
          #3.  
          s.summary                = "AotterTrek SDK AdMob Mediation Objc for iOS developer."
          #4.
          s.homepage               = "https://trek.aotter.net"
          #5.
          s.license                = "MIT"
          #6.
          s.author                 = "Aotter Inc."
          #7.
          s.ios.deployment_target  = "10.0"
          
          # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
          #
          #  CocoaPods is smart about how it includes source code. For source files
          #  giving a folder will include any swift, h, m, mm, c & cpp files.
          #  For header files it will include any header in the folder.
          #  Not including the public_header_files will make all headers public.
          #
          s.source                 = { :git => "https://github.com/aotter/trek-sdk-ios-swift.git", :tag => s.version.to_s }
          #9.
          s.exclude_files          = "Classes/Exclude"
          s.vendored_frameworks    = "treksdkios.framework","OMSDK_Aotternet.xcframework"
          #10.
          s.swift_version          = '4.2'
          #11.
          s.dependency "GoogleAds-IMA-iOS-SDK", "3.14.3"
     

          s.pod_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
          s.user_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    end