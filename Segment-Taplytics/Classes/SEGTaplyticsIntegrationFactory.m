//
//  SEGTaplyticsIntegrationFactory.m
//
//
//  Created by William Johnson on 4/25/16.
//
//

#import "SEGTaplyticsIntegrationFactory.h"
#import "SEGTaplyticsIntegration.h"

@interface SEGTaplyticsIntegrationFactory()

@property (nonatomic, assign) BOOL skipInit;

@end

@implementation SEGTaplyticsIntegrationFactory

+ (instancetype)instance
{
    static dispatch_once_t once;
    static SEGTaplyticsIntegrationFactory *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] initWithSkipInitialization:NO];
    });
    return sharedInstance;
}

+ (instancetype)skipInitialization
{
    static dispatch_once_t once;
    static SEGTaplyticsIntegrationFactory *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] initWithSkipInitialization:YES];
    });
    return sharedInstance;
}

- (instancetype)initWithSkipInitialization:(BOOL)skipInit
{
    if (self = [super init]) {
        self.skipInit = skipInit;
    }
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics
{
    if (self.skipInit) {
        return [[SEGTaplyticsIntegration alloc] initWithSettingsAndSkipTaplyticsIntialization:settings];
    }
    
    return [[SEGTaplyticsIntegration alloc] initWithSettings:settings];
}

- (NSString *)key
{
    return @"Taplytics";
}

@end
