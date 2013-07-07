//
//  ConcreateCreater.h
//  GoFTestProgram
//
//  Created by akashima on 2013/06/29.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Creator.h"
#import "ProductA.h"
#import "ProductB.h"

@interface ConcreateCreater : Creator

- (Product *)createProductWithClassName:(NSString *)className;
- (Class)productClassWithClassName:(NSString *)className;
@end
