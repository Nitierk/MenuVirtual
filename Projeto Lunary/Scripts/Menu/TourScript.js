var tour = new Tour({
    steps: [
        {
            element: "#ToggleTheme",
            title: "Modo Claro/Escuro",
            content: "É possível alterar o tema do site.",
            placement: "bottom",
            backdrop:false,
            smartPlacement:false
        },
        {
            element: "#Eventos",
            title: "Eventos.",
            content: "Futuros eventos do estabelcimento",
            placement: "bottom",
            smartPlacement:false
        },
        {
            element: "#maisCurtidos",
            title: "Top 5 pratos.",
            content: "Rankiamento dos Pratos mais curtidos do estabelecimento.",
            placement: "bottom",
            smartPlacement:false
        },
        {
            element: "#FiltroCategorias",
            title: "Filtro das Categorias.",
            content: "Navegue pelas categorias de forma fácil.",
            placement: "bottom",
            smartPlacement:false
        },
        {
            element: "#progress",
            title: "Volte para o Topo.",
            content: "Volte para o topo da página rápidamente.",
            placement: "left",
            smartPlacement:false
        }
    ],    
    backdrop:true,
});

//-> Inicializa o tour.
tour.init();

//-> Inicializa o tour.
tour.start();