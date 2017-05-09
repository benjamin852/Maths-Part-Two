//
//  ScoreKeeper.h
//  Maths
//
//  Created by Ben Weinberg on 2017-03-07.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic) NSInteger right;
@property (nonatomic) NSInteger wrong;
-(float) percentageRight;
@end
