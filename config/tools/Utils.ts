import { v4 as uuidv4 } from 'uuid';
import bcrypt from "bcrypt";

class Utils {
    //Creacion de id mediante uuid
    static UUID() {
        return uuidv4();
    }
    //hshear contraseñas
    static async hash(password:string) {
        return await bcrypt.hash(password, 8);
    }
    //comparar la contraseña ingresada y la hasheada
    static async verify(password:string, hash:string) {
        const match = await bcrypt.compare(password, hash).then(function(result) {
            return result;
        });
        return match;
    }
    //verificar si los parametros vienen vacios
    static hasEmptyParams(params: (string | null | undefined)[]): boolean {
        return params.some(param => param === null || param === undefined || param === '');
    }

}

export { Utils };