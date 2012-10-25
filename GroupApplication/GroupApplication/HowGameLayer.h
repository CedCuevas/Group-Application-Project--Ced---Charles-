//
//  HowGameLayer.h
//  GroupApplication
//
//  Created by Henricson Cedrick Z. Cuevas on 10/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface HowGameLayer : CCLayer {
    
    CCLabelTTF *title;
    CCMenuItemImage *backToMenuButton;
    CCLabelTTF *Body1;
    CCLabelTTF *Body2;
    CCLabelTTF *Body3;
    CCLabelTTF *Body4;
    CCLabelTTF *Body5;
    CCMenuItemImage *planet;
    CCMenuItemImage *next;
    CCMenuItemImage *story1;
    
    
}

+(id) scene;

- (void) backToMenu: (id) sender;

@end
