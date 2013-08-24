//
//  APatternCollegue.h
//  GoFTestProgram
//
//  Created by akashima on 2013/08/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Collegue.h"
#import "Mediator.h"

@interface APatternCollegue : Collegue
{
	@private
	Mediator *_mediator;
	NSString *_name;
	Collegue *_thanYourself;
}

- (id)initWithValue:(NSString *)name;

@end
