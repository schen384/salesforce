//
//  XYZCustomer.h
//  salesforce
//
//  Created by Sicong Chen on 14-5-6.
//  Copyright (c) 2014年 Schen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZCustomer : NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSString *email;
@property (readonly) NSDate *creationDate;
@end
