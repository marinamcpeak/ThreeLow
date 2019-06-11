//
//  GameController.h
//  ThreeLow
//
//  Created by Marina Mona June McPeak on 2019-05-29.
//  Copyright © 2019 Marina Mona June McPeak. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

//@property NSMutableArray *arrayOfDice;
@property NSMutableArray *arrayOfUnheldDice;
@property NSMutableArray *arrayOfHeldDice;
//@property NSMutableArray *holdDice;
@property int currentScore;

- (instancetype) init;

- (void) testDice;

- (void) createDice;

- (void) printDice;

- (void) printScore;

- (void) rollDice;

- (void) resetDice;

- (void) holdDice: (int) position;

@end

NS_ASSUME_NONNULL_END
