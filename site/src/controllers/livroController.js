var livroModel = require("../models/livroModel");

var sessoes = [];

function testar(req, res) {
    console.log("ENTRAMOS NA Canto controller");
    res.json("ESTAMOS FUNCIONANDO!");
}
function like(req,res){
    console.log('entrou no controller')
    var like = req.body.likeServer;
    var idPost = req.body.idPostServer;
        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        //cadastrar(titulo,autor,anoCriacao,letraLatim,letraPortugues,capa,partitura)
        livroModel.inserirLike(like,idPost)
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

function listar(req, res) {
    livroModel.listar()
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

function entrar(req, res) {
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;

    if (email == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está indefinida!");
    } else {
        
    
    }

}

function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html

    var titulo = req.body.tituloServer;
    var autor = req.body.autorServer;
    var anoCriacao = req.body.anoCriacaoServer;
    var linkPdf = req.body.linkDownloadServer;
    var urlCapa = req.body.urlCapaServer
    var idUsuario = req.body.idUsuarioServer;
    var like = req.body.likeServer;
    // Faça as validações dos valores
    if (titulo == undefined) {
        res.status(400).send("Seu nome está undefined!");
    } else if (anoCriacao == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (linkPdf == undefined) {
        res.status(400).send("Sua senha está undefined!");
    } else {
        
        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        //cadastrar(titulo,autor,anoCriacao,letraLatim,letraPortugues,capa,partitura)
        livroModel.cadastrar(titulo,autor,anoCriacao,urlCapa,linkPdf,idUsuario,like)
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
    entrar,
    cadastrar,
    listar,
    testar,
    like
}