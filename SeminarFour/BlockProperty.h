//
//  BlockProperty.h
//  Seminars
//
//  Created by Nikita Krylov on 28.11.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef int (^doubleint)(int, int);

@interface BlockProperty : NSObject

@property(nonatomic, copy, nullable) int (^myBlock)(int, int); //Block - property

-(void)printLog: (int(^)(int, int)) block first: (int) first second: (int) second;

@end

NS_ASSUME_NONNULL_END
