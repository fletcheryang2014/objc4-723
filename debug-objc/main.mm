//
//  main.m
//  debug-objc
//
//  Created by yangyi on 29/12/2017.
//

#import <Foundation/Foundation.h>
#import "MyObject.h"
#import "MyObject+Category.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {

    MyObject *obj = [[MyObject alloc] init];
    Class cls = object_getClass(obj);
    printf("cls:%s <%p>\n", NSStringFromClass(cls).UTF8String, cls);
    Class metaCls = object_getClass(cls);
    printf("metaCls:%s <%p>\n", NSStringFromClass(metaCls).UTF8String, metaCls);
    Class rootMetaCls = object_getClass(metaCls);
    printf("rootMetsCls:%s <%p>\n", NSStringFromClass(rootMetaCls).UTF8String, rootMetaCls);

    printf("refCount:%lu\n", obj.retainCount);
    [obj retain];
    [obj release];
    [obj release];
    
    return 0;
}
