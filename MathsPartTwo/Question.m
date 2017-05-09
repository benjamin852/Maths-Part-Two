//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ben Weinberg on 2017-03-07.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(900) +100;
        _rightValue = arc4random_uniform(900) +100;
        _answer = _leftValue + _rightValue;
       // _question = [NSString stringWithFormat: @"What is %ld +%ld", _leftValue, _rightValue ];
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}
-(NSTimeInterval) calculateTime {
    
    return [self.startTime timeIntervalSinceDate:self.endTime];
}
- (void) generateQuestion{
};
@end
