//
//  ViewController.m
//  handyButton
//
//  Created by Michael on 3/26/16.
//
//

#import "ViewController.h"

#import "handyButton.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self setupManuallyAddedButton];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

#pragma mark - Memory Management 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Setup

- (void)setupManuallyAddedButton {
    handyButton *manuallyAddedButton = [handyButton buttonWithType:UIButtonTypeSystem];

    [manuallyAddedButton setTitle:@"Manual" forState:UIControlStateNormal];
    [manuallyAddedButton setFrame:CGRectMake(20, 20, 100, 66)];
    
    [manuallyAddedButton setNonSelectedBackgroundColor:[UIColor redColor]];
    [manuallyAddedButton setSelectedBackgroundColor:[UIColor greenColor]];
    
    [manuallyAddedButton setNonSelectedTextColor:[UIColor whiteColor]];
    [manuallyAddedButton setSelectedTextColor:[UIColor redColor]];
    
    [manuallyAddedButton setIsCircle:true];
    
    [manuallyAddedButton addTarget:self action:@selector(didSelectManual:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:manuallyAddedButton];
}

#pragma mark - Button Events

- (void)didSelectManual:(UIButton *)manualButton {
    [manualButton setSelected:!manualButton.selected];
}

@end
