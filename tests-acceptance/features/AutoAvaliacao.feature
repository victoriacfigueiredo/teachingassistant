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
And eu posso ver uma opção para retornar à tela de preenchimento