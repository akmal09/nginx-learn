#!/bin/bash
# CGI wrapper script — called by fcgiwrap on every request.
# Compiles hello.cpp and executes the resulting binary.
#
# Deploy path: /var/www/cgi-bin/cgi-wrapper.sh
# Must be executable: chmod +x cgi-wrapper.sh

SRC="/var/www/cgi-bin/hello.cpp"
BIN="/tmp/hello_cgi"

# Compile step
if ! g++ "$SRC" -o "$BIN" 2>/dev/null; then
    printf "Content-Type: text/plain\r\n"
    printf "\r\n"
    printf "Error: compilation failed\n"
    exit 1
fi

# Run the compiled binary — its stdout becomes the HTTP response
"$BIN"
