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

# Conhecimento de Formulários (cupom)

Usando o Reconhecimento de Formulários, podemos inserir uma imagem de
um recibo como o que aparece acima e retornar informações úteis que
possam ser necessárias em um pedido de reembolso de despesas, incluindo:

O nome, o endereço e o número de telefone do comerciante. </p>
A data e a hora da compra. </p>
A quantidade e o preço de cada item adquirido. </p>
Os valores de subtotal, imposto e total. </p>

# O Reconhecimento de Formulários no Azure

Fornece funcionalidades de processamento inteligente de
formulários que você pode usar para automatizar o processamento de dados em documentos como
formulários, faturas e recibos.

Ele combina OCR (reconhecimento óptico de caracteres) de última geração com modelos de previsão
que podem interpretar dados de formulário por:

Correspondência de nomes de campos com valores. </p>
Processamento de tabelas de dados.  </p>
Identificação de tipos específicos de campo, como datas, números de telefone, endereços, totais e
outros.

# Exercício – Analisar recibos com o Reconhecimento de Formulários

No campo IA (inteligência artificial) da pesquisa visual computacional, o OCR (reconhecimento óptico de caracteres) é comumente usado para ler documentos impressos ou manuscritos. Geralmente, o texto é simplesmente extraído dos documentos em um formato que possa ser usado em processamento ou análise posterior.

Um cenário de OCR mais avançado é a extração de informações de formulários, como pedidos de compra ou faturas, com uma compreensão semântica do que os campos no formulário representam. O serviço Reconhecimento de Formulários foi projetado especificamente para esse tipo de problema de IA.

O Reconhecimento de Formulários usa modelos de machine learning treinados para extrair texto de imagens de faturas, recibos e muito mais. Embora outros modelos de pesquisa visual computacional possam capturar texto, o Reconhecimento de Formulários também captura a estrutura do texto, como pares chave/valor e informações em tabelas. Assim, em vez de ter que digitar manualmente entradas de um formulário em um banco de dados, você pode capturar automaticamente as relações entre o texto do arquivo original.

Para testar os recursos do serviço de Reconhecimento de Formulários, usaremos um aplicativo de linha de comando simples que é executado no Cloud Shell. Os mesmos princípios e funcionalidades se aplicam a soluções do mundo real, como sites ou aplicativos de telefone.

Criar um recurso dos Serviços Cognitivos
Você pode usar o serviço de Reconhecimento de Formulários com a criação de um recurso do Reconhecimento de Formulários ou de um recurso dos Serviços Cognitivos.

Caso ainda não tenha feito isso, crie um recurso dos Serviços Cognitivos em sua assinatura do Azure.

Em outra guia do navegador, abra o portal do Azure em https://portal.azure.com e entre com sua conta Microsoft.

Clique no botão ＋ Criar um recurso, procure Serviços Cognitivos e crie um recurso dos Serviços Cognitivos com as seguintes configurações:

Assinatura: sua assinatura do Azure.
Grupo de recursos: selecione ou crie um grupo de recursos com um nome exclusivo.
Região: escolha qualquer região disponível:
Nome: insira um nome exclusivo.
Tipo de Preço: S0
Confirmo que li e entendi os avisos: selecionado.
Examine e crie o recurso e aguarde a conclusão da implantação. Em seguida, vá para o recurso implantado.

Exiba a página Chaves e Ponto de Extremidade do recurso dos Serviços Cognitivos. Você precisará do ponto de extremidade e das chaves para se conectar em aplicativos cliente.

LAB 14/04
link:https://learn.microsoft.com/pt-br/training/modules/analyze-receipts-form-recognizer/3-analyze-receipts

# Recursos do Azure para Compreensão da Linguagem Coloquial
Para cada uma das tarefas de criação e previsão, será necessário obter um recurso em sua assinatura do Azure. É possível usar os seguintes tipos de recursos:

Serviço de Linguagem: um recurso que permite que você crie aplicativos com funcionalidades de reconhecimento de linguagem natural líderes do setor sem experiência em aprendizado de máquina.
Serviços Cognitivos: um recurso genérico dos Serviços Cognitivos que inclui a Compreensão da Linguagem Coloquial e vários outros Serviços Cognitivos. Será possível usar esse tipo de recurso somente para a previsão.
A separação de recursos é útil quando você deseja acompanhar a utilização de recursos para uso do Serviço de Linguagem separadamente dos aplicativos cliente usando todos os aplicativos dos Serviços Cognitivos.

Quando seu aplicativo cliente usa um recurso dos Serviços Cognitivos, você pode gerenciar o acesso a todos os serviços cognitivos que estão sendo usados, incluindo o Serviço de Linguagem, por meio de um único ponto de extremidade e chave.

# Criação
Depois de elaborar um recurso de criação, será possível usá-lo para criar e treinar um aplicativo de Compreensão da Linguagem Coloquial definindo as entidades e as intenções que seu aplicativo preverá, bem como enunciados para cada intenção que poderão ser usados para treinar o modelo de previsão.

A Compreensão da Linguagem Coloquial fornece uma coleção abrangente de domínios predefinidos que incluem intenções e entidades predefinidas para cenários comuns. Você poderá usá-los como ponto de partida para seu modelo. Também será possível criar suas entidades e intenções.

Será possível criar entidades e intenções em qualquer ordem. Será possível criar uma intenção e selecionar palavras nos enunciados de exemplo que você definir para criar entidades para eles. Ou será possível criar as entidades com antecedência e depois mapeá-las para obter palavras nos enunciados enquanto estiver criando as intenções.

É possível escrever códigos para definir os elementos do modelo, no entanto, na maioria dos casos, é mais fácil criar seu modelo usando o portal de Reconhecimento vocal – uma interface baseada na Web para criar e gerenciar aplicativos de Compreensão da Linguagem Coloquial.

LAB 17/04 </p>
Link: https://learn.microsoft.com/pt-br/training/modules/create-language-model-with-language-understanding/3-exercise-create-language-understanding-application

# Exercício – Criar um aplicativo de Compreensão da Linguagem Coloquial

Cada vez mais, esperamos que os computadores sejam capazes de usar a IA para entender comandos falados ou digitados em linguagem natural. Por exemplo, talvez você queira implementar um sistema de automação residencial que permita controlar dispositivos em sua casa usando comandos de voz, por exemplo, "acender a luz" ou "ligar o ventilador", e ter um dispositivo com tecnologia de IA que entenda o comando e execute a ação apropriada.

Para testar as funcionalidades do serviço de Compreensão da Linguagem Coloquial, usaremos um aplicativo de linha de comando que é executado no Cloud Shell. Os mesmos princípios e funcionalidades se aplicam em soluções do mundo real, como sites ou aplicativos de telefone.

