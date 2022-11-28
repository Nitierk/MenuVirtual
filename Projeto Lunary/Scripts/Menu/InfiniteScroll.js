const mySettings = { Refeições: 15, Petiscos: 15, Porções: 15, Bebidas: 15 }
var url = "/Restaurante/ListaPratos";
/*var Refeições = 15;
var Petiscos = 15;
var Porções = 15;
var Bebidas = 10;*/

function InfiniteScrolling(categoria) {
    /*console.log(`refeições ${Refeições} pestiscos ${Petiscos} porções ${Porções} bebidas ${Bebidas}`)   */
    var prato = mySettings[categoria]
    console.log(prato)

    $.get()


    var pratos = (categoria) => {
        if (!(categoria == "Oferta do Dia")) {
            for (var i = prato + 1; i < prato + 16; i++) {
                console.log(`${categoria+ i}`)
                
            }
            mySettings[categoria] += 15;
            
 }
    }  
    pratos(categoria)
    

    
}
