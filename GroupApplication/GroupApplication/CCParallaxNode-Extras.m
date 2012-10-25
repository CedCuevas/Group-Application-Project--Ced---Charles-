//
//  HelloWorldLayer.m
//  GroupApplication
//
//  Created by Henricson Cedrick Z. Cuevas on 10/17/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "CCParallaxNode-Extras.h"

@implementation CCParallaxNode(Extras)
@class CGPointObject;

-(void) incrementOffset:(CGPoint)offset forChild:(CCNode*)node 
{
	for( unsigned int i=0;i < parallaxArray_->num;i++) {
		CGPointObject *point = parallaxArray_->arr[i];
		if( [[point child] isEqual:node] ) {
			[point setOffset:ccpAdd(offset, [point offset])];
			break;
		}
	}
}

@end
