<img src="http://i.imgur.com/XKDvhvW.png" width="1000">

PatternView is a suite of views which can be used to easily implement certain patterns to create more aesthetically pleasing apps. The idea behind this is that especially for new developers who don't have their own designers, there's a lot if iteration involved in making good looking views, and for them it might be a lot easier to tweak a number than to go back and make half of the stripes in a view to be a slightly different shade of blue. This is about making iteration and design easy for developers. I'll be adding more views in the future.

<br>
<br>
<br>
<br>


# Use

Put this into your project by adding `pod 'PatternView'` into your podfile. If it can't find the module, try running `pod update`

You can use PatternView in any file by writing `import PatternView` in that file.

`public init?(coder aDecoder: NSCoder)` or `override init(frame: CGRect) `

PatternViews inherit from UIView. They can be instantiated either in storyboard or programmatically with the methods above from its superclass. If you do install it in Storyboard, when you set the custom class for the UIView, make sure the 'Module' field says 'PatternView.'

<br>
<br>
<br>
<br>


## StripeView


<img src="http://i.imgur.com/6QW8uRD.png" width="250">


`public class StripeView : UIView`

`func setup(with stripes : [Stripe], rotationAngleFromHorizontalInDegrees : CGFloat)`

Hand `stripes` an array of stripes. It will repeat these stripes to cover the entire screen. `rotationAngleFromHorizontalInDegrees` will rotate the stripes ot whatever angle you want. An input of 0 will give horizontal stripes, and an input of 90 will give vertical stripes.

#### Stripe

`public class Stripe`

`public init(thickness : CGFloat, color : UIColor)`

Use this init to set the thickness and color of each stripe when you instantiate it.

<br>
<br>
<br>
<br>


## RegularPolkaDotView

<img src="http://i.imgur.com/kD37Y20.png" width="250">


`public class RegularPolkaDotView : UIView`

`func setup(polkaDotAmount : PolkaDotAmount, polkaDotDiameter : CGFloat, backgroundColor : UIColor, dotColor : UIColor, offset : CGPoint?, dotsAreDiagonal : Bool)`

A setup function that must be called after initialization to build the view according to how it should look. `polkaDotAmount` is an enum that can either be `.aFew`, `.mediumAmount`, or `.lots`. `polkaDotDiameter` is the diameter for each polka dot. `backgroundColor` and `dotColor` are used to set the color for the background and the color of the polka dots respectively. `offset` is used to shift the polka dots by some x,y amount. This can be set to nil if you don't care about the polka dot shift. `dotsAreDiagonal` sets whether the dots appear stacked in a grid or if each row of dots is offset from the one below it to situate them diagonally.
