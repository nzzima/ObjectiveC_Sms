//
//  Teacher.m
//  Seminars
//
//  Created by Nikita Krylov on 25.11.2024.
//

#import "Teacher.h"

@implementation Teacher

- (void)prepareHomework {
    NSLog(@"Teacher preapring homework");
    [self.delegate doHomework];
}

@end
