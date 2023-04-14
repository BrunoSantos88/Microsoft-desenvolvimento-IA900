# Explore o reconhecimento óptico de caracteres

Um desafio comum da visão computacional é detectar e interpretar o texto em uma imagem. Esse tipo de processamento costuma ser chamado de reconhecimento óptico de caracteres (OCR). A API de leitura da Microsoft fornece acesso aos recursos de OCR.

Para testar os recursos da API Read, usaremos um aplicativo de linha de comando simples executado no Cloud Shell. Os mesmos princípios e funcionalidades se aplicam a soluções do mundo real, como sites ou aplicativos de telefone.

Use o serviço de visão computacional para ler texto em uma imagem
O serviço cognitivo de visão computacional fornece suporte para tarefas de OCR, incluindo:

Uma API de leitura otimizada para documentos maiores. Essa API é usada de forma assíncrona e pode ser usada para texto impresso e manuscrito.
Criar um recurso de Serviços Cognitivos
Você pode usar o serviço de Visão Computacional criando um recurso de Visão Computacional ou um recurso de Serviços Cognitivos .

Caso ainda não tenha feito isso, crie um recurso de Serviços Cognitivos em sua assinatura do Azure.

Em outra guia do navegador, abra o portal do Azure em https://portal.azure.com , entrando com sua conta da Microsoft.

Clique no botão ＋Criar um recurso , procure por Serviços Cognitivos e crie um recurso de Serviços Cognitivos com as seguintes configurações:
Assinatura : sua assinatura do Azure .
Grupo de recursos : selecione ou crie um grupo de recursos com um nome exclusivo .
Região : Escolha qualquer região disponível .
Nome : Digite um nome exclusivo .
Tipo de preço : Standard S0
Ao marcar esta caixa, reconheço que li e compreendi todos os termos abaixo : Selecionado.
Revise e crie o recurso e aguarde a conclusão da implantação. Em seguida, vá para o recurso implantado.

Visualize a página Chaves e Endpoint para seu recurso de Serviços Cognitivos. Você precisará do endpoint e das chaves para se conectar a partir de aplicativos cliente.
