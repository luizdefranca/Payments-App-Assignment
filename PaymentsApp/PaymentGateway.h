//
//  PaymentGateway.h
//  PaymentsApp
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentGatewayDelegate <NSObject>

-(void) processPayment: (NSInteger) amount;
-(BOOL) canProcessPayment;

@end



@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentGatewayDelegate> delegate;
-(void) processPaymentAmount: (NSInteger) amount;
@end

NS_ASSUME_NONNULL_END
