Pod::Spec.new do |s|
  s.name             = "VIPERS-Converter-Protocol"
  s.version          = "0.1.0"
  s.summary          = "Converter protocols used by the iOS application framework 'VIPERS'"

  s.description      = <<-DESC
                        Converter protocols used by the iOS application framework 'VIPERS'.
                        A converter is an object responsible to convert one element into an other element.
                       DESC

  s.homepage         = "https://github.com/VIPER-Swift/VIPERS-Converter-Protocol"
  s.license          = 'MIT'
  s.author           = { "Jan Bartel" => "barteljan@yahoo.de" }
  s.source           = { :git => "https://github.com/VIPER-Swift/VIPERS-Converter-Protocol.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

end
