//
//  Command.h
//  GoFTestProgram
//
//  Created by akashima on 2013/08/25.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beaker.h"

@interface Command : NSObject
{
	@protected
	Beaker *_beaker;
}

- (void)setBeaker:(Beaker *)beaker;
- (void)execute;

@end
