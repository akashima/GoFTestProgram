//
//  Mediator.h
//  GoFTestProgram
//
//  Created by akashima on 2013/08/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mediator : NSObject
{
	@private
	NSMutableDictionary *_collegues;
}

// collegueの設定
- (void)addCollegue:(NSObject *)collegue;
// 調整者による調整結果(処理内容は必要に応じて書き換えること！)
- (NSString *)resultMediation:(NSObject *)oldCollegue newCollegue:(NSObject *)newCollegue;

@end
