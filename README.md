# GSRadioButtonSetController – radio button functionality for Cocoa

![Demo app screenshot][demo-screenshot]

`GSRadioButtonSetController` implements the logic behind an array of
radio buttons. In other words, give it a set of buttons to look after
and it will ensure that only one can be selected at a time. Selecting
a second button in the set automatically deselects the first.

(If you're familiar with `<input type='radio'>` in HTML, it's like that
but for Cocoa.)

# Usage

## 1. Add GSRadioButtonSetController

Just copy GSRadioButtonSetController.h and GSRadioButtonSetController.m
into your project.

## 2. Prepare your view controller class

Let's assume you've got a view controller called `MyViewController`. 
Here's `MyViewController.h`:

```objective-c
#import <UIKit/UIKit.h>
#import "GSRadioButtonSetController.h"

// Declare that your controller class implements the 
// GSRadioButtonSetControllerDelegate protocol
@interface MyViewController : UIViewController <GSRadioButtonSetControllerDelegate>

// Declare a property to represent your 
// GSRadioButtonSetController instance
@property (nonatomic, strong) GSRadioButtonSetController * radioButtonSetController;

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

## 3. Add some buttons

You can do this in code or in your Xib. Style the buttons however you
see fit. GSRadioButtonSetController sets the `selected` property to `YES` 
on the selected button, so be sure to add distinguishing styling for
selected mode.

## 4. Set up the radio button set controller

Add the following to your view controller's `viewDidLoad` method.

```objective-c
// Instantiate your GSRadioButtonSetController object
self.radioButtonSetController = [[GSRadioButtonSetController alloc] init];

// Set its delegate to your view controller
self.radioButtonSetController.delegate = self;

// Set its buttons property to an array of buttons that you've
// created previously.
self.radioButtonSetController.buttons = myButtons;
```

# License

[![Creative Commons License][cc-by-30-icon]][cc-by-30]

This work is licensed under a [Creative Commons Attribution 3.0 Unported License][cc-by-30].

You're free to use this code in any project, including commercial. Please include the following text somewhere suitable, e.g. your app's About screen:

**Uses GSRadioButtonSetController by Simon Whitaker**

[cc-by-30-icon]: http://i.creativecommons.org/l/by/3.0/88x31.png
[cc-by-30]: http://creativecommons.org/licenses/by/3.0/
[xcode-screenshot]: http://goosoftware.github.com/GSRadioButtonSetController/images/add-controller-object.png
[demo-screenshot]: http://goosoftware.github.com/GSRadioButtonSetController/images/demo-screenshot.png
