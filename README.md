# SwiftyKnob

[![Version](https://img.shields.io/cocoapods/v/SwiftyKnob.svg?style=flat)](http://cocoapods.org/pods/SwiftyKnob)
![Swift 3.0.x](https://img.shields.io/badge/Swift-3.0.x-orange.svg)

SwiftyKnob allows you to easily add knobs in your iOS apps. If you are unfamiliar with knobs, they are basically curved progress bars. You can use them to show profile completion, stats or just about anything else!

Here's what it looks like:

<img alt="SwiftyKnob demo" src="https://github.com/jevin/SwiftyKnob/blob/master/images/SwiftyKnob.gif" width=400 />

## Installation

**Via [Cocoapods](https://cocoapods.org/)**

```ruby
pod "SwiftyKnob"
```

**Manually**

Just drag the `Knob.swift` in `SwiftyKnob/Classes/` to your project tree and you're ready to go.

## Usage

### In code

```swift
let knob = Knob(frame: CGRect(x: 8, y: 20, width: 100, height: 100),
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

#### Controlling animations
By default, the knob animates as soon as it's drawn. If you want to control that, you can use the follwing code:

```swift
let knob = Knob(frame: CGRect(x: 8, y: 20, width: 100, height: 100),
          borderWidth: 18,
          borderColor: UIColor.red,
          value: 0.78, 
          text: "78%",
          description: "open rate",
          autoAnimate: false
)
```
The last parameter tells SwiftyKnob **not** to animate the knob when it's drawn. You can then use the following line to fire the animation.

```swift
knob.animate()
```
**Note:** Calling `animate` inside `viewDidLoad` will not work. Instead you should call it in `viewDidAppear`.

### In storyboards

1. Add a `UIView` to your scene

2. Make `Knob` the custom class of your view

![Image 1](https://github.com/jevin/SwiftyKnob/blob/master/images/storyboard-1.png)

3. Customize your knob using the exposed attributes

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
