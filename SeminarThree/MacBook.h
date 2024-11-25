//
//  MacBook.h
//  Seminars
//
//  Created by Nikita Krylov on 25.11.2024.
//

#import <Foundation/Foundation.h>
//#import "Peaple.h"

NS_ASSUME_NONNULL_BEGIN
@class Peaple;
@interface MacBook : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSInteger storage;
@property (nonatomic, strong) Peaple *peaple;

@end

NS_ASSUME_NONNULL_END
