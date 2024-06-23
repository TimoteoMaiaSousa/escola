var senha = document.getElementById('senha');
function força(){
    if(senha.value.length <= 3){
        alertaSenha.innerHTML = "Senha fraca!";
        alertaSenha.style.color = 'orange';
    }else if(senha.value.length < 6 ){
        alertaSenha.innerHTML = "Senha média";
        alertaSenha.style.color = 'yellow';
    }else if(senha.value.length > 6 && senha.value.length <= 8){
        alertaSenha.innerHTML = "Senha forte!";
        alertaSenha.style.color = 'green';
    }else if(senha.value.length > 8){
        alertaSenha.innerHTML = "A senha deve ter até 8 caracteres!";
        alertaSenha.style.color = 'red';
    }
}
setInterval(força, 100)
function entrar(){
    var alertaEmail = document.getElementById("alertaEmail");
    var alertaSenha = document.getElementById("alertaSenha");
    var email = document.getElementById("email");
    var camposVazios = true
    var btn = document.getElementById("submit")
    if(email.value === ""){
        alertaEmail.innerHTML = "Campo obrigatório!";
        alertaEmail.style.color = 'red';
        camposVazios = true;
    }else{
        alertaEmail.innerHTML = "";
        camposVazios = false;
    }
    if(senha.value === ""){
        alertaSenha.innerHTML = "Campo obrigatório!";
        alertaSenha.style.color = 'red';
        camposVazios = true;
    }else{
        camposVazios = false;
    }
    if(senha.value !== "" && email.value !== ""){
        btn.innerHTML = `<a href="index.html">Confirmar</a>`
        btn.style.width = '250px'
        alert("Formulário enviado com sucesso!")
    }
}