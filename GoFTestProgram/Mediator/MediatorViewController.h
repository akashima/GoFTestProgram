//
//  MediatorViewController.h
//  GoFTestProgram
//
//  Created by akashima on 2013/08/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

// メモ
// 調整者によるオブジェクト間連携パターン
// 例えば、ObjectAとObjectB、ObjectCが存在する場合、
// それぞれ連携したい相手を調整者（Mediator）がいることにより、
// Mediaitorの判断によって、うまく処理できることがある。
// どう調整するかはMediator側の実装(resultMediation)で処理を調整する。
// （調整した結果、collegueを派生したObjectA、B、CでdoSomeThingを処理している。）

#import <UIKit/UIKit.h>

@interface MediatorViewController : UIViewController

@end
