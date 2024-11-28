//
//  BlockProperty.m
//  Seminars
//
//  Created by Nikita Krylov on 28.11.2024.
//

#import "BlockProperty.h"

@implementation BlockProperty

- (void)printLog:(nonnull int (^)(int, int))block first:(int)first second:(int)second {
    int result = block(first, second);
    NSLog(@"Result %i + %i = %i", first, second, result);
    
}

@end
