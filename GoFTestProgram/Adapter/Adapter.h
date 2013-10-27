//
//  Adapter.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/16.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Adaptee.h"
#import "Target.h"

@interface AdapterDelgatePattern : NSObject <Target>
{
	@private
	Adaptee *_adaptee;
}
@end

@interface AdapterExtendPettern : Adaptee

- (void)request;

@end
