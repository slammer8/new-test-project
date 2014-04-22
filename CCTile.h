//
//  CCTile.h
//  Pirate Game
//
//  Created by Andrew Wu on 4/17/14.
//  Copyright (c) 2014 Both Points. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"

@interface CCTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) CCWeapon *weapon;
@property (strong, nonatomic) CCArmor *armor;
@property (nonatomic) int healthEffect;



@end
