//
//  MyObject.m
//  debug-objc
//
//  Created by yangyi on 29/12/2017.
//

#import "MyObject.h"


@implementation MyObject

@synthesize testObj = _testObj;

- (void)setTestObj:(NSObject *)testObj
{
    [_testObj release];
    [testObj retain];
    _testObj = testObj;
}

- (NSObject *)testObj
{
    return _testObj;
}

- (void)delegateFunc
{
    printf("%s\n", __func__);
}

- (void)instanceFunc
{
    printf("%s\n", __func__);
}

+ (void)classFunc
{
    printf("%s\n", __func__);
}

- (void)dealloc
{
    [_testObj release];
    
    [super dealloc];
}

@end
