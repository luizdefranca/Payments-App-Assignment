//
//  PaypalPaymentService.m
//  PaymentsApp
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService
-(void) processPayment: (NSInteger) amount{
     NSLog(@"Paypal processed amoutn %lu", amount);
}
@end
