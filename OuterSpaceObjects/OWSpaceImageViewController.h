//
//  OWSpaceImageViewController.h
//  OuterSpaceObjects
//
//  Created by abhishek on 19/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

@interface OWSpaceImageViewController : UIViewController<UIScrollViewDelegate>
{
    UIImageView *planetImageView;

}
@property (strong, nonatomic) IBOutlet UIScrollView *imageScrollView;
@property(strong,nonatomic) OWSpaceObject*spaceObj;
@end
