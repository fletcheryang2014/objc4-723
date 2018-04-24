//
//  MyObject+Category.m
//  debug-objc
//
//  Created by yangyi on 30/12/2017.
//

#import "MyObject+Category.h"
#import <objc/runtime.h>

static NSString * const kObj = @"kObj";

@implementation MyObject (Category)

- (void)categoryFunc
{
    
}

- (void)setObj:(NSObject *)obj
{
    objc_setAssociatedObject(self, &kObj, obj, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSObject *)obj
{
    return objc_getAssociatedObject(self, &kObj);
}

@end
