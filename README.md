# Terminal Linux e Shell Scripting

Documentação para manipulação no terminal Linux através de shell scripting

## Sumário
* Tabela de Comandos 
* Manipulação de arquivos e pastas
* Editores de Texto
* Processamento de Texto
* Streams, pipes e redirecionamentos
* Gerenciamento de processos
* Compactação e Descompactação de arquivos
* Gerenciamento de usuários
* Sistema de Arquivos
* Shell Scripting
* Miscelâneo
* Configuração de Redes
* SSH e HTTP

## Tabela de comandos

| Comando | Descrição |
|----|----------------|
| cd | Muda de diretório |
| ls | Lista os arquivos do diretório |
| mkdir | Cria novo diretório |
| mv | Move/Renomeia arquivos|
| cp | Copia arquivos |
| rm | Deleta arquivos |
| echo | Printa strings no terminal | 
| touch | Cria/Altera arquivos |
| find | Busca arquivos recebendo o diretório e o nome do arquivo |
| nano | Edita arquivos |
| vim | Edita arquivos |
| less | Exibe conteúdo do arquivo |
| cat | Lista o conteúdo de um arquivo |
| head | Exibe as primeiras linhas de um arquivo |
| tail | Exibe as últimas linhas de um arquivo |
 

## Manipulação de arquivos e pastas

### Diretório raiz

Para análisar a hierarquia dos diretórios principais do Linux, vamos ao diretório raiz e análisando os elementos, vemos os seguintes arquivos:

~~~
cd /
ls -l
 ~~~
![print 1] (/img/print1.png)

Desses diretórios encontramos:
* **bin**: guarda todos os executáveis padrões e essenciais
* **boot**: armazena arquivos relacionados à parte central do sistema operacional, o kernel
* **cdroom**: monta automaticamente as imagens de cdrom
* **dev**: cada um dos dispositivos físicos e memória são mapeados pelo linux e guardados nesse diretório
* **etc**: armazena arquivos de configuração, tanto de serviços como o próprio linux
* **home**: armazena todos os arquivos de todos os usuários
* **lib**: armazena as bibliotecas instaladas no linux
* **opt**: armazena programas, principalmente softwares grandes
* **root**: armazena os arquivos do usuário *root*
* **sbin**: guarda os executáveis que só podem ser utilizados pelo super usuário (*usuário root*)
* **sys**: guarda informações sobre o sistema operacional da máquina
* **tmp**: diretório utulizado por aplicações que guardam informações temporárias
* **usr**:  armazena arquivos, jogos, bibliotecas gerais e entre outras informações próprias do usuário
* **var**: guarda o status das execuções atuais do sistema

### Comando *ls*

Podemos usar variações do comando *ls* para a exibição dos arquivos em um diretório.

| Comando | Descrição |
|----|----------------|
| ls /diretório | Comando relativo, exibe listagem dentro do diretório citado |
| ls -l| Lista os arquivos do diretório em forma de lista com mais informações|
| ls -a | Exibe arquivos escondidos (aqueles que começam com **.** na frente)|
| ls -t | Lista os arquivos em data crescente |
| ls -r | Lista os arquivos em data decrescente |
| ls -S | Lista os diretórios em ordem crescente de espaço ocupado |

### Comando *rm*

Podemos usar variações do comando *rm* para remover arquivos de um diretório.

| Comando | Descrição |
|----|----------------|
| rm /diretório/arquivo | Comando relativo, exclui arquivo dentro do diretório citado |
| rm -r | Exclui recursivamente, serve para apagar diretórios |
| rm -f | Exclui sem promptar os arquivos |
| rm *.pdf | Exclui todos os arquivos com a extensão .pdf |
| rm lista* | Exclui todos os arquivos que começam com *lista* |

### Comando *find*

Para utilizar esse comando basta seguir os passos:
~~~
find /diretorio -name nome_arquivo
~~~

Para procurar todos os arquivos que começam com *"lista"*:
~~~
find /diretorio -name "lista*"
~~~

Para procurar arquivos sem distinção de letra maiúscula ou minúscula:
~~~
find /diretorio -iname nome_arquivo
~~~

## Editores de Texto

No que se trata de editores de texto, o Linux possui dois principais: **NANO** e **VIM**

### NANO

O editor de texto NANO é um editor de texto mais simples, com todas as opções básicas. Um exemplo do layout desse editor pode ser visto abaixo:

![print 2] (/img/print2.png)

Para acessar o editor basta inserir o comando
~~~
nano nome_arquivo
~~~

### VIM

O editor de texto VIM é um editor de texto mais robusto, herdando do editor VI muitas caracteristicas. Para instalar esse editor basta digitar:

~~~
sudo apt-get install vim
~~~

Ao abrir o VIM, ele é iniciado no modo de comando, digitando algum comando ele irá executar sobre o texto no arquivo. Para entrar no modo de edição basta clicar na tecla *i*. Para voltar ao modo de comando basta clicar na tecla *esc*. Outros comandos podem ser vistos abaixo

| Tecla | Ação |
| --- | --- |
| esc | Retorna ao modo de comando |
| i | Entra no modo inserção de texto |
| v | Modo visual para selecionar palavras |
| y | Copia porção selecionada |
| x | Recorta um porção selecionada |
| p | Cola porção selecionada |
| u | Volta uma alteração|
| ctrl + r | Volta uma alteração |
| ctrl + v | Permite a seleção por coluna |
| : w | Salva arquivo |
| : q | Sair do editor de texto |
| :set paste + i| Recebe pedaço de arquivo de modo organizado | 
| :set nu | Exibe quantidade de linhas |

## Processamento de Texto

No arquivo *arq1.txt*, são apresentados cinco parágrafos de texto, dos quais vamos trabalhar com o processamento. Já nos arquivos *arq2.txt* e *arq3.txt*, são apresentados 1 parágrafo em cada arquivo.

Utilizando o comando *cat* no terminal, podemos concanetar os arquivos e redirecioná-los para um outro arquivo *arq4.txt*:
~~~
cat arq2.txt arq3.txt > arq4.txt
~~~

O comando *less* é utilizado para ver o conteúdo de um arquivo e ele é atualizado em tempo real com as alterações.


## Sterams, pipes e redirecionamentos

**Streams** são os processos de fluxo que são executados por qualquer máquina Linux, essas **streams** podem ser de **entrada** e de **saída**. As streams são mais comuns em programas das linguagens C e C++. A stream de entrada será **stdin**, já as streams de saída serão:
* **stdout** -> stream padãro de saída de qualquer sistema Linux
* **stderr** -> stream utilizada para imprimir erros

O símbolo "**>**" redireciona, por default, o **stdout**. Para redirecionar o **stderr** podemos utilizar "**2>**". Um problema desse redirecionador é que ele sempre reinicia o arquivo, o que pode causar perda de informação.
Os símbolos "**>>**" e "**2>>**" são responsáveis por dar um **append** no arquivo, sem perder informações antigas.

**Pipes** são os redirecionamentos que acontecem entre os processos. Para isso é possível utilizar os redirecionadores ">", ">>" e "|".

## Gerenciamento de processos