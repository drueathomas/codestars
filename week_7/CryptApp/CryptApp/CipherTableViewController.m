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
    
    //holds all of the active ciphers
    NSMutableArray *allCiphers;
    
    //holds current ciphers name
   NSString *currentCipherName;
//    NSString *currentCipherImage;
    
//    //holds current cipher name and image
    NSDictionary *currentCipherData;
    NSMutableArray *cipherNames;
   // NSMutableArray *cipherImages;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    allCiphers = [NSMutableArray arrayWithObjects:[[SharedCipher sharedInstance] getCiphers], nil];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [allCiphers count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    
    CipherTableViewCell *cell = (CipherTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    
    
    cell.cipherNameLabel.text = currentCipherData [@"name"][indexPath.row];
    
    cell.thumbnailImageView.image = [UIImage imageNamed:[allCiphers objectForKey:currentCipherImage]];
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
    
    dest.cipherName = [cipherNames objectAtIndex:indexPath.row];
    
}
}
@end
