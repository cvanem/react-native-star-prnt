require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = pjson["name"]
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/cvanem/react-native-star-prnt"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "Chris Van Emmerik" => "chris@greenlinkservices.com" }
  s.platform        = :ios, "9.0"
  s.source          = { :git => "https://github.com/cvanem/react-native-star-prnt", :tag => "#{s.version}" }
  s.source_files    = 'RNStarPrnt/*.{h,m}'

  s.dependency 'React'

end
