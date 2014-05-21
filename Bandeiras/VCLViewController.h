//
//  VCLViewController.h
//  Bandeiras
//
//  Created by Victor de Lima on 20/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCLViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *slider;


-(IBAction)updateSlider:(id)sender;
@end
