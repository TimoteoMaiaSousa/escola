var m = document.getElementById('masc')
var f = document.getElementById('fem')
var checkm = false
var checkf = false
//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function mulher(){
    f.style.backgroundColor = 'plum'
    f.style.border = '1px solid rgba(248, 180, 248, 0.096)'
    m.style.backgroundColor = 'rgba(100, 148, 237, 0.041)'
    m.style.border = '1px solid cornflowerblue'
    checkf = true
    checkm = false
}
function homem(){
    m.style.backgroundColor = 'cornflowerblue';
    m.style.border = '1px solid rgba(100, 148, 237, 0.041)';
    f.style.backgroundColor = 'rgba(248, 180, 248, 0.096)';
    f.style.border = '1px solid plum';
    checkf = false;
    checkm = true ; 
}
var camposVazios = true;
function calculaimc(){
    var tabela = document.getElementById("imc")
    var lmagro = document.querySelector('.magreza')
    var lnormal = document.querySelector('.normal')
    var lsobrepeso = document.querySelector('.sobrepeso')
    var lobeso = document.querySelector('.obeso')
    var pesoIdeal = '46.8 e 69 Kg'
    var res = document.getElementById('res')
    res.innerHTML = ""
    var resc = document.getElementById('resc')
    var idade = document.getElementById('idade');
    var altura = document.getElementById('altura');
    var a = Number(altura.value)
    var peso = document.getElementById('peso');
    var p = Number(peso.value)
    var alertaIdade = document.getElementById('alertaIdade');
    var alertaAltura = document.getElementById('alertaAltura');
    var alertaPeso = document.getElementById('alertaPeso');
    const imc = p / (a / 100) ** 2
    if (idade.value === ""){
        alertaIdade.innerHTML = 'Preenchimento obrigatório!';
        alertaIdade.style.color = 'red';
        idade.style.border = '1px solid red';
        tabela.style.display = 'none';
        camposVazios = true;
    }else if(idade.value > 119){
        alertaIdade.innerHTML = 'Idade máxima: 119 anos';
        alertaIdade.style.color = 'red';
        idade.style.border = '1px solid red';     
    }else{
        alertaIdade.innerHTML = "";
        idade.style.border = '1px solid #bababa';
        camposVazios = false
    }
    if (altura.value === ""){
        alertaAltura.innerHTML = 'Preenchimento obrigatório!';
        alertaAltura.style.color = 'red';
        altura.style.border = '1px solid red';
        tabela.style.display = 'none';
        camposVazios = true;
    }else if(altura.value > 225){
        alertaAltura.innerHTML = 'Altura máxima: 225cm';
        alertaAltura.style.color = 'red';
        altura.style.border = '1px solid red';    
    }else{
        alertaAltura.innerHTML = "";
        altura.style.border = '1px solid #bababa';
        camposVazios = false
    }
    if(peso.value === ""){
        alertaPeso.innerHTML = 'Preenchimento obrigatório!';
        alertaPeso.style.color = 'red';
        peso.style.border = '1px solid red';
        tabela.style.display = 'none';
        camposVazios = true;
    }else if(peso.value > 300){
        alertaPeso.innerHTML = 'Peso máximo: 300Kg';
        alertaPeso.style.color = 'red';
        peso.style.border = '1px solid red';            
    }else{
        alertaPeso.innerHTML = "";
        peso.style.border = '1px solid #bababa';
        camposVazios = false
    }
    if(idade.value !== "" && altura.value !== "" && peso.value !== ""){
        res.innerHTML = `Seu Índice de Massa Corporal (IMC) é de <strong>${imc.toFixed(2)} Kg/m²</strong>`
        tabela.style.display = 'block';
        if(imc < 16){
            let condicao = 'magreza'
            resc.innerHTML = `De acordo com a Organização Mundial da Saúde, seu IMC é considerado como <strong>${condicao}</strong> para a sua altura. Para manter o valor de IMC normal, seu peso pode variar entre <strong>${pesoIdeal}</strong>.`
            lmagro.style.backgroundColor = 'bisque'
            lnormal.style.backgroundColor = '#f0ecec'
            lsobrepeso.style.backgroundColor = '#f0ecec'
            lobeso.style.backgroundColor = '#f0ecec'
        }else if(imc >= 16 && imc < 23.6){
            let condicao = 'normal'
            resc.innerHTML = `De acordo com a Organização Mundial da Saúde, seu IMC é considerado como <strong>${condicao}</strong> para a sua altura. Para manter o valor de IMC normal, seu peso pode variar entre  <strong>${pesoIdeal}</strong>.`
            lnormal.style.backgroundColor = 'lightgreen'
            lmagro.style.backgroundColor = '#f0ecec'
            lsobrepeso.style.backgroundColor = 'background-color: #f0ecec'
            lobeso.style.backgroundColor = '#f0ecec'
        }else if(imc >= 23.6 && imc < 27.8){
            condicao = 'sobrepeso'
            resc.innerHTML = `De acordo com a Organização Mundial da Saúde, seu IMC é considerado como <strong>${condicao}</strong> para a sua altura. Para manter o valor de IMC normal, seu peso pode variar entre  <strong>${pesoIdeal}</strong>.`
            lsobrepeso.style.backgroundColor = 'lightsalmon'
            lnormal.style.backgroundColor = '#f0ecec'
            lmagro.style.backgroundColor = '#f0ecec'
            lobeso.style.backgroundColor = '#f0ecec'
        }else if(imc > 27.8){
            let condicao = 'obesidade'
            resc.innerHTML = `De acordo com a Organização Mundial da Saúde, seu IMC é considerado como <strong>${condicao}</strong> para a sua altura. Para manter o valor de IMC normal, seu peso pode variar entre  <strong>${pesoIdeal}</strong>.`
            lobeso.style.backgroundColor = 'lightcoral'
            lsobrepeso.style.backgroundColor = '#f0ecec'
            lnormal.style.backgroundColor = '#f0ecec'
            lmagro.style.backgroundColor = '#f0ecec'
        }
    }
}