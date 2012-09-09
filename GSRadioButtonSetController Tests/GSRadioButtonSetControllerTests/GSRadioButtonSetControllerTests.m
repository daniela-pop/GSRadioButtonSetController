//
//  GSRadioButtonSetControllerTests.m
//  GSRadioButtonSetControllerTests
//
//  Created by Simon Whitaker on 07/09/2012.
//
//

#import <SenTestingKit/SenTestingKit.h>
#import "GSRadioButtonSetController.h"

@interface GSRadioButtonSetControllerTests : SenTestCase

@property (strong) GSRadioButtonSetController *controller;
@property (strong) NSArray *buttons;

@end

@implementation GSRadioButtonSetControllerTests

- (void)setUp
{
    [super setUp];
    
    self.controller = [[GSRadioButtonSetController alloc] init];
    self.buttons = @[
        [UIButton buttonWithType:UIButtonTypeCustom],
        [UIButton buttonWithType:UIButtonTypeCustom],
        [UIButton buttonWithType:UIButtonTypeCustom],
    ];
    self.controller.buttons = self.buttons;
}

- (void)testSelectedIndexIsInitialisedCorrectly
{
    STAssertTrue(self.controller.selectedIndex == NSNotFound, @"selectedIndex initialised to NSNotFound");
}

- (void)testSettingSelectedIndexSelectsButton
{
    STAssertTrue(self.controller.selectedIndex == NSNotFound, @"selectedIndex initialised to NSNotFound");

    NSUInteger indexToSelect = 1;
    self.controller.selectedIndex = indexToSelect;
    STAssertTrue(self.controller.selectedIndex == indexToSelect, @"selectedIndex is set");
    for (NSUInteger i = 0; i < [self.buttons count]; i++) {
        UIButton *b = (UIButton*)[self.buttons objectAtIndex:i];
        BOOL shouldBeSelected = i == indexToSelect;
        STAssertTrue(b.selected == shouldBeSelected, @"Button %u is %@selected", i, shouldBeSelected ? @"" : @"not ");
    }
}

@end
