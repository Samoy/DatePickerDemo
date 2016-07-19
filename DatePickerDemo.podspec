Pod::Spec.new do |s|
s.name         = "DatePickerDemo"
s.version      = "1.0.0"
s.summary      = "A presenting date picker."
s.homepage     = "https://github.com/Samoy/DatePickerDemo"
s.license      = "MIT"
s.authors      = { 'Samoy' => 'samoy_young@163.com'}
s.source = { :git => 'https://github.com/Samoy/DatePickerDemo.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '9.2'
s.source_files = 'DatePickerDemo/*.{h,m}'
s.resources = 'DatePickerDemo/images/*.{png,xib}'
end