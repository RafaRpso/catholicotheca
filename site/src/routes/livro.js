var express = require("express");
var router = express.Router();

var livroController = require("../controllers/livroController");

router.get("/", function (req, res) {
    livroController.testar(req, res);
});

router.get("/listar", function (req, res) {
    livroController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de livroController.js
router.post("/cadastrar", function (req, res) {
    livroController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    livroController.entrar(req, res);
});

router.post("/conta", function (req, res) {
    livroController.like(req, res);
});

module.exports = router;