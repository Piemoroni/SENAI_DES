const express = require("express");
const router = express.Router();

const EscolaControllers = require("../controllers/escola.controller");

router.get("/Professores", EscolaControllers.listarProfessores);
router.get("/Professor/:id", EscolaControllers.buscarProfessor);
router.post("/Professor", EscolaControllers.cadastrarProfessor);
router.delete("/Professores/:id", EscolaControllers.apagarProfessor);
router.put("/Profs/:id", EscolaControllers.alterarProfessor);
router.patch("/Profes/:id", EscolaControllers.atualizarProfessor);

router.get("/Disciplinas", EscolaControllers.listarDisciplinas);
router.post("/Disciplina", EscolaControllers.cadastrarDisciplina);
router.put("/Disciplina/:id", EscolaControllers.alterarDisciplina);
router.get("/Disci/:id", EscolaControllers.buscarDisciplina);
router.patch("/Disciplinas/:id", EscolaControllers.atualizarDisciplina);
router.delete("/Di/:id", EscolaControllers.apagarDisciplina);

router.get("/Turmas", EscolaControllers.listarTurmas);
router.get("/Turma/:id", EscolaControllers.buscarTurma);
router.post("/Turma", EscolaControllers.cadastrarTurma);
router.patch("/Turmas/:id", EscolaControllers.atualizarTurma);
router.put("/Tur/:id", EscolaControllers.alterarTurma);
router.delete("/Turma/:id", EscolaControllers.apagarTurma);

router.get("/Possui", EscolaControllers.listarPossui);
router.post("/Possui", EscolaControllers.cadastrarPossui);
router.delete("/Possui/:id", EscolaControllers.apagarPossui);
router.get("/Posse/:id", EscolaControllers.buscarPossui);
router.patch("/Po/:id", EscolaControllers.atualizarPossui);
router.put("/Possuem/:id", EscolaControllers.alterarPossui);

module.exports = router;