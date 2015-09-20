//
//  OWDataViewController.m
//  OuterSpaceObjects
//
//  Created by abhishek on 19/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import "OWDataViewController.h"
#import "AstronomicalData.h"

@interface OWDataViewController ()

@end

@implementation OWDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table View Data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 8;
}

#pragma mark - table View Delegates

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    NSString *titleLbl ;
    NSString *valLbl;
    
    switch (indexPath.row) {
        case 0:
        {
            titleLbl = @"Planet Name";
            valLbl = _spaceObj.planetName;
        }
            break;
        case 1:
        {
            titleLbl = @"Planet Gravity";
            valLbl = [NSString stringWithFormat:@"%f",_spaceObj.planetGravity];
        }
            break;
        case 2:
        {
            titleLbl = @"Planet Diameter";
            valLbl = [NSString stringWithFormat:@"%f",_spaceObj.planetDiameter];
        }
            break;
        case 3:
        {
            titleLbl = @"Planet Year Length";
            valLbl = [NSString stringWithFormat:@"%f",_spaceObj.planetYearLength];
        }
            break;
        case 4:
        {
            titleLbl = @"Planet Day Length";
            valLbl = [NSString stringWithFormat:@"%f",_spaceObj.planetDayLength];
        }
            break;
        case 5:
        {
            titleLbl = @"Planet Temperature";
            valLbl = [NSString stringWithFormat:@"%f",_spaceObj.planetTemperature];
        }
            break;
        case 6:
        {
            titleLbl = @"Planet Moons";
            valLbl = [NSString stringWithFormat:@"%d",_spaceObj.noOfMoons];
        }
            break;
        case 7:
        {
            titleLbl = @"Planet NickName";
            valLbl = _spaceObj.planetNickName;
        }
            break;
        case 8:
        {
            titleLbl = @"interesting Fact";
            valLbl = _spaceObj.interestingFact;
        }
            break;
            
        default:
            break;
    }
    
    cell.textLabel.text = titleLbl;
    cell.detailTextLabel.text = valLbl;
    return cell;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
