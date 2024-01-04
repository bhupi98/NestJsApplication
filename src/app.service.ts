import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!';
  }

  getHi(): string {
    return 'Hello Bhupender your application is up and running';
  }
}
