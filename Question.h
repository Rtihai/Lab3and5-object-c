#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSInteger number1;
@property (nonatomic) NSInteger number2;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSString *question;
@property (nonatomic) NSString *userInput;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

- (instancetype)initWithController: (NSString *) operationType;
- (BOOL) isAnswer;
- (NSTimeInterval) answerTime;

@end
