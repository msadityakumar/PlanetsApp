//
//  OWAddNewSpaceObjViewController.m
//  OuterSpaceObjects
//
//  Created by abhishek on 20/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import "OWAddNewSpaceObjViewController.h"

@interface OWAddNewSpaceObjViewController ()

@end

@implementation OWAddNewSpaceObjViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Orion.jpg"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButtonPressed:(id)sender {

    [_delegate cancelAddingSpaceObject];
}

- (IBAction)AddButtonPressed:(id)sender {
    [_delegate addSpaceObject];
}
@end
