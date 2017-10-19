//
//  WavyFlowLayout.h
//  WavyCollection
//
//  Created by Sanjay Shah on 2017-10-19.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WavyFlowLayout : UICollectionViewFlowLayout

- (void)prepareLayout ;

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect;

@end
