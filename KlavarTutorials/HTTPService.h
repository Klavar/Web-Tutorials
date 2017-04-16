//
//  HTTPService.h
//  KlavarTutorials
//
//  Created by Tony Merritt on 16/04/2017.
//  Copyright © 2017 Tony Merritt. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^onComplete)(NSArray * __nullable dataArray, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id) instance;
- (void) getTutorials:(nullable onComplete)completionHandler;

@end
