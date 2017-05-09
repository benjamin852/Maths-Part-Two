//
//  QuestionFactory.h
//  MathsPartTwo
//
//  Created by Ben Weinberg on 2017-03-08.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject
@property (nonatomic) NSArray *questionSubclassNames;
-(Question*) generateRandomQuestion;
@end
