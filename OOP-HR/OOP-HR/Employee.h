//
//  Employee.h
//  OOP-HR
//
//  Created by King Young on 12-5-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject 
{
	NSString *_FirstName;
	NSString *_LastName;
	NSDate *_BirthDate;
	NSDate *_DateOfEmployment;
	Employee *_Manager;
	NSString *_SSN;
	
	double _Salary;
}
@property (nonatomic,retain) NSString *FirstName;
@property (nonatomic,retain) NSString *LastName;
@property (nonatomic,retain) NSDate *BirthDate;
@property (nonatomic,retain) NSDate *DateOfEmployment;
@property (nonatomic,assign) Employee *Manager;
@property (nonatomic,retain) NSString *SSN;
@property (nonatomic,readonly) NSTimeInterval Age;
@property (nonatomic) double Salary;

-(id) initWithFirstName:(NSString *) inFirstName
			   LastName:(NSString *) inLastName
			  BirthDate:(NSDate *) inBirthDate
					SSN:(NSString *) inSSN;
-(void) giveRaise:(double) inPercentage;
-(double) Bouns;

@end
