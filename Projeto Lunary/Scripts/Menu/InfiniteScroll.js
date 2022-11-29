const mySettings = { Refeições: 15, Petiscos: 15, Porções: 15, Bebidas: 15 }
var url = "/Restaurante/ListaPratos";


function InfiniteScrolling(categoria) {
    /*console.log(`refeições ${Refeições} pestiscos ${Petiscos} porções ${Porções} bebidas ${Bebidas}`)   */
    var prato = mySettings[categoria]
    console.log(prato)
    /* var lista =  $.get(url, { categoria: categoria })
     console.log($.get(url, { categoria: categoria }))
     console.log(lista[0])*/

    $.post(url, { categoria: categoria, qtd: mySettings[categoria] })
        .done(function (data) {
            console.log(data[1].RESTANOME)
            mySettings[categoria] += 5;

            for (var i = 0; i < 6; i++) {

                document.getElementById('pratos').innerHTML += CarregarMaisPratos(data[i]) 
            }
        })


   /* var pratos = (categoria) => {
        if (!(categoria == "Oferta do Dia")) {
            for (var i = prato + 1; i < prato + 16; i++) {
                console.log(`${categoria+ i}`)
                
            }
           
            
 }
    }  
    pratos(categoria)*/
    

    
}


function CarregarMaisPratos(dados) {


    var html =
        '<div class="row pratos '   + dados.RESTACATEGORIA +  ' show">' + 
            '<div class="col-lg-12" >' +
              '  <div class="img2">' +
        '  <img class="img" src="data:image/jpg/gif/png;base64,' + Base64(dados.imagem)  + '" data-value="' + dados.RESTAUID + '" width="232" height="232"> ' +
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
    c = ""; for (a = e = b = 0; a < 4 * d.length / 3; f = b >> 2 * (++a & 3) & 63, c += String.fromCharCode(f + 71 - (f < 26 ? 6 : f < 52 ? 0 : f < 62 ? 75 : f ^ 63 ? 90 : 87)) + (75 == (a - 1) % 76 ? "\r\n" : ""))a & 3 ^ 3 && (b = b << 8 ^ d[e++]); for (; a++ & 3;)c += "=";
    return c
};

