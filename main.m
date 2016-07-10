//
//  main.m
//  objc-practice
//
//  Created by DesenGuo on 2016-07-09.
//  Copyright © 2016 ideaweddinghome. All rights reserved.
//

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray* array = [NSMutableArray arrayWithObjects:
                                 @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9",nil];
        
        [array shiftForward:NO withBits:3];
        NSLog(@"array is %@",array);
    }
    return 0;
}
