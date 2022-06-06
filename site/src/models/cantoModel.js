var database = require("../database/config")

function selectQuantia(idUsuario) {
    console.log("function listar()");
    console.log(idUsuario)
    var instrucao = `
    select count(idCantos) FROM tbUsuario JOIN tbCanto ON idUsuario = fkUsuario AND fkUsuario = ${idUsuario}; 
    `;
 
    return database.executar(instrucao);
}
function listar() {
    console.log("function listar()");
    var instrucao = `
        SELECT * FROM tbCanto JOIN tbUsuario ON fkUsuario=idUsuario;
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
function cadastrar(titulo,autor,anoCriacao,letraLatim,letraPortugues,capa,partitura,idUsuario,likes) {
     // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    // titulo, autor, ano criacao, letra latim, letra portugues, capa, partitura, todos com Inp no final
    if ( likes == undefined) { 
        likes = 'NULL'
    }
    var instrucao = `
        INSERT INTO tbCanto  VALUES (NULL,'${titulo}', '${autor}', '${anoCriacao}', '${letraLatim}', '${letraPortugues}', '${partitura}', '${capa}','${idUsuario}','${likes});`;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    entrar,
    cadastrar,
    listar,
    selectQuantia
};