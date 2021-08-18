# Mangonel

Starter template for AWS Lambda using Node.js, TypeScript, Terraform

> When you surround an army, leave an outlet free. — Sun Tzu

![Mangonel Illustration](https://upload.wikimedia.org/wikipedia/commons/e/ef/Perriere_from_french_book_of_1250.jpg)

## Setup

Install the following tools before getting started:

- [ ] [Node.js](https://nodejs.org/en/)
- [ ] [pnpm](https://pnpm.io/)
- [ ] [aws-cli](https://aws.amazon.com/cli/)
- [ ] [Terraform](https://www.terraform.io/)

## Initialize

You only have to do this once after cloning.

Initialize Node.js workspace:

```shell
$ cd hello-world-lambda
$ pnpm install
```

Initialize Terraform workspace:

```shell
$ cd infra
$ terraform init
```

## Deploy

Use the shell script to create the lambda package and deploy to AWS:

```shell
$ ./deploy.sh
```

## Test

Invoke the lambda from AWS Management Console.
You can use the below example payload:

```json
{
  "name": "Patrick"
}
```
