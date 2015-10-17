//
//  DetailCipherTableViewController.h
//  CryptApp
//
//  Created by Drue Thomas on 10/17/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailCipherTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *cipherNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *alterTextView;

@property (weak, nonatomic) IBOutlet UIButton *encodeButton;

@property (weak, nonatomic) IBOutlet UIButton *decodeButton;

@property (nonatomic) NSString *cipherName;
@property (nonatomic) NSString *userInput;


@end
