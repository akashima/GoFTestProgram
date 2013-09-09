//
//  SwordMan.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "SwordMan.h"

@implementation SwordMan

- (void)changeSkillState:(State *)state
{
	_state = state;
}

- (NSString *)getAttackSkillName
{
	return [_state getAttackSkillName];
}

- (NSString *)getDefenceSkillName
{
	return [_state getDefenceSkillName];
}

@end
