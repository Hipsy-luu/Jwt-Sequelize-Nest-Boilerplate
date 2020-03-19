import { Injectable, Inject } from '@nestjs/common';
// import { USER_REPOSITORY } from '../utils/constants';
import { User } from '../../models/user.entity';
//Normalmente se usa para formatear el objeto que recibimos en el request
import { CreateUserDto } from './dto/createUser.dto';
import { validators } from  '../../utils/validators'
import { Band } from '../../models/band.entity';

@Injectable()
export class UserService {
  constructor(
    //Es una manera de dar de alta el repositorio de la tabla de usuarios
    @Inject('UserRepository') private readonly userRepository: typeof User,
    @Inject('BandRepository') private readonly bandRepository: typeof Band,
  ) {}

  async getAllUsers(): Promise<User[]> {
    return await this.userRepository.findAll<User>();
  }

  async testUserWithBand(bandId : string) {
    return await this.userRepository.findOne<User>({include: [Band] ,where: {username: bandId}});
    //return await this.bandRepository.findOne<Band>({include: [User] ,where: {band_id: bandId}});
  }

  async findOneByUsername(username : string): Promise<User> {
    return await this.userRepository.findOne<User>({where: {username: username}});
  }

  async findOneByEmail(useremail : string): Promise<User> {
    return await this.userRepository.findOne<User>({where: {email: useremail}});
  }

  //async createUser(createUser: CreateUserDto): Promise<User> {
  async createUser(createUser: CreateUserDto) {
      try {
        createUser.rol_id = 400;
        var newUser : User =  await this.userRepository.create<User>(createUser,{});
        return { message : "Usuario creado con exito" , error : false, data : newUser };
      } catch (error) {
        //console.log(error);
        return { message : "A ocurrido un error" , error : true, data : error };
      }
  }

  async logIn( credentials): Promise<User> {
    let user : User;
    user = await this.userRepository.findOne<User>({where: {username: credentials.username}});
    
    return user.validPassword(credentials.npassword)
  }
}