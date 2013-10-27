//
//  CashewNutsVanillaIcecream.h
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Icecream.h"

@interface CashewNutsVanillaIcecream : Icecream
{
	@private
	Icecream *_ice;
}

- (void)setIceceam:(Icecream *)ice;

@end
