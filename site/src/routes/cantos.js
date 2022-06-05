var express = require("express");
var router = express.Router();

var cantoController = require("../controllers/cantoController");

router.get("/", function (req, res) {
    cantoController.testar(req, res);
});

router.get("/listar", function (req, res) {
    cantoController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de cantoController.js
router.post("/cadastrar", function (req, res) {
    cantoController.cadastrar(req, res);
})


router.post("/autenticar", function (req, res) {
    cantoController.entrar(req, res);
});
module.exports = router;