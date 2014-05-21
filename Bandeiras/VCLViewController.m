//
//  VCLViewController.m
//  Bandeiras
//
//  Created by Victor de Lima on 20/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLViewController.h"
#import "VCLView.h"

@interface VCLViewController ()

@end

@implementation VCLViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImageView*) makeRectangleViewWithOriginX:(int) originX andOriginY:(int) originY width:(int) width height: (int) height andFillColor:(UIColor *)color andBoardColor:(UIColor*)corBorda{
    
    CGRect background = CGRectMake(originX, originY,
                                   width,
                                   height);
    
    UIBezierPath *backgroundImage = [UIBezierPath bezierPathWithRect:background];
    UIGraphicsBeginImageContext(self.view.bounds.size);
    
    CGContextRef contextBackground = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(contextBackground, corBorda.CGColor);
    CGContextSetFillColorWithColor(contextBackground, color.CGColor);
    [backgroundImage fill];
    [backgroundImage stroke];
    
    UIImage *contextImageBackground = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:contextImageBackground];
    
    return backgroundView;
}

- (void)makeJapanFlag{
    
    CGRect background = CGRectMake(20, 100,
                                   self.view.bounds.size.width - 50,
                                   self.view.bounds.size.height - 130);
    
    UIBezierPath *backgroundImage = [UIBezierPath bezierPathWithRect:background];
    UIGraphicsBeginImageContext(self.view.bounds.size);
    
    CGContextRef contextBackground = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(contextBackground, [UIColor blackColor].CGColor);
    CGContextSetFillColorWithColor(contextBackground, [UIColor whiteColor].CGColor);
    [backgroundImage fill];
    [backgroundImage stroke];
    
    UIImage *contextImageBackground = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:contextImageBackground];
    

    VCLView *viewBackground = [[VCLView alloc] init];
    
    int raio = 60;
    CGRect circle = CGRectMake(backgroundView.center.x - 60,
                               backgroundView.center.y - 15,
                               raio*2, raio*2);
    
    UIBezierPath *circleImage = [UIBezierPath bezierPathWithOvalInRect:circle];
    UIGraphicsBeginImageContext(self.view.bounds.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    [circleImage fill];
    [circleImage stroke];
    
    UIImage *contextImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageView *circleView = [[UIImageView alloc] initWithImage:contextImage];
    
    [viewBackground addSubview:backgroundView];
    
    [viewBackground addSubview:circleView];
    
    [self.view addSubview:viewBackground];
    
}

-(void) makeFranceFlag{
   
    
    UIImageView *backgroundView = [self makeRectangleViewWithOriginX:20
                                                           andOriginY:100
                                                              width:(self.view.bounds.size.width - 50)
                                                              height:(self.view.bounds.size.height - 130) andFillColor:[UIColor whiteColor]andBoardColor:[UIColor blackColor]];
    
    UIImageView *blueRectangle = [self makeRectangleViewWithOriginX:20
                                                         andOriginY:100
                                                              width:(self.view.bounds.size.width - 50)
                                                             height:(self.view.bounds.size.height- 130)/3
                                                       andFillColor:[UIColor blueColor]
                                                      andBoardColor:[UIColor blueColor]];
    
    UIImageView *whiteRectangle = [self makeRectangleViewWithOriginX:20
                                                         andOriginY:100 + ((self.view.bounds.size.height- 130)/3)
                                                              width:(self.view.bounds.size.width - 50)
                                                             height:(self.view.bounds.size.height- 130)/3
                                                        andFillColor:[UIColor whiteColor]
                                                       andBoardColor:[UIColor whiteColor]];
    
    UIImageView *redRectangle = [self makeRectangleViewWithOriginX:20
                                                          andOriginY:100 + (2*(self.view.bounds.size.height- 130)/3)
                                                               width:(self.view.bounds.size.width - 50)
                                                              height:(self.view.bounds.size.height- 130)/3
                                                        andFillColor:[UIColor redColor] andBoardColor:[UIColor redColor]];
    
    VCLView *viewBackground = [[VCLView alloc] init];
    
    
    
    [viewBackground addSubview:backgroundView];
    [viewBackground addSubview:blueRectangle];
    [viewBackground addSubview:whiteRectangle];
    [viewBackground addSubview:redRectangle];
    [self.view addSubview:viewBackground];


}

- (void) makeSwitzerlandFlag{
    UIImageView *backgroundView = [self makeRectangleViewWithOriginX:20
                                                          andOriginY:100
                                                               width:(self.view.bounds.size.width - 50)
                                                              height:(self.view.bounds.size.height - 130)
                                                        andFillColor:[UIColor redColor]
                                                       andBoardColor:[UIColor blackColor]];
    
    UIImageView *horizontalRectangle = [self makeRectangleViewWithOriginX:(self.view.center.x) - 20
                                                          andOriginY:100
                                                               width:40
                                                              height:(self.view.bounds.size.height - 130)
                                                        andFillColor:[UIColor whiteColor]
                                                            andBoardColor:[UIColor whiteColor]];
    
    UIImageView *verticalRectangle = [self makeRectangleViewWithOriginX:20
                                                             andOriginY:(self.view.center.y - 50)
                                                                  width:(self.view.bounds.size.width - 50)
                                                                 height:40
                                                           andFillColor:[UIColor whiteColor]
                                                          andBoardColor:[UIColor whiteColor]];
    
    
    VCLView *viewBackground = [[VCLView alloc] init];
    
    [viewBackground addSubview:backgroundView];
    [viewBackground addSubview:horizontalRectangle];
    [viewBackground addSubview:verticalRectangle];
    
    [self.view addSubview:viewBackground];
}

-(void)makeChileFlag{
    UIImageView *backgroundView = [self makeRectangleViewWithOriginX:20
                                                          andOriginY:100
                                                               width:(self.view.bounds.size.width - 50)
                                                              height:(self.view.bounds.size.height - 130)
                                                        andFillColor:[UIColor whiteColor]
                                                       andBoardColor:[UIColor blackColor]];

    UIImageView *redRectangle = [self makeRectangleViewWithOriginX:20
                                                          andOriginY:100
                                                               width:(self.view.bounds.size.width-50)/2
                                                              height:(self.view.bounds.size.height - 130)
                                                        andFillColor:[UIColor redColor]
                                                       andBoardColor:[UIColor redColor]];
    
    UIImageView *blueRectangle = [self
                                  makeRectangleViewWithOriginX:(20 + (self.view.bounds.size.width-50)/2)
                                                        andOriginY:100
                                                             width:(self.view.bounds.size.width-50)/2
                                                            height:(self.view.bounds.size.height - 130)/3
                                                      andFillColor:[UIColor blueColor]
                                                     andBoardColor:[UIColor blueColor]];
    
    
    

    
    
    
    
    VCLView *viewBackground = [[VCLView alloc] init];
    
    [viewBackground addSubview:backgroundView];
    [viewBackground addSubview:redRectangle];
    [viewBackground addSubview:blueRectangle];

    [self.view addSubview:viewBackground];
}

-(IBAction)updateSlider:(id)sender{
    
    self.slider = (UISlider*)sender;
    int value = self.slider.value;
    
    switch (value) {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            [self makeChileFlag];
            break;
        case 4:
            [self makeSwitzerlandFlag];
            break;
        case 5:
            [self makeFranceFlag];
            break;
        case 6:
            [self makeJapanFlag];
            break;
        default:
            break;
    }
}

@end
