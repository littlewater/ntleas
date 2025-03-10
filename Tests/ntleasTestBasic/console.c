
#include <stdio.h>

int main(int argc, char const* argv[])
{
	fprintf(stderr, "A program just print one line.\n");

	// 添加暂停
	printf("Press any key to continue...\n");
	return getchar(); // 等待用户输入
}
