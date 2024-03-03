#include <stddef.h>
#include "ll_cycle.h"

int ll_has_cycle(node *head) {
    /* your code here */
    if(!head) {
	return 0;
    }
    node *tortoise = head;
    node *hare = head;
    while(hare) {
	hare = hare->next ? 
		hare->next->next : NULL;
	tortoise = tortoise->next;
	if(tortoise == hare) {
		return 1;
	}
    }
    return 0;
}
