# 2021-2 - Quinta - Noite
**Disciplina:** Aplicações Orientadas a Objetos

**Professor**: Thiago Graziani Traue (thiago.traue@uni9.pro.br)

***

## Link das atividades

Para realizar as atividades utilizando Google Forms sempre entre com seu e-mail institucional. 

 - Atividade 1: [LINK DA ATIVIDADE](https://forms.gle/sojWF46muH8zagrX8) - De 30.09 até 02.12, 18h
 - Atividade 2: [LINK DA ATIVIDADE](https://forms.gle/eJEnwTBzoehPdi9W8) - De 14.10 até 02.12, 18h
 - Atividade 3: [LINK DA ATIVIDADE](https://forms.gle/rQ32H5ejUWVBENsTA) - De 21.10 até 02.12, 18h
 - Atividade 4: [LINK DA ATIVIDADE](https://forms.gle/rSvuxQ9qhJc5yDog7) - De 04.11 até 02.12, 18h
 - Atividade 5: [LINK DA ATIVIDADE](https://forms.gle/LHR8aeqP2AU3Gtv99) - De 11.11 até 02.12, 18h


## Preparação do ambiente


### 1º passo - JRE (Java Runtime Edition)

O primeiro passo para a preparação do ambiente é verificar se você já possui o Java instalado em sua máquina. Para isso, abra o terminal (prompt de comando no caso do Windows) e digite:

```
java -version
```

Se aparecer a mensagem de que "java não é um comando reconhecido", você precisa baixar e instalar, [DESTE LINK](https://www.java.com/pt-BR/download/ie_manual.jsp?locale=pt_BR). Instalar normalmente.

Se o comando acima for bem sucedido, ou seja, o terminal lhe apresentar qualquer versão do Java maior ou igual a 8, então tudo ok no primeiro passo.


### 2º passo - JDK (Java Development Kid)

Baixar e instalar a JDK se você não a possui. Para verificar se você já possui a JDK em sua máquina, entre no terminal (prompt de comando) e digite o comando abaixo:

```
javac -version
```

Se retornar qualquer versão sendo 8, 11, 14 ou 16, tudo ok.

Se não retornar, você precisará baixar e instalar a JDK (Java Development Kit) correta para seu sistema operacional, através [DESTE LINK](https://www.oracle.com/java/technologies/javase-jdk16-downloads.html).

Atente-se apenas para o local de instalação, que não pode conter espaços e/ou caracteres especiais. Não há problemas em manter em "Arquivos de Programas" (ou "Program Files").


### 3º passo - NetBeans

Agora vamos fazer a instalação do NetBeans, disponível [NESTE LINK](https://netbeans.apache.org/download/index.html).

A instalação verificará suas versões do Java e JDK para poder prosseguir.

A instalação é bastante simples e não requer nenhuma configuração prévia importante. Recomenda-se utilizar o diretório padrão de instalação.

Após a instalação abrir o NetBeas e clicar em "Help" -> "About" e verificar se na segunda linha consta a palavra "Java" e alguma versão estável (8, 11, 14 e 16).


### 4º passo - JEE (Java Enterprise Edition) no NetBeans

Com o NetBeans aberto, clique em "File" -> "New Project".

No assistente, selecionar "Java with Gradle" (bloco da direita) e "Web Application" (bloco da esquerda). Clica em next.

Na tela seguinte o assistente irá informar que o módulo JEE não está ativo. Aguarde un pouquinho e clique no botão "Download" assim que ele aparecer. Um novo assistente será exibido. Basta seguir normalmente a instalação.

Feito isso você poderá cancelar a criação do projeto.


### 5º passo - Adicionar o TonCat ao NetBeans

Baixar o TonCat EE 9 [DESTE LINK](https://tomcat.apache.org/download-90.cgi) (não baixar o "servive installer", apenas o pacote para seu sistema operacional).

Extrair normalmente para um local seguro, sem espaços e/ou caracteres especiais. 

Abrir o NetBeans 12, clicar em "Window" -> "Services" e no menu lateral (esquerda) que for exibido, clicar com o botão direito em "Servers" e "Add Server".

No assistente que for exibido, selecionar o "TonCat" (primeira linha), clicar em "Next". No campo "Server Location", clicar no botão "Browse" e procurar a pasta onde você extraiu o arquivo anterior. Definir um usuário e uma senha que **você não irá esquecer**. Dica: root, root OU admin, admin. Apertar "Finish".

Aguardar o NB realizar as configurações automáticas. Clicar com o botão direito no servidor adicionado (no mesmo menu lateral anterior), e selecionar "Start" Aguardar. Se aparecer uma "setinha" verde, ele está ok e pronto para ser utilizado.


## Ementa básica da disciplina

O objetivo dessa disciplina é desenvolver aplicações Web utilizando JEE como tecnologia de backend.

Durante as aulas, que são 100% práticas, o professor utilizará recursos como JSP, Servlets, JavaBeans, Modelo MCV, Servidores de Aplicação, Bancos de Dados, Cookies e Sessões, deploy de projetos etc.


## Critérios de avaliação

Durante o semestre o professor fornecerá de 4 a 6 atividades de múltipla escolha, via forms, através deste git. Todas as atividades duram ao menos 14 dias.

A média final do professor é calcula simplesmente pela média de suas atividades, acrescentados eventuais pontos extras.

Este professor não aplica nenhuma prova durante o semestre, ou seja, utiliza apenas as notas as atividades para compor sua média.

A média final de cada disciplina é calculada, **normalmente** da seguinte forma:

```
Média Final = (0,4 * Avaliação Integrada) + (0,6 * Nota do professor)
```

Avaliação integrada é uma avaliação a ser marcada pela coordenação que ocorre durante uma de suas aulas e engloba, em uma única prova, todos os conceitos das disciplinas do módulo. Na prova integrada também podem ser cobrados conceitos de conhecimentos gerais.

Este professor não utiliza faltas como critério de avaliação.


## Links interessantes:

 - [JEE, um caminho prazeroso e interessante](https://www.devmedia.com.br/jee-um-caminho-prazeroso-e-interessante/3747), DevMedia
 - [Ciclo de Vida de um JSP](https://materialpublic.imd.ufrn.br/curso/disciplina/3/46/5/4)
 - [Introdução à Servlets em Java](https://www.devmedia.com.br/introducao-a-servlets-em-java/25285)
 - [HackerRank](https://www.hackerrank.com/) - Site para estudar desafios de programação
 - [Nextlevelweek](https://nextlevelweek.com/inscricao/7) - Evento de programação



 ## Repositórios interessantes

 - [App Ideas](https://github.com/florinpop17/app-ideas) - Repositório para ideias para treinar programação