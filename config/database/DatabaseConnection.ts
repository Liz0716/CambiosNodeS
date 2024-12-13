import mysql, { Connection } from 'mysql2/promise';
import { HOST_MYSQL, USER_MYSQL, PASSWORD_MYSQL, DATABASE_MYSQL,PORT_MYSQL } from '../../global/Environment'

const dbConfig = {
  host: HOST_MYSQL,
  user: USER_MYSQL,
  password: PASSWORD_MYSQL,
  database: DATABASE_MYSQL,
  port: PORT_MYSQL,
};

const connect = async (): Promise<Connection> => {
  try {
    const connection = await mysql.createConnection(dbConfig);
    console.log('Conexión exitosa a la base de datos');
    return connection;
  } catch (error) {
    console.error('Error al conectar a la base de datos:', error);
    throw new Error('Database connection failed');
  }
};

export { connect };
