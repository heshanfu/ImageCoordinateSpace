Pod::Spec.new do |s|
    s.swift_version       = '4.1'
    s.cocoapods_version   = '>= 1.4.0'
    s.name                = 'ImageCoordinateSpace'
    s.version             = '1.0.6'
    s.summary             = 'Convert image coordinates to image view depending on content mode'
    s.description         = <<-DESC
    Convert CGPoint and CGRect between UIImage and UIImageView coordinates respecting UIViewContentMode and using UICoordinateSpace
    DESC
    s.homepage            = 'https://github.com/paulz/ImageCoordinateSpace'
    s.screenshot          = 'https://raw.githubusercontent.com/paulz/ImageCoordinateSpace/master/Example/demo.gif'
    s.license             = 'MIT'
    s.author              = { 'Paul Zabelin' => 'https://github.com/paulz' }
    s.source              = {   :git => 'https://github.com/paulz/ImageCoordinateSpace.git',
                                :tag => s.version.to_s
    }
    s.social_media_url    = 'https://twitter.com/iospaulz'
    s.platform            = :ios, '9.2'
    s.requires_arc        = true
    s.source_files        = 'ImageCoordinateSpace/**/*.{h,swift}'
    s.frameworks          = 'UIKit'
    s.test_spec 'UnitSpecs' do |ts|
        ts.resource       = 'Example/Assets.xcassets'
        ts.source_files   = 'Unit Tests/**/*.{h,swift}'
        ts.dependencies   = {
            'Quick' => '~> 1.2',
            'Nimble' => '~> 7.0'
        }
    end
end
