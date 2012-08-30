# GSRadioButtonViewController – radio button functionality for your Cocoa

`GSRadioButtonViewController` implements the logic behind an array of
radio buttons. In other words, give it a set of buttons to look after
and it will ensure that only one can be selected at a time. Selecting
a second button in the set automatically deselects the first.

(If you're familiar with `<input type='radio'>` in HTML, it's like that
but for Cocoa.)

## Usage: in a Xib

Let's assume you've got a Xib called `MyView.xib` and a corresponding view 
controller, `MyViewController`.

### Prepare your view controller class

Here's `MyViewController.h`:

```objective-c
#import <UIKit/UIKit.h>

// Import the GSRadioButtonSetController header
#import "GSRadioButtonSetController.h"

// Declare that your controller class implements the GSRadioButtonSetControllerDelegate protocol
@interface MyViewController : UIViewController <GSRadioButtonSetControllerDelegate>

// Declare a property to represent your GSRadioButtonSetController instance
@property (nonatomic, strong) IBOutlet GSRadioButtonSetController * radioButtonSetController;

@end
```

and here's `MyViewController.m`:

```objective-c
#import "GSViewController.h"

@implementation GSViewController

#pragma mark - GSRadioButtonSetController delegate methods

- (void)radioButtonSetController:(GSRadioButtonSetController *)controller 
          didSelectButtonAtIndex:(NSUInteger)selectedIndex
{
    // Handle button selection here
    NSLog(@"Someone just selected button %u!", selectedIndex);
}

@end
```

### Add some buttons

1. Open MyView.xib and add some UIButton instances. Style them however you
see fit. GSRadioButtonViewController sets the `selected` property to `YES` 
on the selected button, so be sure to add distinguishing styling for
selected mode.

2. Add an instance of `NSObject` to the Objects section in the Document
Outline area. Select it, show the Identity Inspector (ALT+CMD+3) and set 
its class to GSRadioButtonSetController. The name displayed in the Objects 
section should change to Radio Button Set Controller.

3. Control-drag from File's Owner to Radio Button Set Controller and select
the property name you defined in your header earlier (radioButtonSetController
in the example above)

4. Control-drag from Radio Button Set Controller to the first of your buttons,
and choose Outlet Collections > Buttons from the menu. Repeat this with the
rest of the buttons, assigning them all to the same Outlet Collection. 
**Important: the order you add the buttons defines their index numbers in
the radio button set, so be sure to add them in order.**

### Run your code!

That's it. Run your code and marvel at the sheer radioness of the buttons.

## Usage: in code

Coming soon...

