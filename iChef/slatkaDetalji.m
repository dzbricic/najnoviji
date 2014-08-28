//
//  slatkaDetaljiViewController.m
//  iChef
//
//  Created by merimaH on 8/27/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "slatkaDetalji.h"

@interface slatkaDetalji ()

@end

@implementation slatkaDetalji

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
    
    //upisuje naziv recepta na osnovu poslanog podatka
    self.slatkaNaziv.text = self.nazivRecepta;
    
    //odabire sliku na osnovu naziva recepta
    NSMutableString *naziv = [[NSMutableString  alloc] init];
    [naziv appendString:self.nazivRecepta];
    [naziv appendString:@".jpg"];
    self.slatkaSlika.image = [UIImage imageNamed:naziv];
    
    if(self.nazivRecepta == @"Palacinci s makom punjeni vocem")
        [self.slatkaRecept setText:@"Mikserom mutiti se sastojke kao za palacinke..S tom razlikom sto dodate kasiku maka.Dobro umutiti...Oni ce bitideblji zbog samog maka..Prziti palacinke u pouljenoj tavi ili picomatu...Ja palacinke pravim u picomatu...Ovamo banane kratko proprziti u tavi sa vrhnjem za kuhanje..Ostaviti da se ohladi...Grozdje ocistiti..Isprziti palacinke ...Sve dok smjesu ne istrosite.."];
    
    //treba dodati iščitavanje recepta iz baze na osnovu imena
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)posaljiNaziv:(NSString*)nazivRecepta;
{
    self.nazivRecepta = nazivRecepta;
}

@end