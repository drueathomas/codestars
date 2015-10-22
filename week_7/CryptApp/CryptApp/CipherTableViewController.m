//
//  CipherTableViewController.m
//  CryptApp
//
//  Created by Drue Thomas on 10/17/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import "CipherTableViewController.h"
#import "CipherTableViewCell.h"
#import "Encoder.h"
#import "DetailCipherTableViewController.h"
#import "SharedCipher.h"
@interface CipherTableViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation CipherTableViewController
{
    
    
    NSMutableArray *allCiphers;
    NSString *currentCipherName;
    int currentCipherIndex;
    NSDictionary *currentCipherData;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    allCiphers = [[SharedCipher sharedInstance] getCiphers];
    currentCipherIndex = 0;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addCipher:(Cipher*)cipher atIndex:(int)index
{
    [[SharedCipher sharedInstance] addCipher:cipher atIndex:index];
    currentCipherIndex = index;
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:
(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [[SharedCipher sharedInstance] deleteCipherAtIndex:indexPath.row];
    [tableView reloadData];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [allCiphers count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    
    CipherTableViewCell *cell = (CipherTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    currentCipherData = [allCiphers objectAtIndex:indexPath.row];
    
    
    cell.cipherNameLabel.text =[[allCiphers objectAtIndex:indexPath.row]objectForKey:@"name"];
    cell.thumbnailImageView.image = [UIImage imageNamed:@"padlock-open.png"];
    
    return cell;
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

- (void) prepareForSegue: (UIStoryboardSegue *)segue sender:(id)sender{

if([segue.identifier isEqualToString: @"showDetailView"]){
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    DetailCipherTableViewController *dest = segue.destinationViewController;
    
    dest.cipherName = [[allCiphers objectAtIndex:indexPath.row]objectForKey:@"name"];
    
}
}
@end
