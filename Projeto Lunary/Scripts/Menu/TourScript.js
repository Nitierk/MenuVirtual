var tour = new Tour({
    steps: [
        {
            element: "#ToggleTheme",
            title: "Modo Claro/Escuro",
            content: "É possível alterar o tema do site."
        },
        {
            element: "#Eventos",
            title: "Eventos.",
            content: "Futuros eventos do estabelcimento"
        },
        {
            element: "#maisCurtidos",
            title: "Top 5 pratos.",
            content: "Rankiamento dos Pratos mais curtidos do estabelecimento."
        },
        {
            element: "#filterCategoria",
            title: "Filtro das Categorias.",
            content: "Navegue pelas categorias de forma fácil."
        },
        {
            element: "#filterCategoria",
            title: "Filtro das Categorias.",
            content: "Navegue pelas categorias de forma fácil."
        }
    ]
});

//-> Inicializa o tour.
tour.init();

//-> Inicializa o tour.
tour.start();