import {
  getLivros,
  getLivro,
  postLivro,
  patchLivro,
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
router.delete("/", (req, res) => {
  res.send("Estou na rota delete");
});

export default router;
