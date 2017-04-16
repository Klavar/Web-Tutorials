//
//  VideoVC.h
//  KlavarTutorials
//
//  Created by Tony Merritt on 16/04/2017.
//  Copyright © 2017 Tony Merritt. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoVC : UIViewController <UIWebViewDelegate>

@property(nonatomic,strong) Video *video;
@end
