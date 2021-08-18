import "source-map-support/register";
import { Handler } from "aws-lambda";

interface HelloWorldEvent {
  name: string;
}

interface HelloWorldResult {
  message: string;
}

type HelloWorldHandler = Handler<HelloWorldEvent, HelloWorldResult>;

export const handler: HelloWorldHandler = async (event) => {
  console.info(`Hello world event from ${event.name}`);

  return { message: `Hello ${event.name}` };
};
