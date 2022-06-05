var database = require("../database/config")

function listar() {
    console.log("function listar()");
    var instrucao = `
        SELECT * FROM tbLivro JOIN tbUsuario ON fkUsuario=idUsuario;;
    `;
 
    return database.executar(instrucao);
}

function entrar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `
        SELECT * FROM usuario WHERE email = '${email}' AND senha = '${senha}';
    `;
   
    return database.executar(instrucao);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrar(titulo,autor,anoCriacao, urlCapa, link,idUsuario,likes) {
     // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    // titulo, autor, ano criacao, letra latim, letra portugues, capa, partitura, todos com Inp no final
    var instrucao = `
        INSERT INTO tbLivro VALUES (NULL,'${titulo}', '${autor}', '${anoCriacao}','${urlCapa}' ,'${link}' ,'${idUsuario}','${likes}');`;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}
function inserirLike(like,id){
    var instrucao = `
    UPDATE tbLivro SET likesLivro= likesLivro+1 WHERE idLivros=${id}`;
console.log("Executando a instrução SQL: \n" + instrucao);
return database.executar(instrucao);
}
module.exports = {
    entrar,
    cadastrar,
    listar,
    inserirLike
};