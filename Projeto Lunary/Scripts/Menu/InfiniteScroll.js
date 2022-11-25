var Refeições = 15;
var Petiscos = 15;
var Porções = 15;
var Bebidas = 10;

function InfiniteScrolling(categoria) {
    console.log(`refeições ${Refeições} pestiscos ${Petiscos} porções ${Porções} bebidas ${Bebidas}`)   

    var pratos = (categoria) => {
        if (!(categoria == "Oferta do Dia")) {
            for (var i = eval(categoria) + 1; i < eval(categoria) + 16; i++) {
                console.log(`${categoria+ i}`)
                
            }
            categoria == categoria + 15;
            console.log(eval(categoria))
            console.log(categoria)
            /*Bebidas += 15 
*/        }
    }  
    pratos(categoria)
    

    
}
