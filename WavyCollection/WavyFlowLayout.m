//
//  WavyFlowLayout.m
//  WavyCollection
//
//  Created by Sanjay Shah on 2017-10-19.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

- (void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    
    // Set minimum interitem spacing to be huge to force all items to be on their own line
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    // Need to copy attrs from super to avoid cached frame mismatch
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    [newAttrs addObjectsFromArray:superAttrs];
    
    //find height of screen/collectionView
    CGFloat collectionViewHeight =  self.collectionView.frame.size.height;
    
    //for every attribute,
    for (UICollectionViewLayoutAttributes* attribute in newAttrs) {
        
        CGFloat yPoint = arc4random_uniform(collectionViewHeight);
 
        //make frame heights proportional to the y point
        attribute.frame = CGRectMake(attribute.frame.origin.x, yPoint, self.itemSize.width, ((collectionViewHeight-yPoint)/100)*self.itemSize.height);
        
        //getWavy
//       attribute.frame = CGRectMake(attribute.frame.origin.x, yPoint, self.itemSize.width,               self.itemSize.height);
        
    }
    return newAttrs;
}



@end
