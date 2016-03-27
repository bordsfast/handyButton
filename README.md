# handyButton

##Description

  A simple UIButton subclass made to simplify making of round buttons, bordered buttons and buttons with a different selected background color too. It also supports these features in the storyboard via IBInspectable.
  
##Functions
  1. Realtime preview when changing the storyboard rounded rect 
  2. Realtime preview when editing border width and color
  3. Changing of background color and text color when selecting a button
  
##Notes
  Additional storyboard button properties requires your XCode to be at least version 6.0, however it can still be used in lower versions of XCode.

##Installation
  1. Download project
  2. Add the handyButton h and m files to your project
  3. If your using an older version of XCode - Add the 'QuartzCore' Framework to your project

##how to use

###Initialization
  Create an instance of handy button is same as how you create UIButton instances
```objc
  handyButton *manuallyAddedButton = [handyButton buttonWithType:UIButtonTypeSystem];
  [manuallyAddedButton setFrame:CGRectMake(20, 20, 75, 75)];
```
###Making your button a perfect circle
  If you want to make a perfect circle button just use the isCircle property 
  Note: If you set this to true then it will also modify your width / height if they are not equal
```objc
  [manuallyAddedButton setIsCircle:true];
```

  If you just want a button with a rounded edges design then you can use the cornerRadius Property
```objc
  [manuallyAddedButton setCornerRadius:37.5]
```

###Changing theme color on selected state and non selected state
```objc
  [manuallyAddedButton setNonSelectedBackgroundColor:[UIColor redColor]];
  [manuallyAddedButton setSelectedBackgroundColor:[UIColor greenColor]];
    
  [manuallyAddedButton setNonSelectedTextColor:[UIColor whiteColor]];
  [manuallyAddedButton setSelectedTextColor:[UIColor redColor]];
```

  
  
  

