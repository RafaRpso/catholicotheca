var cantoModel = require("../models/cantoModel");

function testar(req, res) {
    console.log("ENTRAMOS NA Canto controller");
    res.json("ESTAMOS FUNCIONANDO!");
}
function consegueId(req,res){ 
    return  a  = req.body.idUsuarioServer;
}
function listar(req, res) {


cantoModel.listar()
        .then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}



function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html

    var titulo = req.body.tituloServer;
    var autor = req.body.autorServer;
    var anoCriacao = req.body.anoCriacaoServer;
    var letraLatim = req.body.letraLatimServer;
    var letraPortugues = req.body.letraPortuguesServer; 
    var capa = req.body.capaServer;
    var partitura = req.body.partituraServer;
    var idUsuario = req.body.idUsuarioServer;

    // Faça as validações dos valores
    if (titulo == undefined) {
        res.status(400).send("Seu nome está undefined!");
    } else if (anoCriacao == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (letraLatim == undefined) {
        res.status(400).send("Sua senha está undefined!");
    } else {
        
        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        //cadastrar(titulo,autor,anoCriacao,letraLatim,letraPortugues,capa,partitura)
        cantoModel.cadastrar(titulo,autor,anoCriacao,letraLatim,letraPortugues,partitura,capa,idUsuario)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    cadastrar,
    listar,
    testar
}