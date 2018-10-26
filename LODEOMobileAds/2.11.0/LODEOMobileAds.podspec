Pod::Spec.new do |s|
  s.name                  = 'LODEOMobileAds'
  s.version               = '2.11.0'
  s.summary               = '___________'
  s.homepage              = 'https://www.lodeo.io/'

  s.author                = { '_______' => '_________@___.com' }
  s.license               = { :type => 'MIT', :file => 'LICENSE' }

  s.platform              = :ios, '9.0'
  s.source                = { :http => "https://github.com/sgr-ksmt/PackedAlertift/releases/download/1.0/LODEOMobileAds_#{s.version.to_s}.zip", :type => :zip }
  s.ios.deployment_target = '9.0'
  s.default_subspec       = 'Core'

  s.subspec 'Core' do |ss|
    ss.preserve_paths      = 'LODEOMobileAds/extract_devide_binary.sh'
    ss.vendored_frameworks = 'LODEOMobileAds/SDK/universal/LODEOMobileAds.framework'
    ss.frameworks          = 'AdSupport', 'AVFoundation', 'CoreMedia', 'CoreTelephony', 'SafariServices', 'SystemConfiguration'
    end

  s.subspec 'MoPubAdapter' do |ss|
    ss.preserve_paths = 'LODEOMobileAds/SDK/MoPubAdapter/*.swift'
    ss.dependency 'mopub-ios-sdk'
  end

end
