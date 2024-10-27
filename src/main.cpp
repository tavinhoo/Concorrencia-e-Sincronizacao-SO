#include <iostream>
#include <string>
#include <thread>
#include <windows.h>

/*
	+--------------+
	|    Autores   |  
	+--------------+
	@Kawan 
	@Luiz  
*/

void greeting()
{
	Sleep(5000);
	std::cout << "Hello" << "\n";
}

void sum(int n1, int n2)
{
	Sleep(3000);
	int sum = n1 + n2;
	std::cout << sum << "\n";
}

void one(int p) {
	p = 1;
	std::cout << p << "\n";
}

void two(int p) {
	p = 2;
	std::cout << p << "\n";
}

int main(int argc, char **argv)
{

	int x = 2;

	std::thread first(one, x);
	std::thread first2(two, x);

	first.detach();
	first2.detach();
 

	// std::thread first(greeting);
	// std::thread second(sum, 190, 10);

	// first.join();

	// std::cout << "OOOOOOOOOOOOOOOOOOOOOOOOOOOO" << "\n";

	// second.join();
	return 0;
}