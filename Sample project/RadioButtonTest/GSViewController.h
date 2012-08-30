//
//  GSViewController.h
//  RadioButtonTest
//
//  Created by Simon Whitaker on 18/07/2012.
//  Copyright (c) 2012 Goo Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GSRadioButtonSetController.h"

@interface GSViewController : UIViewController <GSRadioButtonSetControllerDelegate>

@property (nonatomic, strong) IBOutlet GSRadioButtonSetController * radioButtonSetController;
@property (nonatomic, weak) IBOutlet UILabel *selectedIndexLabel;

@end
