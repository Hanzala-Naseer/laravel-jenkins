
#!/bin/bash
set -e

echo "Building Laravel application..."

cp .env.example .env
composer install --no-interaction --prefer-dist
php artisan key:generate

echo "Build completed successfully."
