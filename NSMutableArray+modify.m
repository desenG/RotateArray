//
//  NSMutableArray+modify.m
//  objc-practice
//
//  Created by DesenGuo on 2016-07-09.
//  Copyright © 2016 ideaweddinghome. All rights reserved.
//

#import "NSMutableArray+modify.h"

@implementation NSMutableArray(modify)
-(void)shiftForward:(BOOL)isForward withBits:(int) bit
{
    NSInteger length = [self count];
    NSArray *movingPart;
    
    if (isForward) {
        //code for right shift
        movingPart= [self subarrayWithRange:(NSRange){ .location = 0, .length = length-bit}];
        [self removeObjectsInRange:(NSRange){ .location = 0, .length = length-bit}];
        [self addObjectsFromArray:movingPart];

    }else{
        //code for left shift
        movingPart = [self subarrayWithRange:(NSRange){ .location = 0, .length = bit}];
        [self removeObjectsInRange:(NSRange){ .location = 0, .length = bit}];
        [self addObjectsFromArray:movingPart];
    }
}

@end
