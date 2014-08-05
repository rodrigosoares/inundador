#Inundador - versão 1.0

*Inundador* é uma ferramenta de envio automático de requisições HTTP. A ferramenta é voltada para análise do comportamento do servidor testado e foi desenvolvida como parte do trabalho de conclusão de curso intitulado "Negação de Serviço na Nuvem", do Bacharelado em Ciência da Computação da Universidade Federal Fluminense.

##Uso

A ferramenta recebe como parâmetros a URL ou o IP do servidor a receber as requisições, bem como o tempo em segundos entre as requisições. Uso:

`$ ruby inundador.rb [url] [tempo]`

Requer a linguagem Ruby instalada para ser executada.

##Características da versão 1.0

* Requisições sequenciais.
* Execução via console.
* Não forja o endereço IP de origem das requisições.
* Desenvolvida na linguagem Ruby versão 1.9.3.

##Aviso

Esta ferramenta é disponibilizada para fins educativos, com o intuito de servir em pesquisas relacionadas à área de Redes e Segurança da Informação. O autor **não se responsabiliza** pelo mau uso desta ferramenta.
