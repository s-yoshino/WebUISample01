//
//  WebUISample01ViewController.m
//  WebUISample01
//
//  Created by Shuichi Yoshino on 2013/10/29.
//  Copyright (c) 2013年 Shuichi Yoshino. All rights reserved.
//

#import "WebUISample01ViewController.h"

@interface WebUISample01ViewController ()

@end

@implementation WebUISample01ViewController
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [NSURL URLWithString:@"http://www.biglobe.ne.jp"];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void) webViewDidStartLoad:(UIWebView *)webView
{
    [self.webView stringByEvaluatingJavaScriptFromString:
     @"window.useLocalPaths()"];
}

- (void) viewDidUnload
{
    webView = nil;
    [super viewDidUnload];
}

- (IBAction)onRefresh:(id)sender {

    //[self.webView.reload];

}

- (IBAction)onAlteration:(UIBarButtonItem *)sender {
    NSString *currentURL =[self.webView stringByEvaluatingJavaScriptFromString:@"document.URL"];
    NSLog(@"Current URL:%@", currentURL);
    
    NSString *htmlCode = [self.webView stringByEvaluatingJavaScriptFromString:@"document.getElementById('logo').getElementsByTagName('a')[0].outerHTML"];
    
    NSLog(@"htmlCode:%@", htmlCode);
    
    
    [self.webView stringByEvaluatingJavaScriptFromString:@"document.getElementById('logo').getElementsByTagName('a')[0].outerHTML = ''"];
    
}
@end
