//
//  Dice.m
//  ThreeLow
// Personal Notes: This is the implementation file and it's where all the things declared in the header file must be defined with the necessary code.
//
//  Created by Marina Mona June McPeak on 2019-05-29.
//  Copyright © 2019 Marina Mona June McPeak. All rights reserved.
//

// Personal Notes: The header file must be imported, because the compiler needs to be told where to find the header file that belongs to this implementation file. The double quotes indicate to the compiler that this file should be located in the same project as the implementation file.
#import "Dice.h"

// Implementation - Personal Notes: This keyword (@implementation) correlates to the @interface keyword found in the header file.  Along the same lines, it must also end with @end.
@implementation Dice

// Personal Notes: This is a custom implementation of this method that will initialize and return a new object. The instancetype is being used as a result type to signal that a method returns a related result type. In this case, the compiler will infer that the result of init is an instance of Dice.  If the object can't be initialized, it should return nil. self is taking and returning the value from rollDice.
- (instancetype) init {
    
    [self rollDice];
    
    return self;
    
}

// Personal Notes: Within this method, which must return a NSString, an NSArray named faceOfDie has six string objects.  One for each face of the die.  The return is a NSString (as defined by the method) that takes the faceOfDie NSArray and finds one of the objects within it at the index number defined by self.face  Consider that self.face (defined in the method rollDice below) was equal to a random integer from 0-5. These values correlate to the indexing of the array (which starts at 0 not 1).
- (NSString *) visibleFaceOfDie {
    
    NSArray *faceOfDie = @[@"1", @"2", @"3", @"4", @"5", @"6"];
    
    return (NSString *)[faceOfDie objectAtIndex:self.face];
    
}

// Personal Notes: self is used here to return the value from the property named face with the datatype integer, which was determined in the header file.  This property is assigned a value of arc4random_uniform(6). arc4random_uniform() is from the Standard C Library and is a function that will return a single 32-bit value that is uniformly distributed, but less than an upper_bound value (6 in this case).
- (void) rollDice {
    
    self.face = (arc4random_uniform(6));
    
}

@end
