//
//  How5.h
//  GroupApplication
//
//  Created by Charles Marlon G. Ramones on 10/26/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface How5 : CCLayer {
    CCLabelTTF *title;
    CCMenuItemImage *backToMenuButton;
    CCMenuItemImage *planet;
    CCMenuItemImage *next;
    CCMenuItemImage *story1;
}


+(id) scene;

- (void) backToMenu: (id) sender;


@end
