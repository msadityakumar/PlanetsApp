//
//  OWSpaceTableViewController.m
//  OuterSpaceObjects
//
//  Created by abhishek on 18/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import "OWSpaceTableViewController.h"
#import "AstronomicalData.h"
#import "OWSpaceObject.h"
#import "OWDataViewController.h"
#import "OWSpaceImageViewController.h"

@interface OWSpaceTableViewController ()

@property(strong,nonatomic) NSMutableArray *planetsArray;

@end

@implementation OWSpaceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self planetsArray];
    NSArray *dataArray = [AstronomicalData allKnownPlanets];
    for (NSDictionary *data in dataArray) {
        NSString *planetName = data[PLANET_NAME];
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",planetName]];
        OWSpaceObject *spaceObj = [[OWSpaceObject alloc]initWithData:data AndImage:image];
        [_planetsArray addObject:spaceObj];
    }
}

-(NSMutableArray *)planetsArray
{
    if (!_planetsArray) {
        _planetsArray = [[NSMutableArray alloc]init];
    }
    return _planetsArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [_planetsArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     NSString *indentifier = @"Cell Identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier forIndexPath:indexPath];
    
    // Configure the cell...
    OWSpaceObject *spaceObj = _planetsArray[indexPath.row];
    cell.textLabel.text = spaceObj.planetName;
    cell.detailTextLabel.text = spaceObj.planetNickName;
    cell.imageView.image = spaceObj.planetImage;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"push to data segue" sender:indexPath];

}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
//    if ([sender isKindOfClass:[OWSpaceTableViewController class]]) {
    
        if([segue.identifier isEqualToString:@"Image Detail"])
        {
            OWSpaceImageViewController *targetViewController = segue.destinationViewController;
          NSIndexPath *selIndexPath =  [self.tableView indexPathForSelectedRow];
            OWSpaceObject *spaceObj = _planetsArray[selIndexPath.row];
            targetViewController.spaceObj = spaceObj;
        }
    if ([segue.identifier isEqualToString:@"push to data segue"]) {
        OWDataViewController *dataCont = segue.destinationViewController;
        NSIndexPath *indexPath = (NSIndexPath*)sender;
        OWSpaceObject *spaceObj = [_planetsArray objectAtIndex:indexPath.row];
        dataCont.spaceObj = spaceObj;
    }
    
 //   }
    if([segue.destinationViewController isKindOfClass:[OWAddNewSpaceObjViewController class]])
    {
    
        OWAddNewSpaceObjViewController *newSpaceObjVC = segue.destinationViewController;
        newSpaceObjVC.delegate = self;
    }
    
}

#pragma mark - OWSpaceObjDeleagates
-(void)addSpaceObject
{
    NSLog(@"\n add Space Object");
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)cancelAddingSpaceObject
{
    NSLog(@"\n cancel adding space Object");
    [self dismissViewControllerAnimated:YES completion:nil];


}
@end
