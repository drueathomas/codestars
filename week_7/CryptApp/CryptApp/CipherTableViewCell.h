//
//  CipherTableViewCell.h
//  CryptApp
//
//  Created by Drue Thomas on 9/28/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CipherTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cipherThumbnail;
@property (weak, nonatomic) IBOutlet UILabel *cipherLabel;

@end
