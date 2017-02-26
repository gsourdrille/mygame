//
//  UserProfile.h
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 02/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserProfile : NSObject<NSCoding>

@property (nonatomic, strong)NSMutableArray *cards;
@property (nonatomic, strong)NSString *name;

+(UserProfile *) loadUserProfile;
-(void) saveActiveUser;
@end
