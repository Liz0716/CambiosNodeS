import { DatabaseMethods } from "../../config/database/DatabaseMethods";
import { Utils } from "../../config/tools/Utils";
import { CustomExceptions } from "../../config/tools/CustomExceptions";

class UserService {
  static async viewUsers() {
    const res = await DatabaseMethods.query({
      query:
        "SELECT u.idusers, u.name, u.phone, u.rol FROM users AS u WHERE u.rol NOT IN (4)",
      params: [],
    });
    return res;
  }
  static async viewUser(idusers: string) {

    const res = await DatabaseMethods.query({
      query:
        "SELECT u.idusers, u.name, u.phone, u.rol FROM users AS u WHERE u.idusers=?",
      params: [idusers],
    });
    // Checa que no haya error y si si hay, manda el error
    if (res.error) return res;

    // Guardamos lo que viene en la key msg en una variable
    const msj = res.msg;

    // Si hay error puede que nos devuelva solamente un string, pero nosotros necesitamos un objeto
    // Entonces evaluamos qu no sea un string
    if (typeof msj === "string") {
      throw new CustomExceptions("004");
    }
    // Evaluamos si no viene null
    if (!msj) throw new CustomExceptions("004");
    return { error: false, msg: msj };
  }
  static async updateUser(idusers: string,name:string,password: string,phone: string,rol: number){
    const password_with_hash = await Utils.hash(password);
    const queries = [
      {
          query: "UPDATE `users` SET name=?, password=?,phone=?,rol=? WHERE idusers=?",
          params: [name, password_with_hash, phone,rol, idusers]
      },
  ];
  //console.log(queries);
  
  return await DatabaseMethods.save_transaction(queries);
  }
  static async deleteUser(idusers: string){
    const queries = [
      {
          query: "UPDATE `users` SET rol=4 WHERE idusers=?",
          params: [idusers]
      },
  ];
  //console.log(queries);
  
  return await DatabaseMethods.save_transaction(queries);
  }
}
export { UserService };
