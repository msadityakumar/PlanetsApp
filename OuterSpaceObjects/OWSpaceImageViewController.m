//
//  OWSpaceImageViewController.m
//  OuterSpaceObjects
//
//  Created by abhishek on 19/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import "OWSpaceImageViewController.h"

@interface OWSpaceImageViewController ()

@end

@implementation OWSpaceImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *image = _spaceObj.planetImage;
    planetImageView = [[UIImageView alloc]initWithImage:image];
    
    self.imageScrollView.contentSize = planetImageView.frame.size;
    [self.imageScrollView addSubview:planetImageView];
    self.imageScrollView.delegate = self;
    
    self.imageScrollView.maximumZoomScale = 2.0;
    self.imageScrollView.minimumZoomScale = 0.5;
    
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
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return planetImageView;
}
@end
