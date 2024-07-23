function mostrarHorário(){
    let horario_item = document.getElementById("horario");
    let data_item = document.getElementById("hj");
    let msg_item = document.getElementById("msg");
    let agora = new Date();
    let hora = agora.getHours();
    let min = agora.getMinutes();
    let hoje = agora.getUTCDate();
    let mes = agora.getUTCMonth();
    let ano = agora.getUTCFullYear();
    let dia = agora.getDay();
    if(dia == 0){
        if(hoje < 10){data_item.innerHTML = `Hoje é Dom, 0${hoje}/${mes}/${ano}`}else if(mes < 10){data_item.innerHTML = `Hoje é Dom, ${hoje}/0${mes}/${ano}`}else if(hoje<10 && mes<10){data_item.innerHTML = `Hoje é Dom, 0${hoje}/0${mes}/${ano}`}
    }else if(dia == 1){
        if(hoje < 10){data_item.innerHTML = `Hoje é Seg, 0${hoje}/${mes}/${ano}`}else if(mes < 10){data_item.innerHTML = `Hoje é Seg, ${hoje}/0${mes}/${ano}`}else if(hoje<10 && mes<10){data_item.innerHTML = `Hoje é Seg, 0${hoje}/0${mes}/${ano}`}
        }else if(dia == 2){
            if(hoje < 10){data_item.innerHTML = `Hoje é Ter, 0${hoje}/${mes}/${ano}`}else if(mes < 10){data_item.innerHTML = `Hoje é Ter, ${hoje}/0${mes}/${ano}`}else if(hoje<10 && mes<10){data_item.innerHTML = `Hoje é Ter, 0${hoje}/0${mes}/${ano}`}
            }else if(dia == 3){
                if(hoje < 10){data_item.innerHTML = `Hoje é Qua, 0${hoje}/${mes}/${ano}`}else if(mes < 10){data_item.innerHTML = `Hoje é Qua, ${hoje}/0${mes}/${ano}`}else if(hoje<10 && mes<10){data_item.innerHTML = `Hoje é Qua, 0${hoje}/0${mes}/${ano}`}
                }else if(dia == 3){
                    if(hoje < 10){data_item.innerHTML = `Hoje é Qui, 0${hoje}/${mes}/${ano}`}else if(mes < 10){data_item.innerHTML = `Hoje é Qui, ${hoje}/0${mes}/${ano}`}else if(hoje<10 && mes<10){data_item.innerHTML = `Hoje é Qui, 0${hoje}/0${mes}/${ano}`}
                    }else if(dia == 3){
                        if(hoje < 10){data_item.innerHTML = `Hoje é Sex, 0${hoje}/${mes}/${ano}`}else if(mes < 10){data_item.innerHTML = `Hoje é Sex, ${hoje}/0${mes}/${ano}`}else if(hoje<10 && mes<10){data_item.innerHTML = `Hoje é Sex, 0${hoje}/0${mes}/${ano}`}
                        }else if(dia == 3){
                            if(hoje < 10){data_item.innerHTML = `Hoje é Sab, 0${hoje}/${mes}/${ano}`}else if(mes < 10){data_item.innerHTML = `Hoje é Sab, ${hoje}/0${mes}/${ano}`}else if(hoje<10 && mes<10){data_item.innerHTML = `Hoje é Sab, 0${hoje}/0${mes}/${ano}`}
                            }
    if(hora < 10){horario_item.innerHTML = `0${hora}:${min}`}else if(min < 10){horario_item.innerHTML = `${hora}:0${min}`}else if(hora<10 && min<10){horario_item.innerHTML = `0${hora}:0${min}`}else{horario_item.innerHTML = `${hora}:${min}`}
    if(hora >= 0 && hora <=12){
            msg_item.innerHTML = `Bom dia! Agora são: `
        }else if(hora > 12 && hora <= 17){
            msg_item.innerHTML = `Boa tarde! Agora são: `
            }else{
                msg_item.innerHTML = `Boa noite! Agora são: `
            }
}
setInterval(mostrarHorário(), 1000)