//
//  AdditionQuestion.h
//  Maths
//
//  Created by Ben Weinberg on 2017-03-07.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;

@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

-(NSTimeInterval) calculateTime;
- (void) generateQuestion;
@end

