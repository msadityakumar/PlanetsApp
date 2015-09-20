//
//  OWSpaceTableViewController.h
//  OuterSpaceObjects
//
//  Created by abhishek on 18/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWAddNewSpaceObjViewController.h"

@interface OWSpaceTableViewController : UITableViewController<OWAddNewSpaceObjProtocol>
@property (strong, nonatomic) IBOutlet UITableView *spaceTableView;

@end
