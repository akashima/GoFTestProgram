//
//  FacadeViewController.h
//  GoFTestProgram
//
//  Created by 鹿島　章 on 13/08/26.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

// メモ
// 複数あるサブシステムを一本化していくためのデザインパターン
// 例えば、APIのような役割を持たすことも可能であったり、
// CGIであれば、いくつもあるライブラリを順次読み込んでいたのでは
// 効率が悪いため、サブシステムとして分割しておき、じょじょに大きくしていく。
// 役割分担が重要。

// たぶんこれが社会人成り立てのときに知った一番大きいデザインパターン
// TechScoreでは、訪問者と図書委員に加え、書籍の位置を示すリスト、貸し出し名簿にわけていた。
// 海外だとピザの電話注文システムを例にしてることもあった。


#import <UIKit/UIKit.h>

@interface FacadeViewController : UIViewController

@end
