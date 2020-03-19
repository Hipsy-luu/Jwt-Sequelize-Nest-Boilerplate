import { Sequelize } from 'sequelize-typescript';

/**
 * SEQUELIZE variable is stored in a file named
 * 'constants' so it can be easily reused anywhere
 * without being subject to human error.
 */
//import { SEQUELIZE } from '../utils/constants';
import { User } from '../models/user.entity';
import { Band } from '../models/band.entity';

export const databaseProviders = [
  {
    provide: 'SequelizeInstance',
    useFactory: async () => {
      const sequelize = new Sequelize({
        dialect: 'mysql',
        host: 'localhost',
        port: 3306,
        username: 'enbibo_sokoenbi',
        password: 'enbibosys2015**',
        database: 'nesttest',
      });

      /**
       * Add Models Here
       * ===============
       * You can add the models to 
       * Sequelize later on.
       */
      sequelize.addModels([User,Band]);

      await sequelize.sync();
      
      return sequelize;
    },
  },
];