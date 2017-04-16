//
//  VideoCell.h
//  KlavarTutorials
//
//  Created by Tony Merritt on 16/04/2017.
//  Copyright © 2017 Tony Merritt. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoCell : UITableViewCell
-(void)updateUI:(nonnull Video*)video;
@end
