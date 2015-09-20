//
//  OWDataViewController.h
//  OuterSpaceObjects
//
//  Created by abhishek on 19/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

@interface OWDataViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *dataTableView;

@property(strong,nonatomic) OWSpaceObject *spaceObj;
@end
