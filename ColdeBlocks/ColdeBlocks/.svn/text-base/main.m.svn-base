//
//  main.m
//  ColdeBlocks
//
//  Created by King Young on 12-5-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrimeFinder.h"

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
    PrimeFinder *finder = [[PrimeFinder alloc] initWithMaxNumber:150000];
    [finder start];
    for(NSNumber *number in [finder primes])
    {
        NSLog(@"Found prime : %@",number);
    }
    NSLog(@"Found all the primes in %fs",[finder elapsedTime]);
	[finder release];
	[pool drain];
    return 0;
}

