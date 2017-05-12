#
#  Be sure to run `pod spec lint SwiftyKnob.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "SwiftyKnob"
  s.version      = "0.0.7"
  s.summary      = "An easy way to add knobs in your app"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
# SwiftyKnob

[![Version](https://img.shields.io/cocoapods/v/SwiftyKnob.svg?style=flat)](http://cocoapods.org/pods/SwiftyKnob)
![Swift 3.0.x](https://img.shields.io/badge/Swift-3.0.x-orange.svg)

SwiftyKnob allows you to easily add knobs in your iOS apps.

![SwiftyKnob demo](https://github.com/jevin/SwiftyKnob/blob/master/images/SwiftyKnob.gif)

## Installation

**Via [Cocoapods](https://cocoapods.org/)**

```ruby
pod "SwiftyKnob"
```

**Manually**

Just drag the `Knob.swift` in `SwiftyKnob/Classes/` to your project tree and you're ready to go.

## Usage

### Code only

```swift
var knob = Knob(frame: CGRect(x: 8, y: 20, width: 100, height: 100),
          borderWidth: 18,
          borderColor: UIColor.red,
          value: 0.78, 
          text: "78%",
          description: "open rate"
)

view.addSubview(knob)
```
Simply initialize the `Knob` class with the wanted parameters and add it to the view. The knob will animate automatically when needed. 

For a detailed description of the `Knob` initializer see the following table:

Parameter | Description
--- | ---
frame | The rectangle defining the size and position of the knob
borderWidth | The width of the knob's border
borderColor | The color of the above border
value | The value of the knob. Should be between 0.0 and 1.0
text | The main text, displayed at the center of the knob
description | A smaller description, displayed below the text above

### Storyboard

**Step 1:** Add a `UIView` to your scene

**Step 2:** Make `Knob` the custom class of your view
![Image 1](https://github.com/jevin/SwiftyKnob/blob/master/images/storyboard-1.png)

**Step 3:** Customize your knob using the exposed attributes
![Image 2](https://github.com/jevin/SwiftyKnob/blob/master/images/storyboard-2.png)

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request

## Credits

Thanks to [@mikedev](https://twitter.com/mikedev) for his [awesome answer](http://stackoverflow.com/questions/26578023/animate-drawing-of-a-circle/26578895#26578895) on StackOverflow about `CAShapeLayer` and `CABasicAnimation`!

## License

SwiftyKnob is available under the MIT License. See the LICENSE file for more info.

If you like what I do, you should follow me on Twitter: [@jevinsew](https://twitter.com/jevinsew/) ✌️

                   DESC

  s.homepage     = "https://github.com/jevin/SwiftyKnob.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "jevin" => "jevin9@gmail.com" }
  # Or just: s.author    = "jevin"
  # s.authors            = { "jevin" => "jevin9@gmail.com" }
  s.social_media_url   = "http://twitter.com/jevinsew"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/jevin/SwiftyKnob.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "SwiftyKnob/Classes/**/*"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
