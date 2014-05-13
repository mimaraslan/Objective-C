#import <Foundation/Foundation.h>
int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	NSArray *ogrenci;
	ogrenci = [NSArray arrayWithObjects: @"Süleyman Düzgün", 
			   @"Murat Arı", @"Ebubekir Yılmaz", 
			   @"Ferid Mövsümov", @"Ramin Orucov", 
			   @"Burakhan Sinal", @"İmdat Candan", @"Levent Ergüder", nil];
	NSLog (@"\nÖğrenci NSArray dizisinin eleman sayısı : %i", [ogrenci count]);		
	
	int elemanSayisi = [ogrenci count];
	
	for (int i = 0; i < elemanSayisi; i++){
        NSLog (@"%i. eleman : %@", i, [ogrenci objectAtIndex: i]);
	}
	
	 printf( "\n----\n" );	
	
	NSMutableArray *sehir;
	sehir = [NSMutableArray arrayWithObjects: @"İstanbul", 
			 @"Bakü", @"Bişkek", @"Taşkent", @"Astana", @"Aşkabat", nil];	
	NSLog (@"\nÖğrenci NSMutableArray dizisinin eleman sayısı : %i", [sehir count]);	
	
	for (int i = 0; i < [sehir count]; i++){
        NSLog (@"%i. eleman : %@", i, [sehir objectAtIndex: i]);
	}	
	
	// Hafızayı serbest bırakıyoruz.
    [pool drain];    [ogrenci release];	 [sehir release];	
    return 0;
}
