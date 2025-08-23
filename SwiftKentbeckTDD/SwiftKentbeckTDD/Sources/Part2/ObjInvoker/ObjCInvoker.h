#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjCInvoker : NSObject
+ (BOOL)performSelector:(SEL)sel
                   on:(id)target
                 error:(NSError * _Nullable * _Nullable)error;

@end

NS_ASSUME_NONNULL_END
