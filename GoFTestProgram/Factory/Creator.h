//
//  Creator.h
//  GoFTestProgram
//
//  Created by akashima on 2013/06/29.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Creator : NSObject

- (Product *)createProductWithClassName:(NSString *)className;
- (Class)productClassWithClassName:(NSString *)className;

@end
