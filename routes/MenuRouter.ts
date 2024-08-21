import { Router } from "express";
import { MenuController } from "../app/controllers/MenuController";
import { Middleware } from "../config/server/Middleware";

const router = Router();

//Definicion de rutas, tipo de peticion, necesidad de autenticacion asi como origen y metodo
router.get('/viewIngredients', Middleware(1), MenuController.viewIngredients);

export default router;