//
//  MyObject+Category.h
//  debug-objc
//
//  Created by yangyi on 30/12/2017.
//

#import "MyObject.h"

@interface MyObject (Category)

@property (nonatomic, strong) NSObject *obj;

- (void)categoryFunc;

@end
