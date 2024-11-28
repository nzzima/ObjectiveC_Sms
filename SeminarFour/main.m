//
//  main.m
//  Seminars
//
//  Created by Nikita Krylov on 28.11.2024.
//

#import <Foundation/Foundation.h>
#import "BlockProperty.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int (^sum)(int, int) = ^int(int first, int second) { // Block
            return first + second;
        };
        
        int result1 = sum(12,14);
        NSLog(@"Result = %i", result1);
        
        BlockProperty* blockProperty = [BlockProperty new]; // Block property
        blockProperty.myBlock = sum;
        
        int result2 = blockProperty.myBlock(34, 56);
        NSLog(@"Result = %i", result2);
        
        [blockProperty printLog:sum first:21 second:32]; // Block method
        
        doubleint sumType = ^int(int first, int second) { // Block by typedef
            return first + second;
        };
        
        int result3 = sumType(54, 20);
        NSLog(@"Result = %i", result3);
    }
    return 0;
}
