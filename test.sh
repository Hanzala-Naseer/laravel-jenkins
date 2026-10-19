
#!/bin/bash
set -e

echo "Running Laravel tests..."

php artisan test

echo "Tests completed successfully."
