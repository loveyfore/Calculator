//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by jin yonghua on 14-3-21.
//  Copyright (c) 2014年 jin yonghua. All rights reserved.
//

#import "CalculatorTests.h"
#import "Calculator.h"

@implementation CalculatorTests

- (void) setUp
{
    calculator = [[Calculator alloc] init];
}

-(void)tearDown
{
    //[calculator release];
}

-(void)testAdd
{
    int expected = 11;
    int result = [calculator add:5 to:6];
    STAssertEquals(expected, result,
                   @"We expected %d, but it was %d",expected,result);
    
    NSLog(@"testAdd be tested!");
}

-(void)testDivide
{
    float expected = 2.5;
    float result = [calculator divide:5 by:2];
    STAssertEquals(expected, result,
                   @"We expected %f, but it was %f",expected,result);
}

-(void)testDivideByZero
{
    STAssertThrows([calculator divide:5 by:0],
                   @"We expected an exception to be raised when dividing by 0");
}
@end
