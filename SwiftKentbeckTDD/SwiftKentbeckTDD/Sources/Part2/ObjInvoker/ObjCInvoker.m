#import "ObjCInvoker.h"

@implementation ObjCInvoker

+ (BOOL)performSelector:(SEL)sel
                   on:(id)target
                 error:(NSError * _Nullable * _Nullable)error
{
    @try {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [target performSelector:sel];
#pragma clang diagnostic pop
        return YES;
    }
    @catch (NSException *exception) {
        if (error) {
            *error = [NSError errorWithDomain:@"ObjCExceptionDomain"
                                         code:1
                                     userInfo:@{
                NSLocalizedDescriptionKey: exception.reason ?: @"Objective‑C exception",
                @"exceptionName": exception.name,
                @"callSelector": NSStringFromSelector(sel)
            }];
        }
        return NO;
    }
}

@end
