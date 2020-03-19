import { Injectable, UnauthorizedException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { LoginUserDto } from '../user/dto/loginUser.dto';
import { UserService } from '../user/user.service';
import { JwtPayload } from './interfaces/jwtPayload.interface';
import { User } from '../../models/user.entity';

import { ServerMessages } from './../../utils/serverMessages';

@Injectable()
export class AuthService {

    constructor(private usersService: UserService, private jwtService: JwtService){}

    async validateUserByPassword(loginAttempt: LoginUserDto) {
        // This will be used for the initial login
        let userToAttempt : User = await this.usersService.findOneByUsername(loginAttempt.username);
        
        return new Promise(async (resolve,reject) => {
            // Check the supplied password against the hash stored for this email address
            let checPass = await userToAttempt.validPassword(loginAttempt.npassword);
            if(checPass){
                // If there is a successful match, generate a JWT for the user
                let response : any;
                response = this.createJwtPayload(userToAttempt.email)
                response.user = userToAttempt;

                resolve( ServerMessages.messageResponse(false , "Inicio Exitoso", response ) );
            } else {
                //new UnauthorizedException()
                resolve( ServerMessages.messageResponse(true , "Inicio Fallido", new UnauthorizedException() ) ) ;
            }
        });

    }

    async validateUserByJwt(payload: JwtPayload) { 
        // This will be used when the user has already logged in and has a JWT
        let user : any;
        user = await this.usersService.findOneByEmail(payload.email);

        if(user){
            // If there is a successful match, generate a JWT for the user
            //let token = this.createJwtPayload(user.email);
            //return  ServerMessages.messageResponse(false , "Inicio Exitoso", response ) ;
            return user;
        } else {
            throw new UnauthorizedException();
        }

    }

    createJwtPayload(email){

        let data: JwtPayload = {
            email: email
        };

        let jwt = this.jwtService.sign(data);

        return {
            expiresIn: 3600,
            token: jwt            
        }

    }

}