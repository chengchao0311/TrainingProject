//
//  FooA.h
//  Test1
//
//  Created by forms on 3/14/16.
//  Copyright © 2016 forms. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FooA : NSObject

- (void)print;
+ (void)print;

@end


@interface FooB : FooA
- (void)print;
@end

