//
//  Teacher.h
//  Seminars
//
//  Created by Nikita Krylov on 25.11.2024.
//

#import <Foundation/Foundation.h>
#import "TeacherDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject
@property (nonatomic, weak, nullable) id<TeacherDelegate> delegate;
- (void) prepareHomework;
@end

NS_ASSUME_NONNULL_END
