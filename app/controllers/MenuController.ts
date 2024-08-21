import {MenuModel} from '../models/MenuModel';
import { Utils } from '../../config/tools/Utils';
import { CustomExceptions } from '../../config/tools/CustomExceptions';

class MenuController{
    static async viewIngredients(req: any, res: any){
        // Se manda a llamar el modelo y se envian las variables del body como lo pide el modelo
        const result = await MenuModel.viewIngredients();

        // Regresa en formato json el resultado del modelo
        res.json(result);
    }
}
export {MenuController};