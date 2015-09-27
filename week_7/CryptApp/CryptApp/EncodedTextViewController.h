//
//  EncodedTextViewController.h
//  CryptApp
//
//  Created by Drue Thomas on 9/27/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EncodedTextViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *encodedText;

@property (weak, nonatomic) IBOutlet UIButton *saveCipherButton;
@property (weak, nonatomic) IBOutlet UIButton *textCopyButton;

@end
