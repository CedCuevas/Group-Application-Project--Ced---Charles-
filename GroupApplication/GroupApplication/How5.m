//
//  How5.m
//  GroupApplication
//
//  Created by Charles Marlon G. Ramones on 10/26/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "How5.h"
#import "MyMenu.h"


@implementation How5

+(id) scene
{
    CCScene *scene = [CCScene node];
    
    How5 *layer = [How5 node];
    
    [scene addChild: layer];
    
    return scene;
}

-(id) init
{
    
    if( (self=[super init] )) {
        
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        title = [[CCLabelTTF labelWithString:@"How to Play" dimensions:CGSizeMake(0, 300) hAlignment:UITextAlignmentCenter fontName:@"Marker Felt" fontSize:50]retain];
        
        title.position =  ccp(winSize.width/2,winSize.height*0.9);
        title.color = ccc3(0, 191, 205);
        [self addChild: title];
        
        
        
        
        
        
        backToMenuButton = [CCMenuItemImage
                            itemFromNormalImage:@"home.png"
                            selectedImage:@"home.png"
                            target:self
                            selector:@selector(backToMenu:)];
        
        backToMenuButton.position = ccp(110, 50);
        
        
        
        next = [CCMenuItemImage
                itemFromNormalImage:@"next.png"
                selectedImage:@"next.png"
                target:self
                selector:@selector(next:)];
        
        next.position = ccp(200, 50);
        
        
        planet = [CCMenuItemImage itemWithNormalImage:@"about5.png" selectedImage:@"about5.png"];
        
        
        
        planet.position = ccp(150, 300);
        
        
        story1 = [CCMenuItemImage itemWithNormalImage:@"aboutlast.png" selectedImage:@"aboutlast.png"];
        
        story1.position = ccp(160, 150);
        
        CCMenu *backToMenu = [CCMenu menuWithItems:backToMenuButton, planet,next, story1, nil];
        
        
        backToMenu.position = CGPointZero;
        [self addChild:backToMenu];
        
        
        
        
        
        
    }
    return self;
}
- (void) backToMenu:(id)sender
{
    [[CCDirector sharedDirector] replaceScene:[MyMenu scene]];
}
-(void)next: (id)sender
{
    [[CCDirector sharedDirector] replaceScene:[MyMenu scene]];
}

- (void) dealloc
{
    
    [super dealloc];
}


@end
