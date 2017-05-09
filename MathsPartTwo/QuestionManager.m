//
//  QuestionManager.m
//  MathsPartTwo
//
//  Created by Ben Weinberg on 2017-03-08.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionsArray = [[NSMutableArray alloc] init];
    }
    return self;
}


- (NSString*) timeOutput {
    
    for (Question *additionQuestion in self.questionsArray) {
        self.totalTime += [additionQuestion calculateTime];
    }
    
    return  [NSString stringWithFormat:@"total time: %1f seconds, average time: %1f seconds", (float) self.totalTime, (float) self.totalTime/self.questionsArray.count];
}
@end
