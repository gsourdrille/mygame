//
//  Card.h
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 02/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameCard : NSObject


@property (nonatomic, strong)NSString *idCard;
@property (nonatomic, strong)NSString *picture;
@property (nonatomic, strong)NSString *type;
@property (nonatomic, strong)NSMutableArray *levels;

-(void) loadFromJson:(NSMutableDictionary*) json;



@end
