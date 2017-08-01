# PatternView

PatternView is a suite of views which can be used to easily implement certain patterns to create more aesthetically pleasing apps. The idea behind this is that especially for new developers who don't have their own designers, there's a lot if iteration involved in making good looking views, and for them it might be a lot easier to tweak a number than to go back and make half of the stripes in a view to be a slightly different shade of blue. This is about making iteration and design easy for developers. I'll be adding more views in the future.


<img src="http://i.imgur.com/FSdk7kE.png" width="250">


## Use

You can use PatternView in any file by writing `import ButtonWheel` in that file.

#### StripeView

`init?(coder aDecoder: NSCoder)` or `override init(frame: CGRect) `

PatternView inherits from UIView. It can be instantiated either in storyboard or programmatically with the methods above from its superclass.

If you do instantiate it using an IBOutlet to storyboard, be sure to set both the class and the module in storyboard like this.

PUTIMAGEHERE


`setup(polkaDotAmount : PolkaDotAmount, polkaDotDiameter : CGFloat, backgroundColor : UIColor, dotColor : UIColor, offset : CGPoint?, dotsAreDiagonal : Bool)`

A setup function that must be called after initialization to build the view according to how it should look. 
