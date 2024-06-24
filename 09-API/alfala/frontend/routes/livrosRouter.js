import {
  getLivros,
  getLivro,
  postLivro,
  patchLivro,
  deleteLivro,
} from "../controller/livroController.js";
import { Router } from "express";

const router = Router();

// GET - Retornar livros
router.get("/", getLivros);
router.get("/:id", getLivro);

// POST - Criar um livro
router.post("/", postLivro);

// PATCH - Atualizar um livro
router.patch("/:id", patchLivro);

// DELETE  - Apagar um livro
router.delete("/:id", deleteLivro);

export default router;
