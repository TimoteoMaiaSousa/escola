var ligar = window.document.querySelector('input#ligar');
var desligar = window.document.querySelector('input#desligar');
var lamp = window.document.querySelector('img')
function Ligar(){
    window.document.getElementById("lamp").src="luzacesa.png"
    ligar.style.backgroundColor='lawngreen'
    ligar.style.color='blue'
    desligar.style.background='aliceblue'
    desligar.style.color='black'
    lamp.style.borderRadius='10px'
    lamp.style.transition='0.8s'
}
function Desligar(){
    window.document.getElementById("lamp").src="luzapagada.png"
    desligar.style.backgroundColor='crimson'
    desligar.style.color='aliceblue'
    ligar.style.background='aliceblue'
    ligar.style.color='black'
    lamp.style.borderRadius='100px'
    lamp.style.transition='0.8s'
}