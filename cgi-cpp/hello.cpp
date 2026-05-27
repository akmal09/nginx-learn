#include <iostream>

int main() {
    // CGI requires HTTP headers before the body, separated by a blank line
    std::cout << "Content-Type: text/plain\r\n";
    std::cout << "\r\n";
    std::cout << "Hello World\n";
    return 0;
}
