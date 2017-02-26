//
//  UserProfile.m
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 02/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import "UserProfile.h"
#import "Utils.h"

@implementation UserProfile
@synthesize cards, name;

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:name forKey:@"name"];
    [coder encodeObject:cards forKey:@"cards"];
}


- (id)initWithCoder:(NSCoder *)coder
{
    
    if ((self = [super init]) != nil) {
        name = [coder decodeObjectForKey:@"name"];
        cards = [coder decodeObjectForKey:@"cards"];
    }
    return self;
}


+(UserProfile *) loadUserProfile {
    NSString *archivePath = [[Utils documentDirectory] stringByAppendingPathComponent:@"UserProfile"];
    UserProfile *user = [NSKeyedUnarchiver unarchiveObjectWithFile:archivePath];
    return user;
}

-(void) saveActiveUser {
    NSString *archivePath = [[Utils documentDirectory] stringByAppendingPathComponent:@"UserProfile"];
    [NSKeyedArchiver archiveRootObject:self toFile:archivePath];
 }

@end
