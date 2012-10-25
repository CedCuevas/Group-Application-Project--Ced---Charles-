//
//  how3.m
//  GroupApplication
//
//  Created by Charles Marlon G. Ramones on 10/26/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "how3.h"
#import "MyMenu.h"
#import "how4.h"


@implementation how3


+(id) scene
{
    CCScene *scene = [CCScene node];
    
    how3 *layer = [how3 node];
    
    [scene addChild: layer];
    
    return scene;
}

-(id) init
{
    
    if( (self=[super init] )) {
        
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        title = [[CCLabelTTF labelWithString:@"Story" dimensions:CGSizeMake(0, 300) hAlignment:UITextAlignmentCenter fontName:@"Marker Felt" fontSize:50]retain];
        
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
        
        
        planet = [CCMenuItemImage itemWithNormalImage:@"cowalien.png" selectedImage:@"cadbury.png"];
        
        
        
        planet.position = ccp(150, 300);
        
        
        story1 = [CCMenuItemImage itemWithNormalImage:@"about3.png" selectedImage:@"about3.png"];
        
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
    [[CCDirector sharedDirector] replaceScene:[how4 scene]];
}

- (void) dealloc
{
    
    [super dealloc];
}


@end
