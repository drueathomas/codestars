//
//  CipherTableViewCell.h
//  CryptApp
//
//  Created by Drue Thomas on 10/17/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CipherTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@property (weak, nonatomic) IBOutlet UILabel *cipherNameLabel;

@end
