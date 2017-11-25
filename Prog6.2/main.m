//
//  main.m
//  Prog6.2
//
//  Created by Tống Đăng Tình on 11/26/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//Fraction


#import <Foundation/Foundation.h>


// interface section
@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end

// Implementation section
@implementation Fraction

-(void) print
{
    
    NSLog(@"%i/%i",numerator,denominator);

}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}
-(double) convertToNum
{
    if (denominator!=0)
        return (double)numerator/denominator;
    else
        return NAN;
}

// Program section
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Fraction *myFractionA = [[Fraction alloc] init];
        Fraction *myFractionB = [[Fraction alloc] init];
        // Set numerator and denominator
        [myFractionA setNumerator:1];
        [myFractionA setDenominator:11 ];
        //Display on screen
        [myFractionA print];
        NSLog(@"=");
        NSLog(@"%g",[myFractionA convertToNum] );
        // Khong set gia tri ==>> 0/0==>NAN
        [myFractionB print];
        NSLog(@"=");
        NSLog(@"%g",[myFractionB convertToNum]);
        
    }
    return 0;
}
