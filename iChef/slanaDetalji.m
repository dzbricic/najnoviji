//
//  slanaDetalji.m
//  iChef
//
//  Created by merimaH on 8/26/14.
//  Copyright (c) 2014 dzm. All rights reserved.
//

#import "slanaDetalji.h"

@interface slanaDetalji ()

@end

@implementation slanaDetalji

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
    self.nazivJela.text = self.nazivRecepta;
    
    //odabire sliku na osnovu naziva recepta
    NSMutableString *naziv = [[NSMutableString  alloc] init];
    [naziv appendString:self.nazivRecepta];
    [naziv appendString:@".jpg"];
    self.slikaJela.image = [UIImage imageNamed:naziv];
    
    //treba dodati iščitavanje recepta iz baze na osnovu imena
    if(self.nazivRecepta == @"Pita zeljanica")
        [self.recept setText:@"Za nadjev jaja dobro razmutite, dodajte mlijeko, kiselo vrhnje, ocijeđeni propasirani sir, kajmak, blanširan, ocijeđen i nasjeckan špinat, sol i papar. Sve dobro promiješajte.Lim (vel. 35×22 cm) premažite dijelom maslaca, stavite jedan list tijesta, poškropite ga dijelom rastopljenog maslaca, složite sljedeći list tijesta i premažite dijelom pripremljenog nadjeva.Postupak ponavljajte sve dok ne potrošite tijesto i nadjev.Na kraju stavite preostala dva lista tijesta, poškropite preostalim maslacem, pa stavite peći u pećnicu zagrijanu na 200°C oko 40 minuta."];
    
    else if(self.nazivRecepta == @"Sirnica")
        [self.recept setText:@"Napraviti tijesto od brasna,mlake vode i soli.Saviti da odstoji pa razvuci i pouljiti i ostaviti da odstoji.(Sira,jaja,pavlaku umutiti i posoliti.)Razvuci jufke i po krajevima stavljati tirit.Jufku motati i redati u tepsiju.Peci pitu i pokajmaciti je kajmakom koji smo razmutili s malo vode."];
    
    else if(self.nazivRecepta == @"Sarma od lipova lisca")
        [self.recept setText:@"Uzeti 300g goveđeg mesa i 100g telećeg mesa. Sve to samljeti. U šerpi ispržiti sitno sječen luk, pa pripremiti s mesom nadev kao za svaku sarmu. Meso se može ispržiti s lukom, a može se ostaviti i presno. Skinuti šerpu sa štednjaka, dodati bibera, soli, 1 celo jaje i 1 šolju za crnu kafu obarena pirinča. Ako je meso prženo ostaviti ga da se ohladi. Mladom lipovom lišću otkinuti peteljke, popariti ga vrelom vodom, a zatim izvaditi na dasku da se cedi. Sastavljati po dva lista zajedno, pošto su oni mali, a naličja lista okrenuti da se na njih kašičicom stavlja meso, pa savijati ne mnogo velike sarme. Sarme složiti u jednu šerpu i naliti ih vodom ili supom od kostiju. Šerpu poklopiti i metnuti na kraj štednjaka ( e sad pošto je ovde reč o šporetu na drva u modernoj varijanti treba jelo kuvati na najnižoj temperaturi ) da vri jelo 3/4 sata, a zatim napraviti zapršku. U jednu šerpu staviti kašiku masti i dve omanje kašike brašna. Kad brašno porumeni, dodati malo aleve paprike, a može biti i bez paprike. Zapršku dobro izmešati da nema grudvica, pa je sipati preko sarme. Opet šerpu staviti na štednjak da se kuva još pola sata. Zatim je izmaći na kraj štednjaka, kako se sarma ne bi slučajno raspala. Kiselo mleko za ovu sarmu služiti posebno."];
    
    else if(self.nazivRecepta == @"Mesna sarma od salate locike")
        [self.recept setText:@"Listove loćike operite, kratko blanširajte, ohladite u hladnoj vodi i ocijedite.U zdjeli izmiješajte meso, sitno nasjeckan luk, rižu, rajčice kojima ste odstranili sjemenke i kožicu te ih narezali na kockice, nasjeckan peršin, Vegetu, papar i kim.Od listova loćike i mesa oblikujte sarmice. Sarmice složite u posudu i prelijte uljem i vodom. Pokriveno kuhajte oko 30 minuta."];
    
    else if(self.nazivRecepta == @"Sarma sa kiselim kupusom, junecim mesom i rizom")
        [self.recept setText:@"Nasjeckamo luk i stavimo ga da se pirja, a za to vrijeme nasjeckamo cesnjak. Cesnjak kratko poprzimo s lukom.Zacinimo meso solju i paprom i dodamo opranu rizu. Dodamo mljevenu crvenu papriku, jaje i prstohvat persina. Izmijesamo smjesu da se zacini ujedine.Dodamo poprzeni luk i cesnjak. Ponovo izmjesamo nadjev.Odvojimo listove kupusa koje napunimo nadjevom. Ukoliko je kupus jako kiseo, listove isperemo pod vodom. Sarme zamotamo, a krajeve utisnemo da se ne raspadnu.Ostatak kupusa narezemo na tanke rezance koji ce nam posluziti kao podloga, da se sarma ne primi za dno.Sarme polozimo  u posudu za kuhanje, a ostatak kupusa stavimo preko njih. Dodamo crvenu papriku te podlijemo vodom da prekrije sarme. Poklopimo posudu i kada sarma zavrije smanjimo vatru te kuhamo jos cca. 2 - 2,5 sata.Kada je sarma gotova, radimo zaprsku. U posebnoj tavici na vrelo ulje dodamo brasno koje stalno mijesamo da ne zagori, zatim dodamo crvenu papriku i kratko poprzimo. Dodamo hladne vode (i malo pirea od rajcice po zelji) te kuhamo jos par trenutaka, zatim zapršku prelijemo preko sarme i čekamo da sve zajedno prokuha još 10-15 minuta. Jelo je spremno za serviranje."];
    
    else if(self.nazivRecepta == @"Lagana sarma")
        [self.recept setText:@"Glavici kupusa izdubite korijen, odvojite listove, uronite ih u kipuću vodu i blanširajte nekoliko minuta.Na maslinovu ulju propirjajte sitno nasjeckane šampinjone dok sva tekućina ne ispari.Fant za punjenu papriku i sarmu prelijte vinom i ostavite stajati 10 minuta.U zdjelu stavite pureća prsa narezana na sitne kockice, rajčicu kojoj ste ogulili kožicu, uklonili sjemenke i također je narezali na kocke, rižu, ohlađene gljive i Fant za punjenu papriku i sarmu pa sve dobro promiješajte.Listovima kupusa istanjite zadebljale dijelove, na svaki stavite 1 žlicu nadjeva pa savijajte sarme od zadebljalog dijela prema kraju lista. Krajeve dobro uvijte da se sarme pri kuhanju ne odmotaju.Ostatak kupusa narežite na rezance i stavite na dno posude, na njih kružno poslažite sarme, a zatim ih zalijte vodom koju ste prije toga prokuhali s Vegetom i koncentratom rajčice. Kuhajte 15-20 minuta ili dok riža ne omekša."];
    
    else
        [self.recept setText:@"Meso isjeći na šnicle debljine prst. Ako ima ikakvih žilica ili masnog skinite. To samo ako nemate mesara koji da da se maltretira kao što ja imam.E sad šnicle isjeći na prutiće, pa na kockice. Posoliti, ili povegetiti, posuti uljem, pobiberiti i ostaviti da malo stane. Ako ovo radite sa junetinom ili govedinom, onda to uradite dan ranije, da meso malo omekša. Sa teletinom nema potrebe, bude kao da jedete kajmak ili puter. Ko misli da je burek suh, vara se, treba ga pomastiti prije pečenja, a i napraviti pomastu poslije. Ali ko voli malo masnije meso, neka slobodno pravi od toga. Ja ne jedem masno i žilice, tako da koristim isključivo ovakvo čisto u svemu, ne samo u bureku"];
        
    self.navigationController.navigationBarHidden = false;
    
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