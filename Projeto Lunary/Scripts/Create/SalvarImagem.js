function get_dados_inclusao()
{
    return
    {
       imagem; '',
    }
}

function get_dados_form 
{
    var form = new FormData();
    form.append('imagem', $('#text_imagem').prop('files')[0]);
    
    return form;
}

var salvar_customizado = null;

if (salvar_customizado && typeof) (salvar_customizado) == 'function') {
    salvar_customizado(URL)
}
