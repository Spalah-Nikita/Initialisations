//
//  main.m
//  InitializatoinExamples
//
//  Created by Nikita Vintonovich on 9/6/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CarModel.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        CarModel *toyota = [[CarModel alloc] init];
        
        toyota.name = @"TOYOTA";
        toyota.price = @(12000);
        
        [toyota logCarInfo];
        
        
        // короткая запись [[CarModel alloc] init];
        
        CarModel *nissan = [CarModel new];
        
        nissan.name = @"Nissan";
        nissan.price = @(15000);
        
        [nissan logCarInfo];
        
        
        // создается объект и имя Siat запишется в проерти
        
        CarModel *siat = [[CarModel alloc] initWithName:@"Siat"];
        
        siat.price = @(14000);
        
        [siat logCarInfo];
        
        
        // создается объект и ценовой коеффициент запишется в проерти
        
        CarModel *cherry = [[CarModel alloc] initWithPriceKoef:@(0.8)];
        
        cherry.name = @"Cherry";
        cherry.price = @(8000);
        
        [cherry logCarInfo];
        
        
        // создаем объект с имененем и ценой сразу
        
        CarModel *lotus = [[CarModel alloc] initWithName:@"Lotus" andPrice:@(10000)];
        
        [lotus logCarInfo];
        
        
        // далее создаем словарь с параметрами и с помощью метода carModelWithParameters преобразовывае словарь в объект класса
        
        NSDictionary *parametersDict = @{@"nameKey"        : @"Mazda",
                                         @"priceKey"       : @(18000),
                                         @"priceKoefKey"   : @(1.3f)};
        
        CarModel *lada = [CarModel carModelWithParameters:parametersDict];
        
        [lada logCarInfo];
    }
    return 0;
}
