//
//  Utils.m
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 03/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+(NSString *)documentDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

@end
