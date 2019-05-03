//
//  main.m
//  PaymentsApp
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScreenController.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "StripPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger randomValue = [ScreenController randomNumberBetween:100 andMax:100];
        NSString *welcomeMessage= [NSString stringWithFormat:@"\n Thank you for shopping at Acme.com Your total today is $%lu Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomValue ];
        
         while(YES){
        NSString *option =  [ScreenController stringFromPromptWithMessage:welcomeMessage];
        int intOption = option.intValue;
      
       
            NSLog(@"Option: %i", intOption);
            PaymentGateway *payGate = [PaymentGateway new];
            switch (intOption) {
                case 1:{
                    PaypalPaymentService *paypal = [PaypalPaymentService new];
                    payGate.delegate = paypal;
                }
                    
                    break;
                case 2:{
                    StripPaymentService *strip = [StripPaymentService new];
                    payGate.delegate = strip;
                }
                    
                    break;
                case 3:{
                    AmazonPaymentService *amazon = [AmazonPaymentService new];
                    payGate.delegate = amazon;
                }
                    
                    break;
                default:
                    NSLog(@"Wrong option.\n");
                   
                    break;
            }
             [payGate processPaymentAmount: randomValue];

        }
        
        
    }
    
    
    return 0;
}
