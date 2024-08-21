import { Router } from "express";
import { UserController } from "../app/controllers/UserController";
import { Middleware } from "../config/server/Middleware";

const router = Router();

//Definicion de rutas, tipo de peticion, necesidad de autenticacion asi como origen y metodo
router.post('/createUser',Middleware(1), UserController.createUser);
router.get('/viewUser',Middleware(1), UserController.viewUser);
router.get('/viewUsers',Middleware(1), UserController.viewUsers);
router.put('/updateUser',Middleware(1), UserController.updateUser);
router.delete('/deleteUser',Middleware(1), UserController.deleteUser);


export default router;