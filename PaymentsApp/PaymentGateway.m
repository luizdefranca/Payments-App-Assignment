//
//  PaymentGateway.m
//  PaymentsApp
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void) processPaymentAmount: (NSInteger) amount{
    [self.delegate processPayment: amount];
}

@end
