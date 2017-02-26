//
//  AppDelegate.m
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 01/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import "AppDelegate.h"
#import "SwipeViewController.h"
#import "ShopViewController.h"
#import "PlayGameViewController.h"
#import "ListCardViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    
    UIPageViewController *pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    SwipeViewController *navigationController = [[SwipeViewController alloc]initWithRootViewController:pageController];
    
    ShopViewController *shopViewController = [[ShopViewController alloc]init];
    PlayGameViewController *playGameViewController = [[PlayGameViewController alloc]init];
    ListCardViewController *listCardViewController = [[ListCardViewController alloc]init];
    shopViewController.view.backgroundColor = [UIColor redColor];
    playGameViewController.view.backgroundColor = [UIColor whiteColor];
    listCardViewController.view.backgroundColor = [UIColor grayColor];
    [navigationController.viewControllerArray addObjectsFromArray:@[shopViewController,playGameViewController,listCardViewController]];
    
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
