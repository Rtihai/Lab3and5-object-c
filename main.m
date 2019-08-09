#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionsController.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
        ScoreKeeper *scorekeeper = [[ScoreKeeper alloc] init];
        
        while (YES)
        {
            QuestionsController *questions = [[QuestionsController alloc]init];
            Question *question = [questions question];
            if ([[[question userInput] uppercaseString] isEqualToString:@"QUIT"])
            {
                break;
            } else
            {
                if ([question isAnswer])
                {
                    [scorekeeper setRightCount:[scorekeeper rightCount]+1];
                } else
                {
                    [scorekeeper setWrongCount:[scorekeeper wrongCount]+1];
                }
                
                [scorekeeper printScore];
                [scorekeeper setLastTime:[question answerTime]];
                [scorekeeper printAverageTime];
            }
        }
        
    }
    return 0;
}
