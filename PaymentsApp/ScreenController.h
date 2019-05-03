//
//  InputController.h
//  PaymentsApp
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScreenController : NSObject
+(NSString*) stringFromPrompt;
+(NSString *)stringFromPromptWithMessage:(NSString *)promptString;
+(NSInteger)randomNumberBetween: (NSInteger) min andMax:(NSInteger) max;
+(NSNumber *) numberFromPrompt;
@end

NS_ASSUME_NONNULL_END
