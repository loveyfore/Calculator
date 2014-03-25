//
//  UnitTests.m
//  UnitTests
//
//  Created by jin yonghua on 14-3-21.
//  Copyright (c) 2014年 jin yonghua. All rights reserved.
//

#import "UnitTests.h"
#import "Calculator.h"

@implementation UnitTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    calculator = [[Calculator alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    int expected = 11;
    int result = [calculator add:5 to:6];
    
    
    STAssertEquals(expected, result,
                   @"We expected %d, but it was %d",expected,result);
    
    NSLog(@"testAdd be tested!");
    
    
    
}






@end
