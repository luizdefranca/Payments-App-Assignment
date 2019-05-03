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
   
    if ([self.delegate canProcessPayment]) {
           [self.delegate processPayment: amount];
    } else {
        NSLog(@"We cannot process your payment right now. Please, try again later. :(");
    }
 
}

@end
