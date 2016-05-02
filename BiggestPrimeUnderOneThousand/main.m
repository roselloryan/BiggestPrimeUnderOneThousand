//
//  main.m
//  BiggestPrimeUnderOneThousand


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSInteger startInt = 1000;
        NSInteger j = 0;
        for (j = startInt; j > 1; j--) {
            
            NSInteger testNumber = j;
            
            NSNumber *testNSNumber = [NSNumber numberWithUnsignedInteger:testNumber];
            NSString *testString = [[NSString alloc]init];
            testString = [testNSNumber stringValue];
        
            // find out if number is palidrome
            BOOL isPalindrome = NO;
            NSMutableArray *mutArrayOfChars = [[NSMutableArray alloc]init];
            NSMutableArray *reverseMutArrayOfChars = [[NSMutableArray alloc]init];
        
            NSInteger i = 0;
            // make forwards array
            for (i = 0; i < testString.length; i++) {
                char charAtIndex = [testString characterAtIndex:i];
                NSString *charString = [NSString stringWithFormat:@"%c", charAtIndex];
                [mutArrayOfChars addObject:charString];
            }
        
            // make reverse array
            for (i = testString.length - 1; i > -1; i--) {
                char charAtIndex = [testString characterAtIndex:i];
                NSString *charString = [NSString stringWithFormat:@"%c", charAtIndex];
                [reverseMutArrayOfChars addObject:charString];
            }
        
            // find out if palindrome
            for (i = 0; i < testString.length; i++) {
            
                if ([[mutArrayOfChars objectAtIndex:i] isEqualToString:[reverseMutArrayOfChars objectAtIndex:i]]) {
                    isPalindrome = YES;
                }
                else {
                    isPalindrome = NO;
                    break;
                }
            }
            
            BOOL isPrime = YES;
            if (isPalindrome == YES) {
                NSLog(@"\n%ld is a palidrome\n\n", testNumber);
                
                // is test number prime?
                NSInteger k = 2;
                
                for (k = 2; k < (testNumber/2 + 1); k++) {
                    if (testNumber % k == 0) {
                        isPrime = NO;
                        break;
                    }
                }
                if (isPrime == YES) {
                    NSLog(@"\n%ld IS PRIME AND PALINDROMIC!!!\n\n", testNumber);
                    break;
                }
            }
            else {
                NSLog(@"\n%ld is NOT a palidrome\n\n", testNumber);
            }
        }
    }
    return 0;
}
