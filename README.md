# Aula de Testes Unitários

## Conceito

Os testes unitários, que também são chamados de teste de unidade ou teste de módulo, são testes que tem como objetivo testar pequenas partes ou unidades do sistema que foi desenvolvido. Geralmente essas unidades são métodos, pequenas classes ou módulos ou pequenos trechos de código. 

Por serem os testes mais indivuduais e mais granulares na aplicação é também os testes que irão estar em maior quantidade em todo o sistema, como demonstrado pelo conceito de **Pirâmide de Testes** proposto por um dos fundadores do Scrum Alliance, Mike Cohn.

![](https://res.cloudinary.com/practicaldev/image/fetch/s--dcM0135C--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/ealtg2m79jiaur0ryb3v.png)

Na pirâmide os testes que uma aplicação de qualidade deve ter são dividos em três categorias: 


1. Os testes ponta a ponta (end to end - e2e) que são testes em que uma pessoa (ou robô automatizado) testa o funcionamento de determinada parte do software. Ex: Preenchendo e submetendo formulários, clicando em botões, enviando arquivos... esses são os testes mais caros e com maior grau de dependencia de outros módulos do sistema e por isso feitos em menor número.
2. Os testes de integração que testam a integração entre os componentes do sistema, esses componentes podem ser classes, funções ou trechos de código. Esses testes não tem objetivo de testar se determinado componente funciona, mas se a comunicação e integração entre componentes produz o resultado esperado.
3. Os testes de unidade que são os menores, em maior número, com menor custo e que servem para saber onde está e qual o erro no sistema. Esses testes são atômicos ou seja, testam os componentes isoladamente e a partir do próprio código do mesmo, com a finalidade de garantir que cada componente está individualmente funcionando.

## Objetivos

- Garantir o funcionamento individual de componentes da aplicação.
- Encontrar componentes com erros de codificação com mais precisão.
- Utilizar também como **testes de regressão**.


## Características

- São testes caixa branca.
- Feitos por pessoas técnicas diretamente no código.
- Codificados **em memória**, ou seja quando trabalhamos com testes unitários, não utilizamos banco de dados uma vez que nosso objetivo é testar pequenos trechos de código como funções, então quando fazemos esse tipo de teste simulamos leitura e gravação de dados com dados em memória (variávaies, objetos...).


## Como fazer (Teoria)

Os testes unitários precisam verificar de forma isolada o funcionamento de cada classe, isso é possível fazer utilizando estruturas que as próprias linguagens trazem em suas bibliotecas padrão, porém por motivos de praticidade e produtividade usamos ferramentas chamadas **Frameworks** de Teste (Arcabouços de Teste em Português) que nada mais são do coleções de bibliotecas (Códigos) escritos com funções que nos ajudam a fazer isso de forma inteligente.

Nos testes usamos o padrão **Triple A**:
- **A**rrange
- **A**ct
- **A**ssert 

que em Português seria Organiza, Age e Infere. Esses são os nossos três trechos de código que vamos usar.

### Arrange

É a parte do nosso código de teste que vamos organizar nosso código preparando-o para o cenário do nosso teste.

### Act

Onde vamos executar nossos códigos que vão executar as ações que estamos fazendo o teste utilizando todas as possíveis entradas esperadas pela função. (Ex: Uma função que espera um número Inteiro deve no mínimo testar a possibilidade de receber números positivos, números negativos, zero e nulo).

### Assert

A parte final do nosso teste em que vamos comparar o resultado recebido pela execução do nosso teste e compará-lo com os valores esperados para as entradas que colocamos.

## Ferramentas

- **xUnit** -> Frameworks por linguagem que se baseiam na definição de testes criada por Kent Beck em Smalltalk (primeira linguagem OOP).

| Linguagem | Nome    |
| :--       | :--     |
| Java      | JUnit   |
| PHP       | PHPUnit |
| .NET      | NUnit   |
| C++       | CppUnit |
| OCaml     | OUnit   |

- Por vezes as linguagens de programação possuem frameworks mais modernos que são construídos para oferecer vantagens ou funções extras comparados com os xUnit.

| Linguagem | Nome         |
| :--       | :--          |
| Java      | JBehave      |
| PHP       | Pest         |
| .NET      | MSTest       |
| C++       | Catch2       |
| OCaml     | **Alcotest** |