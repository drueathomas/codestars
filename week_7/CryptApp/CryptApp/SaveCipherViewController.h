//
//  SaveCipherViewController.h
//  CryptApp
//
//  Created by Drue Thomas on 10/17/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol senddataProtocol <NSObject>

-(void)sendDataToA:(NSString *)title; 

@end

@interface SaveCipherViewController : UIViewController <senddataProtocol>

@property (nonatomic) NSString *myTitle;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UITextField *cipherTitle;
@property (weak, nonatomic) IBOutlet UIButton *saveCipherTitle;

@property(nonatomic,assign)id delegate;

-(IBAction)saveTitle;

@end
