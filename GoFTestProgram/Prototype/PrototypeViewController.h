//
//  PrototypeViewController.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/23.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

// copyメソッドと同等の機能実現のためのパターン
// 同じことを何度もしなくても済むよう、
// 1パターンだけ作成しておき、残りは自ら作成する。
// createCloneメソッドで必要な数だけ生成してしまう。
// createClone内部では、同じ状況を作るためのstateを保持するようにする。


#import <UIKit/UIKit.h>

@interface PrototypeViewController : UIViewController

@end
