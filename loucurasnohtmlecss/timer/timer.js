const btn = document.getElementById("btn");
btn.addEventListener("click", () => {
    const horas = document.getElementById("horas");
    const minutos = document.getElementById("minutos");
    const segundos = document.getElementById("segundos");

    let duracao = (parseInt(horas.value) * 3600) + (parseInt(minutos.value) * 60) + (parseInt(segundos.value));

    display = document.getElementById("timer");
    timer(duracao, display)
})
const timer = (duracao, display) => {
    let timer = duracao;
    let horas, minutos, segundos;

    let interval = setInterval(() => {
        horas = Math.floor(timer / 3600);// Arredonda as horas para baixo. Ex: Caso as horas sejam menores que 1, o valor apresentado será "00" no valor das horas do timer. OBS: A mesma regra servirá para os minutos.
        minutos = Math.floor(timer / 60 - (horas * 60));
        segundos = Math.floor(timer % 60);//Os segundos serão o resto da divisão.

        horas = horas < 10 ?/*se*/ "0" + horas :/*senão*/ horas;// Operador ternário que averigua como as horas vão aparecer na "div #timer", fazendo o zero aparecer antes das horas apenas se as horas forem menores que 10. Ex: [01]:min:seg. A mesma lógica será usada com os minutos e segundos.
        minutos = minutos < 10 ? "0" + minutos : minutos;
        segundos = segundos < 10 ? "0" + segundos : segundos;

        display.innerHTML = `${horas}:${minutos}:${segundos}`;

        timer -= 1;
        if(timer < 0){
            display.innerHTML = "00:00:00"
            display.style.textDecoration = "underline"
            clearInterval(interval);
        }
    }, 1000)
}