#include <stdio.h>

int main() {
	int i;
	int j;	
	int n;
	int total;
	int howMany;

	printf("Enter how many: ");
	scanf("%d", &howMany);
	printf("HOW MANY: %d\n", howMany);
	n = 1;

first_loop_condition:
	if (n > howMany) goto epilogue;
first_loop_top_body:
	total = 0;
	j = 1;
	goto second_loop_condition;
first_loop_bottom_body:
	printf("%d\n", total);
first_loop_step:
	n = n + 1;
	goto first_loop_condition;


second_loop_condition:
	if (j > n) goto first_loop_bottom_body;
second_loop_body:
	i = 1;
	goto third_loop_condition;
second_loop_step:
	j = j + 1;
	goto second_loop_condition;


third_loop_condition:
	if (i > j) goto second_loop_step;
third_loop_body:
	total = total + i;
third_loop_step:
	i = i + 1;
	goto third_loop_condition;

epilogue:
	return 0;
}