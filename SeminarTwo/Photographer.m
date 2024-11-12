//
//  Photographer.m
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
Создать метод checkMoney, который будет считать деньги относительно количества фотографий, а именноБ если это фотографс фотоаппаратом типа Nikon, коэффициент равен 10, Canon равен 5, сумма денег расчитывается с помощью произведения количества фотографий и коэффициента. 
*/

#import "Photographer.h"

@implementation Photographer

- (instancetype)initWithCameraType:(CameraType)cameraType {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = 0;
        _wage = 0;
    }
    return self;
}

- (instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = startNumberOfPhoto;
        _wage = 0;
    }
    return self;
}

- (instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto wage:(NSInteger)wage {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = startNumberOfPhoto;
        _wage = wage;
    }
    return self;
}

- (NSInteger)checkMoney {
    NSInteger k;
    switch (_cameraType) {
        case NIKON: k = 10;
            break;
        case CANON: k = 5;
            break;
        default:
            break;
    }
    k *= _startNumberOfPhoto;
    return k;
}

- (void)dealloc {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)setCameraType:(CameraType)cameraType {
    _cameraType = cameraType;
}

- (CameraType)getCameraType {
    return _cameraType;
}

- (void)setWage:(NSInteger)wage {
    _wage = wage;
}

- (NSInteger)getWage {
    return _wage;
}


- (void)setStartNumberOfPhoto:(NSInteger)startNumberOfPhoto {
    _startNumberOfPhoto = startNumberOfPhoto;
}

- (NSInteger)getStartNumberOfPhoto {
    return _startNumberOfPhoto;
}

@end
