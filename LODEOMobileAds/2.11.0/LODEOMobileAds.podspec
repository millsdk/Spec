# VERSION
VERSION = '2.11.0'

## --- paths
ZIP_NAME = 'LODEOMobileAds'
SDK_PATH = "#{ZIP_NAME}/SDK"
SCRIPT_PATH = "#{ZIP_NAME}/extract_devide_binary.sh"
FRAMEWORK_PATH = "#{SDK_PATH}/universal/LODEOMobileAds.framework"
MOPUBADAPTER_FILES_PATH = "#{SDK_PATH}/MoPubAdapter/*.swift"
DOWNLOAD_URL_DIRECTORY = "https://github.com/millsdk/Spec/releases/download/#{VERSION}"
## ---------


Pod::Spec.new do |s|
  s.name                  = 'LODEOMobileAds'
  s.version               = VERSION
  s.summary               = '___________'
  s.homepage              = 'https://www.lodeo.io/'
  s.author                = { '_______' => '_________@___.com' }
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.source                = { :http => "#{DOWNLOAD_URL_DIRECTORY}/#{ZIP_NAME}_#{s.version.to_s}.zip", :type => :zip }
  s.default_subspec       = 'Core'

  s.platform              = :ios, '9.0'
  s.ios.deployment_target = '9.0'

  s.subspec 'Core' do |ss|
    ss.preserve_paths      = SCRIPT_PATH
    ss.vendored_frameworks = FRAMEWORK_PATH
    ss.frameworks          = 'AdSupport', 'AVFoundation', 'CoreMedia', 'CoreTelephony', 'SafariServices', 'SystemConfiguration'
    end

  s.subspec 'MoPubAdapter' do |ss|
    ss.preserve_paths = MOPUBADAPTER_FILES_PATH
    ss.dependency 'mopub-ios-sdk'
  end
end
