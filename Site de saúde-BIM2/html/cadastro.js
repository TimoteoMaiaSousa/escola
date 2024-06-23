var senha1 = document.getElementById('senha1');
function força(){
    if(senha1.value.length <= 3){
        alertaSenha.innerHTML = "Senha fraca!";
        alertaSenha.style.color = 'orange';
    }else if(senha1.value.length < 6 ){
        alertaSenha.innerHTML = "Senha média";
        alertaSenha.style.color = 'yellow';
    }else if(senha1.value.length > 6 && senha1.value.length <= 8){
        alertaSenha.innerHTML = "Senha forte!";
        alertaSenha.style.color = 'green';
    }else if(senha1.value.length > 8){
        alertaSenha.innerHTML = "A senha deve ter até 8 caracteres!";
        alertaSenha.style.color = 'red';
    }
}
setInterval(força, 100)
function cadastrar(){
    var alertaNome = document.getElementById("alertaNome")
    var alertaEmail = document.getElementById("alertaEmail");
    var alertaSenha = document.getElementById("alertaSenha");
    var alertaSenhaofc = document.getElementById("alertaSenhaofc");
    var nome = document.getElementById("nome");
    var senhaofc = document.getElementById("senhaofc")
    var email = document.getElementById("email");
    var btn = document.getElementById("submit")
    var camposVazios = true
    if(email.value === ""){
        alertaEmail.innerHTML = "Campo obrigatório!";
        alertaEmail.style.color = 'red';
        camposVazios = true;
    }else{
        alertaEmail.innerHTML = "";
        camposVazios = false;
    }
    if(nome.value === ""){
        alertaNome.innerHTML = "Campo obrigatório!";
        alertaNome.style.color = 'red';
        camposVazios = true;
    }else{
        alertaNome.innerHTML = "";
        camposVazios = false;
    }
    if(senha1.value === ""){
        alertaSenha.innerHTML = "Campo obrigatório!";
        alertaSenha.style.color = 'red';
        camposVazios = true;
    }else{
        camposVazios = false;
    }
    if(senhaofc.value === ""){
        alertaSenhaofc.innerHTML = "Campo obrigatório!";
        alertaSenhaofc.style.color = 'red';
        camposVazios = true;
    }else if(senhaofc.value != senha1.value){
        alertaSenhaofc.innerHTML = "Este campo deve ser igual ao anterior!";
    }else{
        camposVazios = false;
        alertaSenhaofc.innerHTML = "";
    }
    if(senha1.value !== "" && email.value !== "" && senhaofc.value !== "" && nome.value !== "" && senhaofc.value == senha1.value){
        btn.innerHTML = `<a href="index.html">Confirmar</a>`
        btn.style.width = '250px'
        alert("Formulário enviado com sucesso!")
    }
}