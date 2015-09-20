//
//  OWAddNewSpaceObjViewController.h
//  OuterSpaceObjects
//
//  Created by abhishek on 20/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol OWAddNewSpaceObjProtocol <NSObject>

@required
-(void)addSpaceObject;
-(void)cancelAddingSpaceObject;

@end


@interface OWAddNewSpaceObjViewController : UIViewController

@property(weak,nonatomic)  id <OWAddNewSpaceObjProtocol > delegate;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nickNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *temperatureTextField;
@property (strong, nonatomic) IBOutlet UITextField *noOfMoonsTextField;
@property (strong, nonatomic) IBOutlet UITextField *interestingFactTextField;
- (IBAction)cancelButtonPressed:(id)sender;
- (IBAction)AddButtonPressed:(id)sender;

@end
