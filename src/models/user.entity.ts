//import { Sequelize, DataType } from 'sequelize';
import * as bcrypt from 'bcrypt';

import {
  Table,
  Column,
  Model,
  DataType,
  CreatedAt,
  UpdatedAt,
  DeletedAt,
  BeforeUpdate,
  BeforeCreate,
  BelongsTo,
  HasOne
} from 'sequelize-typescript';
import { Band } from './band.entity';

@Table({
  tableName: 'user',
})
export class User extends Model<User> {
  @Column({
    type: DataType.INTEGER({length : 11}),
    allowNull: false,
    primaryKey: true,
    autoIncrement: true,
  })
  public user_id : number;

  @HasOne(() => Band, 'user_id')
  band: Band;


  @Column({
    type: DataType.STRING(45),
    allowNull: false,
    unique: "username_UNIQUE"
  })
  username: string;

  // INICIO - Campos que contienen una clave encriptada con laravel o la apy LEGACY
  @Column({
    type: DataType.STRING(200),
    allowNull: true,
    defaultValue: null,
  })
  password?: string;

  @Column({
    type: DataType.STRING(200),
    allowNull: true,
    defaultValue: null,
  })
  password_google?: string;

  @Column({
    type: DataType.STRING(200),
    allowNull: true,
    defaultValue: null,
  })
  password_facebook?: string;
  // FIN
  // INICIO - Campos que contienen una clave encriptada con laravel o la apy LEGACY
  @Column({
    type: DataType.STRING(200),
    allowNull: true,
    defaultValue: null,
  })
  npassword?: string;

  @Column({
    type: DataType.STRING(200),
    allowNull: true,
    defaultValue: null,
  })
  npassword_google?: string;

  @Column({
    type: DataType.STRING(200),
    allowNull: true,
    defaultValue: null,
  })
  npassword_facebook?: string;
  // FIN
  @Column({
    type: DataType.STRING(150),
    allowNull: false,
    unique: "email_UNIQUE"
  })
  email: string;

  @Column({
    type: DataType.INTEGER({length : 11}),
    allowNull: false,
  })
  rol_id: number;

  @Column({
    type: DataType.INTEGER({length : 4}),
    allowNull: false,
    defaultValue: "0",
  })
  step: number;

  @Column({
    type: DataType.STRING(150),
    allowNull: false,
    defaultValue: " ",
  })
  name: string;

  @Column({
    type: DataType.STRING(45),
    allowNull: false,
    defaultValue: " ",
  })
  telephone: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  facebook_id?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  facebook_photo?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  google_id?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  google_photo?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  photo_selected?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  user_hometown?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  instagram_basic?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  age_range?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  birthday?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  gender?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  link?: string;

  @Column({
    type: DataType.STRING(150),
    allowNull: true,
    defaultValue: null,
  })
  location?: string;

  @Column({
    type: DataType.DATE,
    allowNull: true,
  })
  valid_until: Date;

  @Column({
    type: DataType.STRING(100),
    allowNull: true,
    defaultValue: null,
  })
  remember_token?: string;

  @Column({
    type: DataType.STRING(100),
    allowNull: true,
    defaultValue: null,
  })
  conekta_token?: string;

  /*@CreatedAt({
    type: DataType.DATE,
    allowNull: false,
    defaultValue: "0000-00-00 00:00:00",
    primaryKey: false,
    autoIncrement: false,
    comment: null,
  })*/
  @CreatedAt created_at: Date;

  /*@Column({
    type: DataType.DATE,
    allowNull: false,
    defaultValue: "0000-00-00 00:00:00",
    primaryKey: false,
    autoIncrement: false,
    comment: null,
  })*/
  @UpdatedAt updated_at: Date;
  
  /*@BeforeUpdate
  @BeforeCreate
  static makeUpperCase(instance: Person) {
    // this will be called when an instance is created or updated
    instance.name = instance.name.toLocaleUpperCase();
  }*/
  
  /*@BeforeCreate
  static generateHash(password) {
    let user = this;
    user.name;
    return bcrypt.hash(password, bcrypt.genSaltSync(8));
  };*/
  @BeforeCreate
  public static async hashPassword( user : User ) {
    // Generate a salt and use it to hash the user's password
    user.npassword = await bcrypt.hash(user.npassword, bcrypt.genSaltSync(10));
    //a partir de aqui se hacen las acciones posteriores
  }

  public validPassword(password) {
    return bcrypt.compare(password, this.npassword);
  }
}