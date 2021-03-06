//
//  SEGTaplyticsIntegration.h
//
//
//  Created by William Johnson on 4/21/16.
//
//

#import <Foundation/Foundation.h>
#if defined(__has_include) && __has_include(<Analytics/SEGAnalytics.h>)
#import <Analytics/SEGIntegration.h>
#else
#import <Segment/SEGIntegration.h>
#endif
#import <Taplytics/Taplytics.h>


@interface SEGTaplyticsIntegration : NSObject <SEGIntegration>

@property (nonatomic, strong) NSDictionary *settings;
@property (nonatomic, strong) Class taplyticsClass;

- (instancetype)initWithSettings:(NSDictionary *)settings;

- (instancetype)initWithSettings:(NSDictionary *)settings andTaplytics:(id)taplyticsClass;

- (instancetype)initWithSettingsAndSkipTaplyticsIntialization:(NSDictionary *)settings;

@end
