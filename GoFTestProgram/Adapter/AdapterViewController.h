//
//  AdapterViewController.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/16.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

// Adapterパターン
// 二種類の方法ある様子。
// パターン1.プロトコルを用意してあげる方法(Protocolのrequest実装部分)
// パターン2.実装しちゃう方法(adapterにrequestを実装)
// でも、委譲処理ってことは、delegate使った方が良いってこと？


#import <UIKit/UIKit.h>

@interface AdapterViewController : UIViewController

@end
