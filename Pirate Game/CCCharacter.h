//
//  CCCharacter.h
//  Pirate Game
//
//  Created by Andrew Wu on 4/21/14.
//  Copyright (c) 2014 Both Points. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCArmor.h"
#import "CCWeapon.h"

@interface CCCharacter : NSObject

@property (strong, nonatomic) CCArmor *armor;
@property (strong, nonatomic) CCWeapon *weapon;

@property (nonatomic) int health;
@property (nonatomic) int damage;


@end
