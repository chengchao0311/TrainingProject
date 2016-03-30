//
//  FooA.m
//  Test1
//
//  Created by forms on 3/14/16.
//  Copyright © 2016 forms. All rights reserved.
//

#import "FooA.h"

@implementation FooA

-(void) print{
    NSLog(@"A");
}

+ (void)print{
    NSLog(@"+ A");
}

@end

@implementation FooB

-(void) print{
    NSLog(@"B");
}

@end
