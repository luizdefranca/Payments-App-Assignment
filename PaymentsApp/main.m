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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *welcomeMessage= [NSString stringWithFormat:@"\n Thank you for shopping at Acme.com Your total today is $%lu Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", [ScreenController randomNumberBetween:100 andMax:100]];
        
        NSString *option =  [ScreenController stringFromPromptWithMessage:welcomeMessage];
        int intOption = option.intValue;
        if(intOption == 0) {
            NSLog(@"Wrong value.");
        }else{
            NSLog(@"Option: %i", intOption);
        }
        
        
    }
    
    
    return 0;
}
