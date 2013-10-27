//
//  CashewNutsVanillaIcecream.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "CashewNutsVanillaIcecream.h"

@implementation CashewNutsVanillaIcecream

- (void)setIceceam:(Icecream *)ice
{
	_ice = ice;
}

- (NSString *)getName
{
	NSMutableString *name = [NSMutableString stringWithFormat:@"カシューナッツ"];
	[name appendString:[_ice getName]];
	return name;
}

- (NSString *)getHowSweet
{
	return [_ice getHowSweet];
}

@end
