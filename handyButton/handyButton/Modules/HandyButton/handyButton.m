//
//  customizeableButton.m
//  handyButton
//
//  Created by Michael on 3/26/16.
//
//

#import "handyButton.h"
#import <QuartzCore/QuartzCore.h>

IB_DESIGNABLE

@implementation handyButton

#pragma mark - Synthesizers
/* 
 ===========================
 == Quartz Core Extension ==
 ===========================
 */
@synthesize cornerRadius = _cornerRadius;
@synthesize borderWidth = _borderWidth;
@synthesize borderColor = _borderColor;
@synthesize isCircle = _isCircle;

/*
 ======================
 == Frame Extension ==
 ======================
 */
@synthesize height;
@synthesize width;
@synthesize xAxis;
@synthesize yAxis;

/*
 =========================
 == Button State Colors ==
 =========================
 */
@synthesize selectedBackgroundColor = _selectedBackgroundColor;
@synthesize selectedTextColor = _selectedTextColor;
@synthesize nonSelectedBackgroundColor = _nonSelectedBackgroundColor;
@synthesize nonSelectedTextColor = _nonSelectedTextColor;

#pragma mark - Getters

/*
 ===========================
 == Quartz Core Extension ==
 ===========================
 */
- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (BOOL)isCircle {
    return _isCircle;
}

/*
 ======================
 == Frame Extension ==
 ======================
 */
- (CGFloat)height {
    return CGRectGetHeight(self.frame);
}

- (CGFloat)width {
    return CGRectGetWidth(self.frame);
}

- (CGFloat)yAxis {
    return CGRectGetMinY(self.frame);
}

- (CGFloat)xAxis {
    return CGRectGetMinX(self.frame);
}


/*
 =========================
 == Button State Colors ==
 =========================
 */

- (UIColor *) selectedBackgroundColor {
    if (_selectedBackgroundColor == nil) {
        _selectedBackgroundColor = [UIColor blackColor];
    }
    return _selectedBackgroundColor;
}

- (UIColor *) selectedTextColor {
    if (_selectedTextColor == nil) {
        _selectedTextColor = [self titleColorForState:UIControlStateSelected];
    }
    
    return _selectedTextColor;
}

- (UIColor *) nonSelectedBackgroundColor {
    if (_nonSelectedBackgroundColor == nil) {
        _nonSelectedBackgroundColor = [UIColor whiteColor];
    }
    return _nonSelectedBackgroundColor;
}

- (UIColor *) nonSelectedTextColor {
    if (_nonSelectedTextColor == nil) {
        _nonSelectedTextColor = [UIColor blueColor];
    }
    return _nonSelectedTextColor;
}

#pragma mark - Setters 

/*
 ===========================
 == Quartz Core Extension ==
 ===========================
 */
- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (void)setIsCircle:(BOOL)isCircle {
    _isCircle = isCircle;
    CGFloat buttonWidth = self.frame.size.width;
    CGFloat buttonHeight = self.frame.size.height;
    if (_isCircle == FALSE) {
        //do nothing
    } else if (buttonWidth == buttonHeight) {
        //it should be a circle
        //and height and width is equal so do nothing
    } else if (buttonWidth > buttonHeight) {
        //it should be a circle
        //but the width is greater than the height
        //make the width equal to height
        buttonWidth = buttonHeight;
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, buttonWidth, buttonHeight);
        self.cornerRadius = buttonWidth / 2;
    } else {
        //it should be a circle
        //but the height is greater than the width
        //make the height equal to width
        buttonHeight = buttonWidth;
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, buttonWidth, buttonHeight);
        self.cornerRadius = buttonWidth / 2;
    }
}

/*
 =========================
 == Button State Colors ==
 =========================
 */

- (void)setSelectedTextColor:(UIColor *)selectedTextColor {
    _selectedTextColor = selectedTextColor;
    [self setTitleColor:_selectedTextColor forState:UIControlStateSelected];
}

- (void)setNonSelectedTextColor:(UIColor *)nonSelectedTextColor {
    _nonSelectedTextColor = nonSelectedTextColor;
    [self setTitleColor:_nonSelectedTextColor forState:UIControlStateNormal];
}

- (void)setNonSelectedBackgroundColor:(UIColor *)nonSelectedBackgroundColor {
    _nonSelectedBackgroundColor = nonSelectedBackgroundColor;
    [self setBackgroundColor:nonSelectedBackgroundColor];
}

#pragma mark - Selection Method
/*
 Purpose: Overrides the setter method of the property selected.
        : Depending on the value the button will change it's color
 
 Param  : selected|Bool - The new state that you want the button to inherit
 */
- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    if (selected) {
        self.tintColor = self.selectedBackgroundColor;
        self.backgroundColor = self.selectedBackgroundColor;
        self.titleLabel.textColor = self.selectedTextColor;
        
    } else {
        self.tintColor = self.nonSelectedBackgroundColor;
        self.backgroundColor = self.nonSelectedBackgroundColor;
        self.titleLabel.textColor = self.nonSelectedTextColor;
    }
}


@end
