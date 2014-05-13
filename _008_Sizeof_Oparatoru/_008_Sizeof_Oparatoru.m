#import <Foundation/Foundation.h>
int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
	NSLog(@"sizeof(char) = %4d\n",sizeof(char));
	printf("sizeof(unsigned char       )=%4d\n",sizeof(unsigned char));
	printf("sizeof(short               )=%4d\n",sizeof(short));
	printf("sizeof(unsigned short      )=%4d\n",sizeof(unsigned short));
	printf("sizeof(int                 )=%4d\n",sizeof(int));
	printf("sizeof(unsigned int        )=%4d\n",sizeof(unsigned int));
	printf("sizeof(long                )=%4d\n",sizeof(long));
	printf("sizeof(unsigned long       )=%4d\n",sizeof(unsigned long));
	printf("sizeof(long long           )=%4d\n",sizeof(long long));
	printf("sizeof(unsigned long long  )=%4d\n",sizeof(unsigned long long));
	printf("sizeof(float               )=%4d\n",sizeof(float));
	printf("sizeof(double              )=%4d\n",sizeof(double));
	printf("sizeof(void                )=%4d\n",sizeof(void));
	printf("sizeof(id                  )=%4d\n",sizeof(id));   
	
	[pool drain];
    return 0;
}
