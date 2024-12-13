import { DatabaseMethods } from '../../config/database/DatabaseMethods';
import { CustomExceptions } from '../../config/tools/CustomExceptions';
import { Utils } from '../../config/tools/Utils';

class AuthService {
    static async signIn(name: string, password: string) {
        try {
          console.log(name, password)
          // Log para la consulta SQL y los parámetros
          console.log('Ejecutando consulta SQL:');
          console.log('Query: SELECT * FROM users WHERE name = ? and rol NOT IN (4);');
          console.log('Params:', [name]);
    
          // Petición a la base de datos
          const res = await DatabaseMethods.query_one({
            query: "SELECT * FROM users WHERE name = ? and rol NOT IN (4);",
            params: [name]
          });
    
          // Log para ver la respuesta de la base de datos
          console.log('Resultado de la consulta:', res);
    
          // Checa si hay error en la respuesta
          if (res.error) {
            console.error('Error al realizar la consulta:', res.msg);
            return res;
          }
    
          const msj = res.msg;
    
          // Verifica si el resultado es un objeto
          if (typeof msj === 'string') {
            throw new CustomExceptions('004');
          }
    
          // Verifica si msj es null o indefinido
          if (!msj) {
            throw new CustomExceptions('004');
          }
    
          // Verifica la contraseña
          if (!(await Utils.verify(password, msj.password))) {
            throw new CustomExceptions('005');
          }
    
          // Log de éxito antes de retornar la respuesta
          console.log('Usuario autenticado con éxito:', msj);
    
          return { error: false, msg: msj };
        } catch (err) {
          console.error('Error en el proceso de autenticación:', err);
          throw err;  // Re-lanzamos el error para manejarlo en el controlador
        }
    }

    static async signUp(name: string, password: string, id: string, phone: string, rol: number) {
        const queries = [
            {
                query: "INSERT INTO `users`(`idusers`, `name`, `password`, `phone`, `rol`) VALUES (?,?,?,?,?)",
                params: [id, name, password, phone,rol]
            },
        ];
        return await DatabaseMethods.save_transaction(queries);
    }
}

export { AuthService };
