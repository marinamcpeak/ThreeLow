//
//  Dice.h
//  ThreeLow
// Personal Notes: This header file defines the class "Dice" and everything about it.  This is public and it serves to separate the definition of the class from how its implemented.  In this regard, the header is an interface for the rest of your program to interact with.
//
//  Created by Marina Mona June McPeak on 2019-05-29.
//  Copyright © 2019 Marina Mona June McPeak. All rights reserved.
//

// Personal Notes: This import statement (Foundation) is important, because it brings in important NSObjects like NSString, NSArray, etc. The reason it still has to be imported, despite it also being imported into main.m is because main.m is executed last.  Therefore, this header file cannot 'inherit' the Foundation class from main, whereas, the method file (Dice.m) will inherit Foundation from the header file. The angle brackets around Foundation indicate that the compiler should search for code to import.
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property int face;

- (instancetype) init;

- (NSString *) visibleFaceOfDie;

- (void) rollDice;

@end

NS_ASSUME_NONNULL_END
