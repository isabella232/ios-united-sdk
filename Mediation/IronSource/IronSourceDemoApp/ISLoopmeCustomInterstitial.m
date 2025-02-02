//
//  ISLoopmeCustomInterstitial.m
//  IronSourceDemoApp
//
//  Created by Volodymyr Novikov on 14.12.2021.
//  Copyright © 2021 supersonic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISLoopmeCustomInterstitial.h"
#import "LoopMeUnitedSDK/LoopMeInterstitial.h"

@interface ISLoopmeCustomInterstitial()<LoopMeInterstitialDelegate>
@property (nonatomic, strong) LoopMeInterstitial *interstitial;
@property (nonatomic, strong) id<ISAdapterAdDelegate> delegate;
@end


@implementation ISLoopmeCustomInterstitial

- (void)loadAdWithAdData:(nonnull ISAdData *)adData
                delegate:(nonnull id<ISAdapterAdDelegate>)delegate {
    NSUserDefaults *standardUserDefaults = [NSUserDefaults standardUserDefaults];
    NSString *appkey = nil;

    if (standardUserDefaults)
        appkey = [standardUserDefaults objectForKey:@"LOOPME_INTERSTITIAL"];
    NSLog(@"loopme's appkey - %@", appkey);
    self.interstitial = [LoopMeInterstitial interstitialWithAppKey:appkey delegate:self];

    self.delegate = delegate;
    [self.interstitial loadAd];
}


- (BOOL)isAdAvailableWithAdData:(nonnull ISAdData *)adData {
   return true;
}

- (void)showAdWithViewController:(nonnull UIViewController *)viewController
                          adData:(nonnull ISAdData *)adData
                        delegate:(nonnull id<ISAdapterAdDelegate>)delegate {
   // check if ad can be displayed
    //[self.interstitial showFromViewController:self];
   if (1==2) {
      [delegate adDidFailToShowWithErrorCode:ISAdapterErrorInternal
                                 errorMessage:nil];
      return;
   }
    [delegate adDidShowSucceed];
}

- (void)loopMeInterstitialDidLoadAd:(LoopMeInterstitial *)interstitial {
    NSLog(@"LoopMe interstitial did load");
    [self.delegate adDidLoad];
}

- (void)loopMeInterstitial:(LoopMeInterstitial *)interstitial didFailToLoadAdWithError:(NSError *)error {
    NSLog(@"LoopMe interstitial did fail with error: %@", [error localizedDescription]);
    [self.delegate adDidFailToLoadWithErrorType:ISAdapterErrorTypeInternal
     errorCode:[error code] errorMessage:nil];
}

- (void)loopMeInterstitialDidAppear:(LoopMeInterstitial *)interstitial {
    NSLog(@"LoopMe interstitial did present");
    [self.delegate adDidOpen];
}

- (void)loopMeInterstitialDidDisappear:(LoopMeInterstitial *)interstitial {
    NSLog(@"LoopMe interstitial did dismiss");
    [self.delegate adDidClose];
}

- (void)loopMeInterstitialDidReceiveTap:(LoopMeInterstitial *)interstitial {
    NSLog(@"LoopMe interstitial was tapped.");
    [self.delegate adDidClick];
}

- (void)loopMeInterstitialVideoDidReachEnd:(LoopMeInterstitial *)interstitial {
    NSLog(@"LoopMe interstitial video did reach end.");
    [self.delegate adDidShowSucceed];
}
@end
