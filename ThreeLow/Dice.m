//
//  Dice.m
//  ThreeLow
//
//  Created by Marina Mona June McPeak on 2019-05-29.
//  Copyright © 2019 Marina Mona June McPeak. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype) init {
    
    [self rollDice];
    
    return self;
    
}

- (NSString *) visibleFaceOfDie {
    
    NSArray *faceOfDie = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    
    return (NSString *)[faceOfDie objectAtIndex:self.face];
    
}

- (void) rollDice {
    
    self.face = (arc4random_uniform(6));
    
}

@end
