//
//  BridgeViewController.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/29.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

// Bridgeパターン
// 元になるクラス(Material)と元になるクラスの参照を持つクラス(Dishware)。
// Dishware側でいろいろ実装すれば、派生してるPlateとBowlは多少違うだけで済む。
// woodとglassもそれぞれMaterial側で用意しているものと、派生で変更すれば
// 修正量が少なくて済む。


#import <UIKit/UIKit.h>

@interface BridgeViewController : UIViewController

@end
