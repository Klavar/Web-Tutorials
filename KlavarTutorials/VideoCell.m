//
//  VideoCell.m
//  KlavarTutorials
//
//  Created by Tony Merritt on 16/04/2017.
//  Copyright © 2017 Tony Merritt. All rights reserved.
//

#import "VideoCell.h"
#import "Video.h"

@interface VideoCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *discLabel;
@property (weak, nonatomic) IBOutlet UIImageView *thumbImage;
@property (weak, nonatomic) IBOutlet UIView *cellView;

@end

@implementation VideoCell

- (void)awakeFromNib {
    [super awakeFromNib];
	
	self.layer.cornerRadius = 2.0;
	self.layer.shadowColor = [UIColor colorWithRed:157.0 / 255.0 green:157.0 / 255.0 blue:157.0 / 255 alpha:0.8].CGColor;
	self.layer.shadowOpacity = 0.8;
	self.layer.shadowRadius = 5.0;
	self.layer.shadowOffset = CGSizeMake(0.0, 2.0);
	
}

-(void)updateUI:(nonnull Video*)video {
	self.titleLabel.text = video.videoTitle;
	self.discLabel.text = video.videoDescription;
	
	
	UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:video.thumbnailUrl]]];
	self.thumbImage.image = image;	
}

@end
