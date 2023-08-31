**Entidades**

    - Cliente
    - Livro
    - Pedido
    - Item de pedido
    - Autor
    - Editora
    - Gênero

**Relacionamentos**

    - Um cliente pode fazer vários pedidos.
    - Um pedido pode ter vários itens de pedido.
    - Um item de pedido pode pertencer a um único livro.
    - Um livro pode ter vários autores.
    - Um livro pode ser publicado por várias editoras.
    - Um livro pode ser classificado em vários gêneros.

**Atributos**

    - Cliente: ID do cliente, nome do cliente, endereço do cliente, número de telefone do cliente, e-mail do cliente.
    - Livro: ISBN do livro, título do livro, ano de publicação do livro, preço do livro, número de páginas do livro, sinopse do livro.
    - Autor: ID do autor, nome do autor, biografia do autor.
    - Editora: ID da editora, nome da editora, endereço da editora, número de telefone da editora, e-mail da editora.
    - Gênero: ID do gênero, nome do gênero. 

**Regras de integridade**

    - O ID do cliente deve ser único.
    - O ISBN do livro deve ser único.
    - O ID do pedido deve ser único.
    - O ID do item de pedido deve ser único.
    - O ID do autor deve ser único.
    - O ID da editora deve ser único.
    - O ID do gênero deve ser único.
    - A quantidade de um item de pedido deve ser maior ou igual a 1.
    - O preço unitário de um item de pedido deve ser maior ou igual a 0.

**Requisitos**

    - O projeto utilizará o SGBD SQL Server.
    - Você precisará de um software cliente SQL (SSMS, DBeaver, entre outros...) para fazer consultas e vizualisar os dados.

**Ideias Futuras**

    - Utilizar os dados do banco para criar dashboards no Power BI, com o intuito de estudar a ferramenta.  
    - Pensar em um projeto que utilize os dados do banco e Python para análise de dados.