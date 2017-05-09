//
//  SubtractionQuestion.m
//  MathsPartTwo
//
//  Created by Ben Weinberg on 2017-03-08.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
        self.answer = self.leftValue - self.rightValue;
    }
    return self;
}

- (void) generateQuestion {
    self.question = [NSString stringWithFormat: @"What is %ld - %ld", self.leftValue, self.rightValue ];
}
@end
