//
//  ViewController.m
//  SimpleTable
//
//  Created by Drue Thomas on 8/22/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

    NSArray *recipes;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Initialize table data
    recipes = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
}
                

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}


@end
