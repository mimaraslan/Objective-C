#import <Foundation/Foundation.h>

// Interface(ara yüz) bu kod bölümünden itibaren başlıyor.
@interface BankaHesabi: NSObject
{
	double hesapBakiyesi;
	long hesapNo;
}
-(void) yenHesapNo: (long) h yeniBakiye: (double) b;
-(double) getHesapBakiyesi;
-(long) getHesapNo;
-(void) setHesapBakiyesi: (double) b;
-(void) setHesapNo: (long) h;
-(void) hesapBilgileriniGoster;
@end



// Implementation(uygulama) bu kod bölümünden itibaren başlıyor.
@implementation BankaHesabi

-(void) yenHesapNo: (long) h yeniBakiye: (double) b;{
	hesapBakiyesi = b;
	hesapNo = h;
}

-(void) setHesapBakiyesi: (double) b{
	hesapBakiyesi = b;
}

-(double) getHesapBakiyesi{
	return hesapBakiyesi;
}

-(void) setHesapNo: (long) h{
	hesapNo = h;
}

-(long) getHesapNo{
	return hesapNo;
}


-(void) hesapBilgileriniGoster{
	NSLog (@"\v%i numaralı hesabınızda %f nakit bulunmaktadır.", 
		   hesapNo, hesapBakiyesi);
}
@end

// Program bu kod bölümünden itibaren başlıyor.
int main (int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	BankaHesabi *hesap1;
	hesap1 = [BankaHesabi alloc];
	hesap1 = [hesap1 init];
	
	[hesap1 setHesapBakiyesi: 1453.123456789];
	[hesap1 setHesapNo: 13261481];
	
	[hesap1 hesapBilgileriniGoster];
	
	[hesap1 yenHesapNo: 571632 yeniBakiye: 1299.63];
	
	NSLog(@"\vHESAP NUMARASI = %i, BAKİYESİ = %f", 
					[hesap1 getHesapNo], [hesap1 getHesapBakiyesi]);
    [pool drain];
    return 0;
}
