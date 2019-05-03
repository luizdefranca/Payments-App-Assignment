//
//  AmazonPaymentService.m
//  PaymentsApp
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void) processPayment: (NSInteger) amount{
    NSLog(@"Amazon processed amoutn %lu", amount);
}
@end
