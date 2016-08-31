
Pod::Spec.new do |s|
  s.name             = 'JKTagListView'
  s.version          = '0.1.0'
  s.summary          = 'Simple TagListView for Objective-C'
  s.homepage         = 'https://github.com/JungleKim/JKTagListView'
  s.license          = { :type => 'WTFPL', :file => 'LICENSE' }
  s.author           = { 'JungleKim' => 'snorlax.jungle@gmail.com' }
  s.source           = { :git => 'https://github.com/JungleKim/JKTagListView.git', :tag => s.version.to_s }
  s.requires_arc     = true
  s.source_files     = 'JKTagListView/Classes/*.{h,m}'
  s.frameworks       = 'Foundation', 'UIKit'
  s.ios.deployment_target = '7.0'
end
