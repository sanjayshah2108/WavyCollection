//
//  ViewController.m
//  WavyCollection
//
//  Created by Sanjay Shah on 2017-10-19.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "ViewController.h"
#import "WavyFlowLayout.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property WavyFlowLayout  *wavyFlowLayout;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
     self.wavyFlowLayout = [[WavyFlowLayout alloc] init];
    [self.wavyFlowLayout prepareLayout];
    
    self.collectionView.collectionViewLayout = self.wavyFlowLayout;
    // Do any additional setup after loading the view, typically from a nib.
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}


@end
