//
//  ViewController.m
//  TesteComAfNtwork
//
//  Created by Mario Santana on 4/23/16.
//  Copyright © 2016 Mario Santana. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworkReachabilityManager.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //monitora conexao
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnVerifica:(id)sender {
    if (self.ConexaoAtiva == true) {
        NSLog(@"tem conexao");
        
    }else {
        NSLog(@"não tem conexao");
    }
}

-(BOOL)ConexaoAtiva{
    return [AFNetworkReachabilityManager sharedManager].reachable;}

@end
