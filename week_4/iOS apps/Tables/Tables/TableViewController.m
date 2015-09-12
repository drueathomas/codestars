//
//  CustomTableViewController.m
//  Tables
//
//  Created by Drue Thomas on 8/30/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//test
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

{
    NSMutableArray *dogs;
    NSMutableArray *dogImages;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    dogs = [NSMutableArray arrayWithObjects:@"Corgi", @"Labradore Retriever", @"German Sheperd", @"French Bulldog",@"English Bulldog", @"Beagle", @"Yorkshire Terrier", @"Poodle", @"Dachshund", nil];
    
    
    dogImages = [NSMutableArray arrayWithObjects:@"corgi.jpg", @"labradoreRetriever.jpg", @"germanSheperd.jpg", @"frenchBulldog.jpg", @"englishBulldog.jpg", @"beagle.jpg",@"yorkshireTerrier.jpg", @"poodle.jpg", @"dachshund.jpg", nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return [dogs count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [dogs objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[dogImages objectAtIndex:indexPath.row]];
    
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [dogs removeObjectAtIndex:indexPath.row];
    [dogImages removeObjectAtIndex:indexPath.row];
    
    [tableView reloadData];
    
    
}

@end

