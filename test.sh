#!/bin/bash

echo "======================================"
echo "        RUNNING APPLICATION TEST"
echo "======================================"

# Check whether app.sh exists

if [ -f app.sh ]; then
    echo "PASS: app.sh exists"
else
    echo "FAIL: app.sh does not exist"
    exit 1
fi

# Check whether app.sh is executable

if [ -x app.sh ]; then
    echo "PASS: app.sh is executable"
else
    echo "FAIL: app.sh is not executable"
    exit 1
fi

# Run application

echo ""
echo "Testing application..."

./app.sh > test-output.txt

# Check application output

if grep -q "Application started successfully" test-output.txt; then
    echo "PASS: Application started correctly"
else
    echo "FAIL: Application did not start correctly"
    exit 1
fi

echo ""
echo "======================================"
echo "       ALL TESTS PASSED"
echo "======================================"
