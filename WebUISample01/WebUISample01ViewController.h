//
//  WebUISample01ViewController.h
//  WebUISample01
//
//  Created by Shuichi Yoshino on 2013/10/29.
//  Copyright (c) 2013年 Shuichi Yoshino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebUISample01ViewController : UIViewController<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *alteration;
@property (weak, nonatomic) IBOutlet UIToolbar *refreshButton;

- (IBAction)onRefresh:(id)sender;

- (IBAction)onAlteration:(UIBarButtonItem *)sender;
@end
