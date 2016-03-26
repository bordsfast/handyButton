//
//  customizeableButton.h
//  handyButton
//
//  Created by Michael on 3/26/16.
//
//

#import <UIKit/UIKit.h>

@interface handyButton : UIButton

#pragma mark - Defined Items

#ifndef IBInspectable
    #define IBInspectable
#endif

#ifndef IB_DESIGNABLE
    #define IB_DESIGNABLE
#endif

IB_DESIGNABLE

#pragma mark - Property Declaration

/*
 Ignore this property I was having an XCode issue
    :The first XCode inspectable property can't be seen in the Storyboard
 */
@property (nonatomic, assign) IBInspectable CGFloat temporary;

#pragma mark --QuartzCore Extension

/*
 Name   : cornerRadius
 Purpose: property is for making the button have a rounded effect depending on the value
 Notes  : if you want to make the button a circle you can use the isCircle method at runtime
          Or you can also do it manually by making the cornerRadius the width / 2 and the Height
          And width must also be equal
 */
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

/*
 Name   : borderWidth
 Purpose: property is used for making a border in your button
 Notes  : borderColor property should not be transparent in order for the border to appear on screen
        : borderWidth must be greater than 0 in order for the border to appear on screen
 */
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;

/*
 Name   : borderColor
 Purpose: property is used for making a border in your button
 Notes  : borderWidth property must be greater than 0 in order for the border to appear on screen
        : borderColor property should not be transparent in order for the border to appear on screen
 */
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

/*
 Name   : isCircle
 Purpose: property is used for making the button a circle
 Notes  : Only works at runtime
        : if set to yes the property will force your button to have equal height and width depending
          on which one has a smaller value
 */
@property (nonatomic, assign) BOOL isCircle;

#pragma mark --Frame Extension

/*
 Name   : height
 Purpose: Retrieves height of the button
 Notes  :
 */
@property (nonatomic, readonly) CGFloat height;

/*
 Name   : width
 Purpose: Retrieves width of the button
 Notes  :
 */
@property (nonatomic, readonly) CGFloat width;

/*
 Name   : xAxis
 Purpose: Retrieves horizontal position of the button
 Notes  :
 */
@property (nonatomic, readonly) CGFloat xAxis;

/*
 Name   : yAxis
 Purpose: Retrieves the vertical position of the button
 Notes  :
 */
@property (nonatomic, readonly) CGFloat yAxis;

#pragma mark --Button State Colors

/*
 Name   : selectedBackgroundColor
 Purpose: Changes the selected background color of the button
 Notes  : You need to manually set the 'selected' property of the button in order for you to see the changes
 */
@property (nonatomic, strong) UIColor *selectedBackgroundColor;

/*
 Name   : selectedTextColor
 Purpose: Changes the selected text color of the button
 Notes  : You need to manually set the 'selected' property of the button in order for you to see the changes
 */
@property (nonatomic, strong) UIColor *selectedTextColor;

/*
 Name   : nonSelectedBackgroundColor
 Purpose: Changes the non selceted background color of the button
 Notes  : You need to manually set the 'selected' property of the button in order for you to see the changes
 */
@property (nonatomic, strong) UIColor *nonSelectedBackgroundColor;

/*
 Name   : nonSelectedTextColor
 Purpose: Changes the non selceted text color of the button
 Notes  : You need to manually set the 'selected' property of the button in order for you to see the changes
 */
@property (nonatomic, strong) UIColor *nonSelectedTextColor;

@end
