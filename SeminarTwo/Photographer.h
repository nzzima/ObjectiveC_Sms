//
//  Photographer.h
//  Seminars
//
//  Created by Nikita Krylov on 12.11.2024.
//
/*
Тип камеры (cameraType) двух видов заданы перечислением (enum) Nikon, Canon
Создать для каждого iVar public getter/setter
Создать различные кастомные инициализаторы, а именно
 1) Принимает CameraType и остальным свойствам выставляет значение по умолчанию 0;
 2) Принимает CameraType и startNumberOfPhoto и wage = 0;
 3) Принимает все три параметра CameraType, startNumberOfPhoto и wage.
 Создать деинициализатор и проверить удаляется ли объект из памяти (dealloc метод) и прописать в реализации этого метода NSLog(@"%s",__PRETTY_FUNCTION__), посмотреть что произойдет.
*/

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CameraType) {
    NIKON,
    CANON
};

@interface Photographer : NSObject {
    @private CameraType _cameraType;
    @private NSInteger _startNumberOfPhoto;
    @private NSInteger _wage;
}

-(instancetype)initWithCameraType:(CameraType)cameraType;
-(instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto;
-(instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto wage:(NSInteger)wage;

-(void)setCameraType:(CameraType)cameraType;
-(CameraType)getCameraType;

-(void)setStartNumberOfPhoto:(NSInteger)startNumberOfPhoto;
-(NSInteger)getStartNumberOfPhoto;

-(void)setWage:(NSInteger)wage;
-(NSInteger)getWage;

-(NSInteger)checkMoney;

@end

NS_ASSUME_NONNULL_END
