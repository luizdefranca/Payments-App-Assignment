//
//  AmazonPaymentService.h
//  PaymentsApp
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject<PaymentGatewayDelegate>

@end

NS_ASSUME_NONNULL_END
