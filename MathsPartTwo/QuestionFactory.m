//
//  QuestionFactory.m
//  MathsPartTwo
//
//  Created by Ben Weinberg on 2017-03-08.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion {
    int i = arc4random_uniform(4);
    NSString *convertedRandomGenerator = self.questionSubclassNames[i];
    return [[NSClassFromString(convertedRandomGenerator) alloc] init];
}
@end
