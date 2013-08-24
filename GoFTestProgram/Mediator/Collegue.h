//
//  Collegue.h
//  GoFTestProgram
//
//  Created by akashima on 2013/08/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"

@interface Collegue : NSObject

// 調整役を設定
- (void)setMediator:(Mediator *)mediator;
// 名称
- (NSString *)name;
// 設定処理
- (void)setCollegue:(Collegue *)thanYourself;
// アクション(MediatorにresultMediationしてもらう)
- (void)someThingsMethod;

@end
