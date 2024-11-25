//
//  Peaple.h
//  Seminars
//
//  Created by Nikita Krylov on 25.11.2024.
//

#import <Foundation/Foundation.h>
#import "MacBook.h"

NS_ASSUME_NONNULL_BEGIN

@interface Peaple : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, weak) MacBook *macbook; /* В случае, если установлен параметр weak то методы
                                                dealloc срабатывают после последнего вывода сообщения
                                                Finish на экран. Если вместо weak стоит strong, то методы
                                                dealloc не задействуются.*/

@end

NS_ASSUME_NONNULL_END
