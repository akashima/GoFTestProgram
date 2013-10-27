//
//  Builder.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Builder : NSObject

- (void)addSolute:(double)soluteAmount;
- (void)addSolvent:(double)solventAmount;
- (void)abandonSolusion:(double)solutionAmount;
- (NSObject *)getResult;
@end
