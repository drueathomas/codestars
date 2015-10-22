//
//  DecodedTextViewController.h
//  CryptApp
//
//  Created by Drue Thomas on 10/22/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DecodedTextViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *decodedTextLabel;

@property (nonatomic) NSString *myText;
@property (nonatomic) NSString *myCipherName;

@property (weak, nonatomic) IBOutlet UIButton *cipherCopyButton;



-(IBAction)copyText;

@end

