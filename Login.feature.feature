            #language:pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado Login na plataforma EBAC-SHOP

            Cenário: Autenticação válida
            Quando inserir dados válido usuário "aline.tex@ebac.shop.com.br"
            E senha "1020"
            Então deve ser direcionado para a tela de checkout

            Cenário: Usuário inválido
            Quando inserir dados de usuário ou senha inválidos "xyz"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Validar autenticações inválidas
            Quando eu inserir <usuario> e <senha>
            Então deve exibir uma <mensagem> de erro

            Examplos:
            | usuário                         | senha  | mensagem                            |
            | "aline.tex@ebac.shop.com.br"    | "1022" | "Usuário ou senha inválidos"           |
            | "tex@ebac.shop.com.br"          | "1020" | "Usuário ou senha inválidos"           |
            | "torredebabel@ebac.shop.com.br" | "1234" | "Usuário não cadastrado em nossa base" |

