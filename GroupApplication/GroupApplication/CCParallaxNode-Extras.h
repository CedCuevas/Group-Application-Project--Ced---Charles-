//
//  HelloWorldLayer.h
//  GroupApplication
//
//  Created by Henricson Cedrick Z. Cuevas on 10/17/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


#import "cocos2d.h"

@interface CCParallaxNode (Extras) 

-(void) incrementOffset:(CGPoint)offset forChild:(CCNode*)node;

@end
