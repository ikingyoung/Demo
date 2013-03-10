//
//  PrimeFinder.m
//  ColdeBlocks
//
//  Created by King Young on 12-5-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PrimeFinder.h"

@implementation PrimeFinder
@synthesize startedDate;
@synthesize endedDate;
@synthesize primes;
@dynamic elapsedTime;

-(void) dealloc
{
	[primes release];
	[startedDate release];
	[endedDate release];
	[super dealloc];
}

-(id)initWithMaxNumber:(NSInteger)inMaxNumber
{
	if(self=[super init])
	{
		maxNumber = inMaxNumber;
		primes = [[NSMutableArray alloc] init];
	}
	return self;
}



-(BOOL)isPrime:(NSInteger)inNumber
{
	for (NSInteger n=2; n<inNumber; ++n)
	{
        if((inNumber % n) == 0)
        {
            return NO;
        }
	}
	
	return YES;
}

- (void)start
{
    self.startedDate = [NSDate date];

    for (NSInteger n=2; n< maxNumber; ++n)
    {
        if ([self isPrime:n])
        {
            [primes addObject:[NSNumber numberWithInteger:n]];
        }
    }
    self.endedDate = [NSDate date];
}

-(NSTimeInterval)elapsedTime
{
	return [endedDate timeIntervalSinceDate:startedDate];
}

@end
