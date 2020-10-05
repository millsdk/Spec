# VERSION
version = '2.14.0'
## --- paths
zip_name = 'LODEOMobileAds'
sdk_path = "#{zip_name}/SDK"
script_path = "#{zip_name}/extract_devide_binary.sh"
framework_path = "#{sdk_path}/universal/LODEOMobileAds.framework"
download_url_directory = "https://cdn.lodeo.io/sdk/archive"
## ---------


Pod::Spec.new do |s|
  s.name                  = 'LODEOMobileAds'
  s.version               = version
  s.summary               = '_'
  s.homepage              = '_'
  s.author                = { '_' => 'dummy@dummy.com' }
  s.source                = { :http => "#{download_url_directory}/#{zip_name}_#{s.version.to_s}.zip", :type => :zip }
  s.default_subspec       = 'Core'

  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.platform              = :ios, '12.0'
  s.ios.deployment_target = '12.0'

  s.subspec 'Core' do |ss|
    ss.preserve_paths      = script_path
    ss.vendored_frameworks = framework_path
    ss.frameworks          = 'AdSupport', 'AVFoundation', 'CoreMedia', 'CoreTelephony', 'SafariServices'
    end

end
