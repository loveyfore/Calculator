//
//  Calculator.m
//  Calculator
//
//  Created by jin yonghua on 14-3-21.
//  Copyright (c) 2014年 jin yonghua. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(int)add:(int)a to:(int)b
{
    return a+b;
}

-(float)divide:(int)a by:(int)b
{
    float result =  (float)a/b;
    if (result==INFINITY) {
        [NSException raise:@"Cannot divide by zero!"
                    format:@"Not possible to divide %d with %d", a,b];
    }
    return result;
}

@end
