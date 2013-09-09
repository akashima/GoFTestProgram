//
//  SwordMan.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

@interface SwordMan : NSObject
{
	@private
	State *_state;
}

- (void)changeSkillState:(State *)state;

- (NSString *)getAttackSkillName;
- (NSString *)getDefenceSkillName;

@end
