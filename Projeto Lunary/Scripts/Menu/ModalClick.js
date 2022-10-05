function OpenModal(id) {
    
    /*console.log(id)*/
    $("#conteudoModal").load("/Restaurante/Detalhes/" + id,

        

        function () {
            $('#myModal').modal("show")

            
        }
    );

    

/*
    try {
        var titu = document.getElementById("TituloCat");
        titu.remove();
        var Categ = document.createElement('h3'); // is a node
        Categ.setAttribute("class", "Categoria");
        Categ.setAttribute("id", "TituloCat");

        Categ.innerHTML = c;
        document.getElementById('Categoria').appendChild(Categ);

    } catch (e) {
        var Categ = document.createElement('h3'); // is a node
        Categ.setAttribute("id", "TituloCat");
        Categ.setAttribute("class", "Categoria");
        Categ.innerHTML = c;
        document.getElementById('Categoria').appendChild(Categ);
    }*/


}