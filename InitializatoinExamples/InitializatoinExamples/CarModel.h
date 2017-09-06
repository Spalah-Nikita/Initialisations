//
//  CarModel.h
//  InitializatoinExamples
//
//  Created by Nikita Vintonovich on 9/6/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *price;

- (instancetype)initWithName:(NSString*)name;
- (instancetype)initWithPrice:(NSNumber*)price;
- (instancetype)initWithPriceKoef:(NSNumber*)priceKoef;

- (instancetype)initWithName:(NSString*)name andPrice:(NSNumber*)price;
- (instancetype)initWithName:(NSString*)name andPrice:(NSNumber*)price andPriceKoef:(NSNumber*)priceKoef;

+ (CarModel*)carModelWithParameters:(NSDictionary*)parametes;

- (void)logCarInfo;

@end
