#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MapboxCoreNavigationObjc/include/MapboxCoreNavigation.h"
#import "MapboxCoreNavigationObjc/include/MBNavigationSettings.h"
#import "MapboxCoreNavigationObjc/include/MBRouteController.h"
#import "MapboxNavigationObjc/include/MapboxNavigation.h"
#import "MapboxNavigationObjc/include/MBRouteVoiceController.h"

FOUNDATION_EXPORT double IlyesMaplibreNavigationVersionNumber;
FOUNDATION_EXPORT const unsigned char IlyesMaplibreNavigationVersionString[];

