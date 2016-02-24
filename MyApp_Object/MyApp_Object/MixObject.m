//
//  MixObject.m
//  MyApp_Object
//
//  Created by JianRongCao on 2/24/16.
//  Copyright © 2016 JianRongCao. All rights reserved.
//

#import "MixObject.h"
#import "SwiftModule-swift.h"

@implementation MixObject

- (void)sayHello{
    NSLog(@"hello");
    
    Person *per = [[Person alloc] init];
    [per showName];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
