//
//  PrimeFinder.h
//  ColdeBlocks
//
//  Created by King Young on 12-5-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrimeFinder : NSObject
{
	NSInteger maxNumber;
	NSDate *_startedDate;
	NSDate *_endedDate;
	NSMutableArray *_primes;
}
@property (retain,nonatomic) NSMutableArray *primes;
@property (retain,nonatomic) NSDate *startedDate;
@property (retain,nonatomic) NSDate *endedDate;
@property (readonly) NSTimeInterval elapsedTime;
-(id) initWithMaxNumber:(NSInteger) inMaxNumber;
-(void)start;
@end
