//
//  ViewController.m
//  TableViewApp
//
//  Created by Drue Thomas on 8/24/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
   //private to the class
    NSMutableArray *_sneakers;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   //sneakers is a model: holds the data
    _sneakers = [NSMutableArray arrayWithObjects:@"Nike Air Jordans", @"Nike Air Max 90", @"Nike Bo Jacksons", @"Converse All Stars",@"Nike Air Jordans", @"Nike Air Max 90", @"Nike Bo Jacksons", @"Converse All Stars",@"Nike Air Jordans", @"Nike Air Max 90", @"Nike Bo Jacksons", @"Converse All Stars",@"Nike Air Jordans", @"Nike Air Max 90", @"Nike Bo Jacksons", @"Converse All Stars",@"Nike Air Jordans", @"Nike Air Max 90", @"Nike Bo Jacksons", @"Converse All Stars",@"Nike Air Jordans", @"Nike Air Max 90", @"Nike Bo Jacksons", @"Converse All Stars",@"Nike Air Jordans", @"Nike Air Max 90", @"Nike Bo Jacksons", @"Converse All Stars", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Adding a view to the storyboard; defining the view controller as the DataSource and the Delegeate


//datasource methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _sneakers.count;
}

//delegate methods
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //mapping the data
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [_sneakers objectAtIndex:indexPath.row];//Index path contains the value for row; give me the item that exsists at indexPath.row
    
    return cell;
    
    
}

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    //index path tells us the location of the selected cell at any point
    [_sneakers removeObjectAtIndex:indexPath.row];
    //updating data object and animating
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:YES];
    
    
}
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *sneaker = [_sneakers objectAtIndex:indexPath.row];
    
    UIAlertView *alertMessage = [[UIAlertView alloc] initWithTitle:@"Sneaker" message:sneaker
                                                          delegate:nil
                                                 cancelButtonTitle:@"Ok"
                                                 otherButtonTitles:nil, nil];
    //alert on click and deselect after ok
    [alertMessage show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
@end
