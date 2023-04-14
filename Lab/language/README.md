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

# Use o serviço de Pesquisa Visual Computacional para ler texto

Muitas vezes, uma imagem contém texto. Ele pode ser texto digitado ou manuscrito. Alguns exemplos comuns são imagens com sinais de estrada, documentos digitalizados que estão em um formato de imagem, como formatos de arquivo JPEG ou PNG, ou até mesmo uma imagem tirada de um quadro branco usado durante uma reunião.

O serviço Pesquisa Visual Computacional fornece uma interface de programação de aplicativos (API) que você pode usar para ler textos em imagens: a API de Leitura.

# A API de Leitura

A API de Leitura usa os modelos de reconhecimento mais recentes e é otimizada para imagens que têm uma quantidade significativa de texto ou um ruído visual considerável.

A API de Leitura pode lidar com documentos digitalizados que contém muito texto. Ela também tem a capacidade de determinar automaticamente o modelo de reconhecimento adequado a ser usado, levando em consideração linhas de texto e imagens de suporte com texto impresso, além de reconhecer manuscritos.

Como a API de Leitura pode trabalhar com documentos grandes, ela funciona de forma assíncrona para não bloquear seu aplicativo enquanto ele está lendo o conteúdo e retornando resultados para seu aplicativo. Isso significa que, para usar a API de Leitura, seu aplicativo deve usar um processo de três etapas:

Enviar uma imagem para a API e recuperar uma ID de operação em resposta.
Usa a ID da operação para verificar o status da operação de análise de imagem e aguardar até que ela seja concluída.
Recuperar os resultados da operação.
Os resultados da API de Leitura são organizados na seguinte hierarquia:

Páginas: uma para cada página de texto, incluindo informações sobre o tamanho e a orientação da página.
Linhas: as linhas de texto em uma página.
Palavras - As palavras em uma linha de texto, incluindo as coordenadas da caixa delimitadora e o próprio texto.
Cada linha e palavra inclui coordenadas de caixa delimitadora indicando sua posição na página.

# Exercício – Explorar o reconhecimento óptico de caracteres com a API de Leitura
lab 14/04 </p>
link: https://microsoftlearning.github.io/AI-900-AIFundamentals/instructions/03d-read-text-computer-vision.html

# Reconhecimento de Formularios

O Reconhecimento de Formulários no Azure fornece funcionalidades de processamento inteligente de
formulários que você pode usar para automatizar o processamento de dados em documentos como
formulários, faturas e recibos.

Ele combina OCR (reconhecimento óptico de caracteres) de última geração com modelos de previsão
que podem interpretar dados de formulário por:

▪ Correspondência de nomes de campos com valores.
▪ Processamento de tabelas de dados.
▪ Identificação de tipos específicos de campo, como datas, números de telefone, endereços, totais e
outros.

# conhecimento de Formulários (cupom)

Usando o Reconhecimento de Formulários, podemos inserir uma imagem de
um recibo como o que aparece acima e retornar informações úteis que
possam ser necessárias em um pedido de reembolso de despesas, incluindo:

▪ O nome, o endereço e o número de telefone do comerciante.
▪ A data e a hora da compra.
▪ A quantidade e o preço de cada item adquirido.
▪ Os valores de subtotal, imposto e total.


