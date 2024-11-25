//
//  main.m
//  Seminars
//
//  Created by Nikita Krylov on 25.11.2024.
//

#import <Foundation/Foundation.h>
#import "MacBook.h"
#import "Peaple.h"

struct iPhone {
    NSString *name;
    NSInteger storage;
};

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        MacBook *macBookPro = [MacBook new];
//        
//        macBookPro.name = @"MacBook Pro";
//        macBookPro.storage = 512;
//        
//        MacBook *macBookAir = macBookPro;
//        macBookAir.name = @"MacBook Air";
//        macBookAir.storage = 512;
//        
//        NSLog(@" %@ %ld", macBookPro.name, (long)macBookPro.storage);
//        NSLog(@" %@ %ld", macBookAir.name, (long)macBookAir.storage);
//        
//        struct iPhone iphone14;
//        struct iPhone iphone15;
//        
//        iphone14.name = @"iPhone 14";
//        iphone14.storage = 128;
//        
//        iphone15 = iphone14;
//        
//        iphone15.name = @"iPhone 15";
//        iphone15.storage = 256;
//        
//        NSLog(@" %@ %ld", iphone14.name, iphone14.storage);
//        NSLog(@" %@ %ld", iphone15.name, iphone15.storage);
//        
//        Peaple *peaple = [Peaple new];
//        macBookPro.peaple = peaple;
//        
//        peaple.name = @"Vasiliy";
//        peaple.macbook = macBookPro;
//        
//        NSLog(@"Finish");
//    }
//}
