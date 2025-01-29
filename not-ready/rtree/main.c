#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <stdint.h>
#include "rtree.h"
#include "../mips_trace/trace_macros.h"
uint32_t
get_ip_address(char *ipaddr) 
{
	struct in_addr ip;
	if (inet_aton(ipaddr,&ip) == 0 ){
		printf("Invalid IP address %s \n",ipaddr);
		return 0;
	}
	return ip.s_addr;
}
#define BASE "192.168.1."
#define SUBNET "255.255.255.0"
uint32_t
get_random_ip(char rip[])
{
	uint8_t nibble;
	nibble=random()%255;
	sprintf(rip,"%s%d",BASE,nibble);
	return 0;
}
	

int
main(int argc,char **argv)
{
	int i;
	int count=255;
	char buf[128]={0};
        uintptr_t buf_input[count];
        uintptr_t buf_output[count];
	int test_fail = 0;
	uint32_t ipa,mask;
	uint32_t ipa_list[count];
	radix_tree_t *rootnode;
    	srand((unsigned int )time(NULL));
	
	
	rootnode = radix_tree_create(0);
	if ( rootnode == NULL) {
		printf("Could not create root Node. Bailing \n");
		exit(0);
	}
	mask = get_ip_address(SUBNET);
	for(i=0;i<count;i++) {
		memset(buf,0x0,sizeof(buf));
		get_random_ip(buf);
		ipa=get_ip_address(buf);
	        ipa_list[i] =  ipa;
	        buf_input[i] = (uintptr_t) buf;
		//printf("IP Address = 0x%04x 0x%04x\n",ipa,mask);
		START_TRACE
		radix32tree_insert(rootnode,ipa,mask,(uintptr_t)buf);
		STOP_TRACE
	}

	for(i=0;i<count;i++)
	{
		buf_output[i] = radix32tree_find(rootnode, ipa_list[i]);

	}

	for(i=0;i<count;i++)
	{
		if(buf_output[i] != buf_input[i])
		{
			test_fail = 1;
			printf("%d \t Fail:\t Input_buf = %ld /t Output_buf = %ld \n",i,buf_input[i],buf_output[i]);
		}
			
	}
	if(!test_fail)
		printf("Test Passed \n");
}
	

