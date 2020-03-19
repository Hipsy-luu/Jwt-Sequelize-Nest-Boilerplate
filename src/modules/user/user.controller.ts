import { Controller, Request , Get, Post, Body, UseGuards } from '@nestjs/common';
import { UserService } from './user.service';
import { User } from '../../models/user.entity';
import { AuthGuard } from '@nestjs/passport';
import { ServerMessages } from '../../utils/serverMessages';

@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Get()
  public async getUsers(): Promise<User[]> {
    return this.userService.getAllUsers();
  }

  @Post('create')
  //public async createUser(@Body() body): Promise<User> {
  public async createUser(@Body() body) {
    return this.userService.createUser(body);
  }

  @Post('login')
  //public async createUser(@Body() body): Promise<User> {
  public async loginUser(@Body() body) {
    return this.userService.logIn(body);
  }

  @Post('testuserband')
  testUserWithBand( @Body() body : any){
    return this.userService.testUserWithBand(body.bandId);
  }
  // This route will require successfully passing our default auth strategy (JWT) in order
  // to access the route
  @Get('testheader')
  @UseGuards(AuthGuard())
  testAuthRoute( @Request() req ){
    let user = req.user;

    return ServerMessages.messageResponse(false , "Acceso a ruta protegida correctamente", { user : user }); 
  }
}