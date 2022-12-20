const mySettings = { Bebidas: 15, Refeicoes: 15, Porcoes: 15, Petiscos: 15 }
var QtdPratos = { Bebidas: 0, Refeicoes: 0, Porcoes: 0, Petiscos: 0 }
var Categorias = { 0: "Bebidas", 1: "Refeicoes", 2: "Porcoes", 3: "Petiscos"}
var url = "/Restaurante/ListaPratos";


function getDados() {
    $.post(url, { categoria: "Quantidade de Pratos", qtd: 0 })
        .done(function (data) {
            QtdPratos["Bebidas"] = data[0]
            QtdPratos["Refeicoes"] = data[1]
            QtdPratos["Porcoes"] = data[2]
            QtdPratos["Petiscos"] = data[3]
        })
}

function InfiniteScrolling(categoria) {
    var buttonGet = document.querySelector("#CarregarMais")
    buttonGet.remove()
    var imagem = document.createElement('img');
    imagem.setAttribute("id", "LoadingPratos");
    var modo = document.body.classList.contains("dark") ? "dark" : "light"
    imagem.src = "/Content/Menu/img/spiner_" + modo + ".gif";
    imagem.classList.add("center-block");
    imagem.width = "80"
    imagem.height = "80"
    document.getElementById("buttonRefresh").appendChild(imagem);

    switch (categoria) {
        case "Refeições":
            categoria = "Refeicoes"
            break
        case "Porções":
            categoria = "Porcoes"
            break
        default:
    }

    var prato = mySettings[categoria]
    console.log(prato)
        $.post(url, { categoria: categoria, qtd: mySettings[categoria] })
        .done(function (data) {
            console.log(data[0].RESTANOME)


            for (var i = 0; i < data.length; i++) {

                document.getElementById('pratos').innerHTML += CarregarMaisPratos(data[i])
            }
            mySettings[categoria] += data.length;
            var Loading = document.querySelector("#LoadingPratos")
            Loading.remove();
            InserirBotao()
            document.querySelectorAll('.img').forEach((el) =>
                {
                    el.addEventListener('click', function(e) {
                        var id = $(this).data("value")
                        console.log(id)
                        $("#conteudoModal").load("/Restaurante/Detalhes/" + id,
                            function () {
                            $('#myModal').modal("show")
                            }   
                        )
                    })
                });     
            console.log("Botão");   
        })
        .fail(function () {
            alert("Não foi possível carregar, tente novamente!")
            var Loading = document.querySelector("#LoadingPratos")
            Loading.remove();
            InserirBotao()
        })
    
    
    
}

function InserirBotao() {
            var button = document.createElement('button');
            button.setAttribute("class", "pratos btn btn-success center-block");
            button.setAttribute("id", "CarregarMais");
            button.innerHTML = "Carregar Mais..."
            for (var i = 0; i < 4; i++) {
                if (mySettings[Categorias[i]] < QtdPratos[Categorias[i]]) {
                    switch (Categorias[i]) {
                        case "Refeicoes":
                            button.classList.add("Refeições")
                            break
                        case "Porcoes":
                            button.classList.add("Porções")
                            break
                        default:
                            button.classList.add(Categorias[i])
                    }
                    console.log("Classe adicionada:" + Categorias[i])
                }
            }
            document.getElementById("buttonRefresh").appendChild(button);
            FiltroCategorias()
            document.querySelector("#CarregarMais").addEventListener('click', function () {
                var categoria = document.getElementById("TituloCat").innerText
                if (window.scrollY + window.innerHeight + 5 >
                    document.body.scrollHeight && categoria != "Oferta do Dia")
                    InfiniteScrolling(categoria);
            });
}


function CarregarMaisPratos(dados = 0) {


    var html =
        '<div class="row pratos '   + dados.RESTACATEGORIA +  ' show">' + 
            '<div class="col-lg-12" >' +
                '  <div class="img2">' +
                    '<img class="img" src="' + Base64(dados.imagem)  + '" data-value="' + dados.RESTAUID + '" width="232" height="232"> ' +
                '</div>' +

                '<h3 class="text-center name col-md-12">' +  dados.RESTANOME + '</h3>' +

                '<div class="heart-btn">' +
                    '<div class="content">' +
                        '<form action="" method="post">' +
                            '<span onclick="Like('+ dados.RESTAUID+ ')" class="heart" id="' + dados.RESTAUID + '"></span>' +

                        '</form>' +
                    '<div id="' + dados.RESTAUID + '-Curtidadiv">' +
                            '<span class="number" id="' + dados.RESTAUID + '-Curtida">' + dados.Curtidas + '</span>' +
                        '</div>'+

                    '</div>' +
                '</div>' +
                '<div>' +
        '<p class="preco">R$ ' + dados.RESTAPRECO.toFixed([2]) + '</p>' +
                '</div>' +
            '</div>' + 
        '</div>' 

    return html;

}


function Base64(d, a, e, b, c, f) {

    if (d == null) {
        return '/Content/Menu/img/LogoLunaryGray.png'
    }
    else {
        c = ""; for (a = e = b = 0; a < 4 * d.length / 3; f = b >> 2 * (++a & 3) & 63, c += String.fromCharCode(f + 71 - (f < 26 ? 6 : f < 52 ? 0 : f < 62 ? 75 : f ^ 63 ? 90 : 87)) + (75 == (a - 1) % 76 ? "\r\n" : ""))a & 3 ^ 3 && (b = b << 8 ^ d[e++]); for (; a++ & 3;)c += "=";
        return "data:image/jpg/gif/png;base64," + c
    }
};

