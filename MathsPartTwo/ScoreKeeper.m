//
//  ScoreKeeper.m
//  Maths
//
//  Created by Ben Weinberg on 2017-03-07.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
-(float) percentageRight {
    NSInteger percentage = 100 * ((self.right)/(self.right + self.wrong));
    return percentage;
}
@end
