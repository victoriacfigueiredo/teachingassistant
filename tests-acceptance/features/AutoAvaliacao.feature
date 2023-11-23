Feature: As a aluno
I want to atribuir o conceito (MA, MPA, MANA) para cada meta
So that I possa avaliar o meu próprio desempenho e indentificar areas de melhoria

Scenario: Preenchimento bem sucedido da auto-avaliação
Given eu estou na página de auto-avaliação
And existe uma tabela não preenchida com as colunas "MA", "MPA" e "MANA" e com as linhas "Entender o conceito de requisitos" e “Especificar requisitos com qualidade”
When eu preencho o campo "MA" com "8", o campo "MPA" com "7.8" e o campo "MANA" com "8" na meta "Entender o conceito de requisitos"
And eu preencho o campo "MA" com "9", o campo "MPA" com "8.8" e o campo "MANA" com "8" na meta “Especificar requisitos com qualidade”
Then eu posso ver uma mensagem de confirmação

Scenario: Preenchimento mal sucedido da auto-avaliação
Given eu estou na pagina de auto-avaliação
And existe uma tabela não preenchida com as colunas "MA", "MPA" e "MANA" e com as linhas "Entender o conceito de requisitos" e “Especificar requisitos com qualidade”
When eu preencho o campo "MA" com "8", o campo "MPA" com "7.8" e o campo "MANA" com "8" na meta "Entender o conceito de requisitos"
And eu não preencho o campo "MA", nem o campo "MPA" e nem o campo "MANA" na meta “Especificar requisitos com qualidade”
Then eu posso ver uma mensagem de erro 

Scenario: Não há discrepância
Given uma turma de 3 alunos ("Maria", "Pedro", "Joana")
And um total de 5 metas na auto-avaliação (“Entender o conceito de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração”, “Gerenciar efetivamente a comunicação com os stakeholders” e “Desenvolver habilidades de negociação”)
And “Maria” se deu as notas “8”, “8,8” e “8” em todas as metas
And eu atribuí a "Maria" as notas “8”, “8,8” E “8” em todas as metas 
And “Joana” se deu as notas “9”, “8,8” e “8” em todas as metas, exceto “Entender o conceito de requisitos” em que se deu as notas “10”, “9,8”, “9”
And eu atribuí a “Joana” as notas “9”, “8,8” E “8” em todas as metas
And “Pedro” se deu as notas “7”, “7” e “7” em todas as metas
And eu atribuí a “Pedro” as notas “8”, “8” E “8” em todas as metas
When eu clico no botão “Ver Discrepâncias”
Then eu não vejo nenhum nome na lista de alunos
And eu posso ver a quantidade de auto-avaliações discrepantes igual a 0
And eu posso ver a porcentagem de auto-avaliações discrepantes igual a 0%


