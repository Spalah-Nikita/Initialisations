//
//  CarModel.m
//  InitializatoinExamples
//
//  Created by Nikita Vintonovich on 9/6/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import "CarModel.h"

@interface CarModel ()

@property (nonatomic, strong) NSNumber *priceKoefficient;

@end

@implementation CarModel

- (NSNumber*)priceKoefficient
{
    if (!_priceKoefficient)
    {
        _priceKoefficient = @(1.0f);
    }
    return _priceKoefficient;
}

// добавляем свои мтеоды инициализации:

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
    }
    
    return self;
}

- (instancetype)initWithPrice:(NSNumber *)price
{
    self = [super init];
    
    if (self)
    {
        self.price = price;
    }
    
    return self;
}

- (instancetype)initWithPriceKoef:(NSNumber*)priceKoef
{
    self = [super init];
    
    if (self)
    {
        self.priceKoefficient = priceKoef;
    }
    
    return self;
}

- (instancetype)initWithName:(NSString*)name andPrice:(NSNumber*)price
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.price = price;
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name andPrice:(NSNumber *)price andPriceKoef:(NSNumber *)priceKoef
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.price = price;
        self.priceKoefficient = priceKoef;
    }
    
    return self;
}

+ (CarModel*)carModelWithParameters:(NSDictionary*)parametes;
{
    NSString *name = [parametes objectForKey:@"nameKey"];
    NSNumber *price = [parametes objectForKey:@"priceKey"];
    NSNumber *priceKoef = [parametes objectForKey:@"priceKoefKey"];
    
    CarModel *model = [[CarModel alloc] initWithName:name andPrice:price andPriceKoef:priceKoef];
    return model;
}



- (CGFloat)resultPrce
{
    return self.price.floatValue * self.priceKoefficient.floatValue;
}

- (NSString*)carInfo
{
    return [NSString stringWithFormat:@"car name: %@, car price: %.2f", self.name, [self resultPrce]];
}

- (void)logCarInfo
{
    NSLog(@"%@", [self carInfo]);
}

@end
