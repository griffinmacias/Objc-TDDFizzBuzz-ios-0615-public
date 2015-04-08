//
//  FizzBuzz.m
//  Objc-TDDFizzBuzz
//
//  Created by Al Tyus on 6/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

- (instancetype)init{
    
     return [self initWithStartNumber:@0 endNumber:@0];
}

- (instancetype)initWithStartNumber:(NSNumber *)startNumber endNumber:(NSNumber *)endNumber {
    self = [super init];
        self.startNumber = startNumber;
        self.endNumber = endNumber;
        return self;
    
}

+ (NSArray *)getValuesBetweenNumber:(NSNumber *)startNumber andNumber:(NSNumber *)endNumber {
    NSMutableArray *thefizzBuzz = [[NSMutableArray alloc] initWithArray:@[@"0"]];
    
    
    for (int i = [startNumber intValue] + 1; i <= [endNumber intValue]; i++){
        
        NSMutableString *string = [NSMutableString stringWithFormat:@""];
        
        if(i % 3 ==0){
            
            [string appendString:@"Fizz"];
        }
        
         if(i % 5 ==0) {
            [string appendString:@"Buzz"];
        }
        if ([string isEqualToString:@""]) {
            [string appendString:[NSString stringWithFormat:@"%i", i]];
        }
        [thefizzBuzz addObject:string];
    }
    return thefizzBuzz;
}

@end
