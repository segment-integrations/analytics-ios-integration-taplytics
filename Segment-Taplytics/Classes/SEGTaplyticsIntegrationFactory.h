#import <Foundation/Foundation.h>
#if defined(__has_include) && __has_include(<Analytics/SEGAnalytics.h>)
#import <Analytics/SEGIntegrationFactory.h>
#else
#import <Segment/SEGIntegrationFactory.h>
#endif


@interface SEGTaplyticsIntegrationFactory : NSObject <SEGIntegrationFactory>

+ (instancetype)instance;

+ (instancetype)skipInitialization;

@end
