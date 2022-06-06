
const idUsuarioStorage = sessionStorage.IDUSUARIO; 
var  usernick  = sessionStorage.NOME_USUARIO; 
console.log(usernick)

if(usernick!= undefined){ 
    var nickBonito =usernick[0].toUpperCase() + usernick.replace(usernick[0],'').toLowerCase(); 

}

function validaNome() { 
    let liUsuario = document.getElementById('usuarioNome')
    console.log(nickBonito)
    if (nickBonito == undefined) { 

    }
    else{
        cadastroLi.style.display='none'
        liUsuario.innerHTML = ` <a href='usuarioDados.html'>${ nickBonito}</a>`
        console.log(nickBonito)
    }
}
function quemCadastrouMais(arr){    
    var pontosPerUsuario = []
    var count = 0 ; 
    var usuario = 0 ;
    var qualUsuarioMaior = ''; 
    
     for (i=0; i<arr.length;i++){
         count = 0; 
         for ( j=0 ; j<arr.length;j++){ 
             if(usuario == arr[j].fkUsuario){ 
                 count++; 
             }
         }
         usuario ++ ; 
         pontosPerUsuario.push(count ); 
    }

    var idQualUsuarioMaior=maxIndexArray(pontosPerUsuario); // id usuario maior // PEGA O ID 
    console.log(idQualUsuarioMaior)
    for(i=0;i<arr.length;i++){
        if(idQualUsuarioMaior==arr[i].fkUsuario){
            qualUsuarioMaior = arr[i].nomeUsuario;
        }
    }

    console.log(qualUsuarioMaior)
    return qualUsuarioMaior
 }
 function maxIndexArray(arr){ 
     var max =0 ; 
     var index =0 ; 
     for (i=0;i<arr.length;i++){ 
         if(max<arr[i]){ 
             max = arr[i]
             index = i ; 
             console.log("i: " + i  +"<br>")
         }
     }
     console.log(index + "pts por usuario max Index")
     return index;  
 }