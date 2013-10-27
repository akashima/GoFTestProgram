//
//  Director.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

@interface Director : NSObject
{
	@private
	Builder *_builder;
}

- (id)initWithBuilder:(Builder *)builder;
- (void)building;


@end
