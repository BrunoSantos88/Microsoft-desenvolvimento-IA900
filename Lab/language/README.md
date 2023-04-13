# Introdução

A capacidade dos sistemas de computador de processar texto escrito ou impresso é uma área da IA (inteligência artificial) em que a Pesquisa Visual Computacional se encontra com o processamento de idioma natural. Você precisa de recursos de Pesquisa Visual Computacional para "ler" o texto e de recursos de processamento de idioma natural para entendê-lo.

A base do processamento de texto impresso é o OCR (reconhecimento óptico de caracteres), em que é possível treinar um modelo para reconhecer formas individuais como letras, numerais, pontuação ou outros elementos de texto. Grande parte do trabalho inicial na implementação desse tipo de funcionalidade foi realizada pelos serviços de correios para dar ajudar na classificação automática de correspondências com base em CEPs. Desde então, o padrão de leitura de texto evoluiu, e hoje é possível criar modelos que detectam texto escrito ou manuscrito em uma imagem e ler cada linha ou cada palavra.

Neste módulo, vamos nos concentrar no uso de tecnologias de OCR para detectar texto em imagens e convertê-lo em um formato de dados baseado em texto, que pode ser armazenado, impresso ou usado como entrada para processamento ou análise posterior.

Usos do OCR
Reconhecer texto impresso e manuscrito em imagens é benéfico em muitos cenários, como:

anotações
digitalização de formulários, como prontuários médicos ou documentos históricos
digitalização de cheques impressos ou manuscritos para depósitos bancários

# Introdução à API de Leitura no Microsoft Azure

O serviço de Pesquisa Visual Computacional extrai texto de imagens, além de contar com recursos de análise de imagem.

Recursos do Azure para a Pesquisa Visual Computacional
A primeira etapa para usar o serviço de Pesquisa Visual Computacional é criar um recurso para ele em sua assinatura do Azure. Você pode usar qualquer um dos seguintes tipos de recurso:

Pesquisa Visual Computacional: um recurso específico para o serviço de Pesquisa Visual Computacional. Use esse tipo de recurso se você não pretender usar nenhum outro serviço cognitivo ou se desejar controlar a utilização e os custos do recurso de Pesquisa Visual Computacional separadamente.
Serviços Cognitivos: um recurso de serviços cognitivos gerais que inclui a Pesquisa Visual Computacional além de muitos outros serviços cognitivos, como Análise de Texto, Tradução de Texto e outros. Use esse tipo de recurso se planejar usar vários serviços cognitivos e desejar simplificar a administração e o desenvolvimento.
Seja qual for o tipo de recurso que você escolher criar, ele fornecerá duas informações necessárias para usá-lo:

Uma chave usada para autenticar aplicativos cliente.
Um ponto de extremidade que fornece o endereço HTTP no qual seu recurso pode ser acessado.




