Feature: Busca de cliente
  As a Usuario do sistema
  I want to buscar os clientes por seu nome ou CPF
  So that eu atribua o cliente correto ao servico prestado

  Scenario: Busca de cliente por nome Pedro Caitano
    Given Eu estou na pagina de listagem de clientes
    And O cliente com nome completo "Pedro Caitano" data de nascimento "2000-09-14" cpf "72969741091" email "shouldz1@outlook.com" senha "ZECpmdzAKy" telefone "81998436108" rua "Rua Santos Dumount" numero "245" CEP "55715000" Bairro "Jardim santa rosa" cidade "Feira Nova" complemento "Casa" existe
    When Eu preencho no campo de busca por nome o nome "Pedro Caitano"
    And eu clico em Pesquisar por nome
    Then eu visualizo o cliente de nome "Pedro Caitano"

  Scenario: Busca de cliente por nome Lucas mateus
    Given Eu estou na pagina de listagem de clientes
    And O cliente com nome completo "Lucas mateus" data de nascimento "2000-09-14" cpf "72969741091" email "shouldz1@outlook.com" senha "ZECpmdzAKy" telefone "81998436108" rua "Rua Santos Dumount" numero "245" CEP "55715000" Bairro "Jardim santa rosa" cidade "Feira Nova" complemento "Casa" existe
    When Eu preencho no campo de busca por nome o nome "Lucas mateus"
    And eu clico em Pesquisar por nome
    Then eu visualizo o cliente de nome "Lucas mateus"

  Scenario: Buscar cliente que não existe
    Given Eu estou na pagina de listagem de clientes
    And Eu preencho no campo de busca por nome o nome "Carlos Andrade"
    And eu clico em Pesquisar por nome
    Then eu visualizo a pagina em branco sem nenhum cliente "Carlos Andrade"

  Scenario: Busca de cliente por CPF
    Given Eu estou na pagina de listagem de clientes
    And O cliente com nome completo "Pedro Caitano" data de nascimento "2000-09-14" cpf "72969741091" email "shouldz1@outlook.com" senha "ZECpmdzAKy" telefone "81998436108" rua "Rua Santos Dumount" numero "245" CEP "55715000" Bairro "Jardim santa rosa" cidade "Feira Nova" complemento "Casa" existe
    When Eu preencho no campo de busca por CPF o CPF "72969741091"
    And eu clico em Pesquisar
    Then eu visualizo o cliente de CPF "72969741091"

  Scenario: Buscar cliente que o cpf não existe
    Given Eu estou na pagina de listagem de clientes
    And Eu preencho no campo de busca por CPF o CPF "72969741091"
    And eu clico em Pesquisar
    Then eu visualizo a pagina em branco sem nenhum cliente de CPF "72969741091"