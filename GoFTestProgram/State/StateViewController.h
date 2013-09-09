//
//  StateViewController.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

// メモ
// 状態管理によるパターン処理
// オブジェクト自体が状態(State)を管理している。
// コマンドとの違いは、コマンド自体がオブジェクト(例:Beaker)を保持している。

// Stateパターンは、状態(State)によって処理を決まる。


#import <UIKit/UIKit.h>

@interface StateViewController : UIViewController

@end
