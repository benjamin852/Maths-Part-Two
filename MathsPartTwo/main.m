//
//  main.m
//  Maths
//
//  Created by Ben Weinberg on 2017-03-07.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputCollector.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (true) {
            Question *question = [questionFactory generateRandomQuestion];
            [questionManager.questionsArray addObject:question];
            
            //the question written in the question property
            NSLog(@"%@", question.question);
            
            
            //input in a string
            NSString *userInput = [InputCollector inputString];
            
            //input in an integer
            NSInteger comparisonInput = userInput.integerValue;
            
            if (comparisonInput == question.answer) {
                NSLog(@"your right!");
                scoreKeeper.right++;
            } else {
                NSLog(@"your wrong");
                scoreKeeper.wrong++;
            }
            
            
            if ([userInput isEqualToString:@"quit"]) {
                break;
            }
            
            NSLog(@"you were right %ld times and wrong %ld times. You were right %f of times.",scoreKeeper.right, scoreKeeper.wrong, [scoreKeeper percentageRight]);
            NSLog (@"%@", [questionManager timeOutput]);
            
        }
    }
    return 0;
}
