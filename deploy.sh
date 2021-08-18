# Build lambda deployment package

cd hello-world-lambda
pnpm build
cp dist/index.js index.js
mkdir -p build
rm -f build/lambda.zip
zip build/lambda.zip index.js
rm index.js
cd ../

# Deploy to AWS

cd infra
terraform apply
cd ../
