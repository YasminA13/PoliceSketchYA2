//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"


@interface LPSViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyeView;
@property (weak, nonatomic) IBOutlet UIImageView *noseView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthView;
@property (strong, nonatomic) NSMutableArray *eyesArray;
@property (strong, nonatomic) NSMutableArray *noseArray;
@property (strong, nonatomic) NSMutableArray *mouthArray;
@property (nonatomic, assign) NSInteger eyeIndex;
@property (nonatomic, assign) NSInteger noseIndex;
@property (nonatomic, assign) NSInteger mouthIndex;


@end

@implementation LPSViewController




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.eyesArray = [[NSMutableArray alloc] init];
    self.noseArray = [[NSMutableArray alloc] init];
    self.mouthArray = [[NSMutableArray alloc] init]; 
    
    for (int eyesArrayCounter = 1; eyesArrayCounter < 6 ; eyesArrayCounter++)
    {
        NSString *eyeImageName = [NSString stringWithFormat:@"eyes_%d.jpg", eyesArrayCounter];
        
        UIImage *eyeImage = [UIImage imageNamed:eyeImageName];
        
        [self.eyesArray addObject:eyeImage];
    }

    for (int noseArrayCounter = 1; noseArrayCounter < 6; noseArrayCounter++)
    {
        NSString *noseImageName = [NSString stringWithFormat:@"nose_%d.jpg", noseArrayCounter];
        
        UIImage *noseImage = [UIImage imageNamed:noseImageName];
        
        [self.noseArray addObject:noseImage];
    }
    
    for (int mouthArrayCounter = 1; mouthArrayCounter < 6; mouthArrayCounter++)
    {
        NSString *mouthImageName = [NSString stringWithFormat:@"mouth_%d.jpg", mouthArrayCounter];
        
        UIImage *mouthImage = [UIImage imageNamed:mouthImageName];
        
        [self.mouthArray addObject:mouthImage];
        
        
    }
    
    self.eyeIndex = 0;
    self.noseIndex = 0;
    self.mouthIndex = 0;
    
}

- (IBAction)eyesForward:(id)sender {
    
    self.eyeIndex++;
    if (self.eyeIndex == 5)
    {
        self.eyeIndex = 0;
    }
    [self.eyeView setImage:[self.eyesArray objectAtIndex:self.eyeIndex]];
    
    }

- (IBAction)eyesBack:(id)sender {
    
    self.eyeIndex--;
    if (self.eyeIndex == 5)
    {
        self.eyeIndex = 0;
    }
    [self.eyeView setImage:[self.eyesArray objectAtIndex:self.eyeIndex]];
}

- (IBAction)noseForward:(id)sender {
    
    self.noseIndex++;
    if (self.noseIndex == 5)
    {
        self.noseIndex = 0;
    }
    [self.noseView setImage:[self.noseArray objectAtIndex:self.noseIndex]];
    
}

- (IBAction)noseBack:(id)sender {
    
    self.noseIndex--;
    if (self.noseIndex == 5)
    {
        self.noseIndex = 0;
    }
    [self.noseView setImage:[self.noseArray objectAtIndex:self.noseIndex]];
    
}

- (IBAction)mouthForward:(id)sender {
    
    self.mouthIndex++;
    if (self.mouthIndex == 5)
    {
        self.mouthIndex = 0;
    }
    [self.mouthView setImage:[self.mouthArray objectAtIndex:self.mouthIndex]];

    
}

- (IBAction)mouthBack:(id)sender {
    
    self.mouthIndex--;
    if (self.mouthIndex == 5)
    {
        self.mouthIndex = 0;
    }
    [self.mouthView setImage:[self.mouthArray objectAtIndex:self.mouthIndex]];
    
}



@end
