# VERSION
version = '2.11.0'
## --- paths
zip_name = 'LODEOMobileAds'
sdk_path = "#{zip_name}/SDK"
script_path = "#{zip_name}/extract_devide_binary.sh"
framework_path = "#{sdk_path}/universal/LODEOMobileAds.framework"
mopub_adapter_files_path = "#{sdk_path}/MoPubAdapter/*.swift"
download_url_directory = "https://github.com/millsdk/Spec/releases/download/#{version}"
## ---------


Pod::Spec.new do |s|
  s.name                  = 'LODEOMobileAds'
  s.version               = version
  s.summary               = '___________'
  s.homepage              = 'https://www.lodeo.io/'
  s.author                = { '_______' => '_________@___.com' }
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.source                = { :http => "#{download_url_directory}/#{zip_name}_#{s.version.to_s}.zip", :type => :zip }
  s.default_subspec       = 'Core'

  s.platform              = :ios, '9.0'
  s.ios.deployment_target = '9.0'

  s.subspec 'Core' do |ss|
    ss.preserve_paths      = script_path
    ss.vendored_frameworks = framework_path
    ss.frameworks          = 'AdSupport', 'AVFoundation', 'CoreMedia', 'CoreTelephony', 'SafariServices', 'SystemConfiguration'
    end

  s.subspec 'MoPubAdapter' do |ss|
    ss.preserve_paths = mopub_adapter_files_path
    ss.dependency 'mopub-ios-sdk'
  end
end
