//
//  MyObject.h
//  debug-objc
//
//  Created by yangyi on 29/12/2017.
//

#import <Foundation/Foundation.h>

@protocol MyObjectDelegate <NSObject>
- (void)delegateFunc;
@end

@interface MyObject : NSObject <MyObjectDelegate>

@property (nonatomic, strong) NSObject *testObj;

- (void)instanceFunc;
+ (void)classFunc;

@end
