const express = require('express');
const router = express.Router();

const alunosController = require("../controllers/alunos.controller");

router.post("/aluno",alunosController.cadastrarAluno);
router.get("/alunos",alunosController.listarAlunos);
router.delete("/aluno/:aluno_id",alunosController.excluirAluno);
router.put("/alunos",alunosController.atualizarAluno);
router.get("/alunos/:aluno_id",alunosController.buscarPorId);
router.get("/assinaturas/:plano_id",alunosController.totaldeAssinatura);
router.get("/total/:gênero_F_M",alunosController.totalGenero);
router.get("/media/gênero_F_M",alunosController.mediaidadeporgenero);


module.exports = router;
