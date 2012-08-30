//
//  GSViewController.m
//  RadioButtonTest
//
//  Created by Simon Whitaker on 18/07/2012.
//  Copyright (c) 2012 Goo Software Ltd. All rights reserved.
//

#import "GSViewController.h"

@implementation GSViewController

- (void)radioButtonSetController:(GSRadioButtonSetController *)controller didSelectButtonAtIndex:(NSUInteger)selectedIndex
{
    self.selectedIndexLabel.text = [NSString stringWithFormat:@"%d", selectedIndex];
}

@end
