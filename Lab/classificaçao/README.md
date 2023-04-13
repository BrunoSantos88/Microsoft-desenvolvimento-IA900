# Explorar a classificação de imagens

# RECURSOS DO AZURE PARA A PESQUISA VISUAL COMPUTACIONAL

Para usar o serviço de Pesquisa Visual Computacional é preciso criar um recurso para ele na sua
assinatura do Azure. Você pode usar qualquer um dos seguintes tipos de recurso:

- Pesquisa Visual Computacional: 
um recurso específico para o serviço de Pesquisa Visual
Computacional. Use esse tipo de recurso se você não pretender usar nenhum outro serviço
cognitivo ou se desejar controlar a utilização e os custos do recurso de Pesquisa Visual
Computacional separadamente.

- Serviços Cognitivos: 
Um recurso de serviços cognitivos gerais que inclui a Pesquisa Visual
Computacional além de muitos outros serviços cognitivos, como Análise de Texto, Tradução de
Texto e outros. Use esse tipo de recurso se planejar usar vários serviços cognitivos e desejar
simplificar a administração e o desenvolvimento.

- Seja qual for o tipo de recurso que você escolher criar, ele fornecerá duas
informações necessárias para usá-lo:

- Uma chave usada para autenticar aplicativos cliente.
Um ponto de extremidade que fornece o endereço HTTP no qual seu recurso
pode ser acessado.

- Depois de criar um recurso adequado na sua assinatura, você pode enviar imagens
para que o serviço de Pesquisa Visual Computacional execute uma ampla gama de
tarefas analíticas.


- Marcação de recursos visuais
As descrições de imagens geradas pelo Computer Vision são baseadas em um
conjunto de milhares de objetos reconhecíveis, que podem ser usados para sugerir
tags para a imagem.
Essas tags podem ser associadas à imagem como metadados que resumem os
atributos da imagem; e pode ser particularmente útil se você deseja indexar uma
imagem junto com um conjunto de termos-chave que podem ser usados para
pesquisar imagens com atributos ou conteúdos específicos.

Por exemplo, as tags retornadas para a imagem do Empire State Building incluem:
- arranha-céu
- torre
- prédio

# Detecção de marcas

- Se uma marca conhecida for detectada, o serviço retornará uma resposta que
contém o nome da marca, uma pontuação de confiança (de 0 a 1 indicando quão
positiva é a identificação) e uma caixa delimitadora (coordenadas) para onde na
imagem a marca detectada foi encontrado.

# Detecção de conteúdo específico do domínio

Ao categorizar uma imagem, o serviço Computer Vision
oferece suporte a dois modelos de domínio especializados:
- Celebridades - O serviço inclui um modelo que foi
treinado para identificar milhares de celebridades
conhecidas do mundo dos esportes, entretenimento e
negócios.
- Marcos - O serviço pode identificar marcos famosos,
como o Taj Mahal e a Estátua da Liberdade.

- Por exemplo, ao analisar a imagem a seguir para pontos de
referência, o serviço de Visão Computacional identifica a Torre
Eiffel, com uma confiança de 99,41%.


- Pratica laboratorio 
Exercício – Analisar imagens com o serviço de Pesquisa Visual Computacional </p>
link: https://learn.microsoft.com/pt-br/training/modules/analyze-images-computer-vision/3-analyze-images

- Laboratorio Dia 12/04  </p>
link https://learn.microsoft.com/pt-br/training/modules/analyze-images-computer-vision/3-analyze-images

# Na página Dados , na guia Ativos de dados , selecione Criar . Em seguida, configure um ativo de dados com as seguintes configurações:

Tipo de dados :
Nome : pinguin-data
Descrição : dados do pinguim
Tipo de conjunto de dados : tabular
Fonte de dados : de arquivos da Web
URL da Web :
URL da Web : https://aka.ms/penguin-data
Ignorar validação de dados : não selecione
Configurações :
Formato do arquivo : Delimitado
Delimitador : Vírgula
Codificação : UTF-8
Cabeçalhos de coluna : Somente o primeiro arquivo tem cabeçalhos
Pular linhas : nenhuma
O conjunto de dados contém dados de várias linhas : não selecione
Esquema :
Incluir todas as colunas exceto Caminho
Revise os tipos detectados automaticamente

configuraçao Lab 12
</p>
<img src="https://user-images.githubusercontent.com/91704169/231480610-99f8ac7d-dd3d-49cd-81aa-bf023c576e97.png" max-width="100px" width="800px" align="centter" alt="riscodeuser">

Apredizagem lab 12
</p>
<img src="https://user-images.githubusercontent.com/91704169/231480682-231c7c3d-0d61-4c3c-9700-1899434df275.png" align="centter" alt="riscodeuser">



# Na lista suspensa Criar pipeline de inferência , clique em Pipeline de inferência em tempo real 

Criar um pipeline de inferência
No estúdio Azure Machine Learning, expanda o painel esquerdo selecionando o ícone de menu no canto superior esquerdo da tela. Clique em Trabalhos (em Ativos ) para ver todos os trabalhos executados. Selecione o experimento mslearn-penguin-training e, em seguida, selecione o pipeline Train Penguin Clustering .

Localize o menu acima da tela e clique em Create inference pipeline . Pode ser necessário expandir a tela até o máximo e clicar no ícone … no canto superior direito da tela para encontrar Create inference pipeline no menu.

Captura de tela do local do pipeline de inferência de criação.

Na lista suspensa Criar pipeline de inferência , clique em Pipeline de inferência em tempo real . Após alguns segundos, uma nova versão de seu pipeline chamada Train Penguin Clustering-real time inference será aberta.

Navegue até Configurações no menu superior direito. Em Detalhes do rascunho , renomeie o novo pipeline para Predict Penguin Clusters e revise o novo pipeline. As transformações e o modelo de cluster em seu pipeline de treinamento fazem parte desse pipeline. O modelo treinado será usado para pontuar os novos dados. O pipeline também contém uma saída de serviço da web para retornar resultados.

Você fará as seguintes alterações no pipeline de inferência:

Apredizagem lab 12
</p>
<img src="https://user-images.githubusercontent.com/91704169/231485020-0a24a08a-209b-4826-bb19-8700402bb281.png">

 # Deploy
 
- Implante um novo endpoint em tempo real, usando as seguintes configurações:
Nome : prever-pinguim-clusters
Descrição : Pinguins de cluster.
Tipo de computação : instância de contêiner do Azure
Aguarde até que o serviço da Web seja implantado - isso pode levar vários minutos.

Para visualizar o status da implantação, expanda o painel esquerdo selecionando o ícone de menu no canto superior esquerdo da tela. Visualize a página Endpoints (em Ativos ) e selecione predict-pinguim-clusters . Quando a implantação for concluída, o estado de implantação mudará para íntegro .

este o serviço
Na página Endpoints , abra o endpoint em tempo real predict-penguin-clusters e selecione a guia Teste .


Endpoint lab 12
</p>
<img src="https://user-images.githubusercontent.com/91704169/231487387-def1664c-e63b-4d02-a464-fdb8bf680940.png">

# LAB dia 13/04 

# Classificaçao de imagens
link: https://learn.microsoft.com/pt-br/training/modules/classify-images-custom-vision/3-create-image-classifier

Criar um projeto de Visão Personalizada
Para treinar um modelo de detecção de objetos, você precisa criar um projeto de Visão Personalizada com base em seu recurso de treinamento. Para fazer isso, você usará o portal de Visão Personalizada.

Baixe e extraia as imagens de treinamento do https://aka.ms/fruit-images. Essas imagens são fornecidas em uma pasta compactada que, quando extraída, contém subpastas chamadas maçã, banana e laranja.

Em outra guia do navegador, abra o portal de Visão Personalizada em https://customvision.ai. Caso solicitado, entre usando a conta Microsoft associada à sua assinatura do Azure e concorde com os termos de serviço.

No portal de Visão Personalizada, crie um projeto com as seguintes configurações:

Nome: Check-out na Mercearia
Descrição: classificação de imagem para mercearia
Recurso: o recurso de Visão Personalizada criado anteriormente
Tipos de Projeto: Classificação
Tipos de classificação: Multiclasse (tag única por imagem)
Domínios: comida

# O que é a detecção de objetos?

Vamos dar uma olhada no exemplo de detecção de objeto. Considere a seguinte imagem:
Various pieces of fruit
Um modelo de detecção de objetos pode ser usado para identificar os objetos individuais nesta imagem e retornar as seguintes informações:
A banana, and orange, and an apple, each indicated by a bounding box and a probability score
Observe que um modelo de detecção de objetos retorna as seguintes informações:
A classe de cada objeto identificado na imagem.
A pontuação de probabilidade da classificação de objetos (que você pode interpretar como a confiança de a classe prevista estar correta)
As coordenadas de uma caixa delimitadora para cada objeto.

Treinamento e avaliação de modelo
Para treinar o modelo, você pode usar o portal da Visão Personalizada ou, se tiver a experiência de codificação necessária, poderá usar um dos SDKs (Software Development Kits) específicos a uma linguagem de programação do Serviço de Visão Personalizada. O treinamento de um modelo de detecção de objetos pode levar algum tempo, dependendo do número de imagens de treinamento, classes e objetos dentro de cada imagem.

O processo de treinamento de modelo é um processo iterativo no qual o Serviço de Visão Personalizada treina repetidamente o modelo usando alguns dos dados, mas mantém alguns para avaliar o modelo. Ao final do processo de treinamento, o desempenho do modelo treinado é indicado pelas seguintes métricas de avaliação:

Precisão: Que percentual de previsões de classe o modelo identificou corretamente? Por exemplo, se o modelo prevê que dez imagens são laranjas, das quais oito eram mesmo laranjas, a precisão é de 0,8 (80%).
Recall: Qual percentual das previsões de classe feitas pelo modelo estava correta? Por exemplo, se houver dez imagens de maçãs e o modelo tiver encontrado sete delas, o recall será de 0,7 (70%).
mAP (Precisão Média): uma métrica geral que leva em consideração a precisão e o recall entre todas as classes).

# Usar o modelo para previsão
Depois que você tiver treinado o modelo e estiver satisfeito com o desempenho avaliado dele, poderá publicar o modelo em seu recurso de previsão. Ao publicar o modelo, você pode atribuir um nome a ele (o padrão é "IteraçãoX", em que X é o número de vezes que você treinou o modelo).

Para usar seu modelo, os desenvolvedores de aplicativos cliente precisam das seguintes informações:

ID de Projeto: a ID exclusiva do projeto de Visão Personalizada que você criou para treinar o modelo.
Nome do modelo: o nome que você atribuiu ao modelo durante a publicação.
Ponto de extremidade de previsão: o endereço HTTP dos pontos de extremidade do recurso de previsão no qual você publicou o modelo (não o recurso de treinamento).
Chave de previsão: a chave de autenticação do recurso de previsão no qual você publicou o modelo (não o recurso de treinamento).


# Exercício – Criar uma solução de detecção de objetos

A detecção de objetos é uma forma de pesquisa visual computacional na qual um modelo de machine learning é treinado para classificar instâncias individuais de objetos em uma imagem e indicar uma caixa delimitadora que marca o local. Você pode pensar nisso como uma progressão da classificação de imagem (na qual o modelo responde à pergunta "de que se trata essa imagem?") para criar soluções em que podemos perguntar ao modelo "quais objetos estão nessa imagem e onde eles estão?".

link: https://learn.microsoft.com/pt-br/training/modules/detect-objects-images-custom-vision/3-create-object-detection-solution

#  Detectar e analisar rostos com o serviço de Detecção Facial

Detecção facial
A detecção facial envolve a identificação de regiões de uma imagem que contêm um rosto humano, normalmente retornando as coordenadas da caixa delimitadora que formam um retângulo em volta do rosto, desta maneira:

Análise facial
Mudando além da detecção facial simples, alguns algoritmos também podem retornar outras informações, como pontos de referência faciais (nariz, olhos, sobrancelhas, lábios e outros).

Apredizagem lab 14
</p>
<img src="https://user-images.githubusercontent.com/91704169/231777268-58c395c0-ca3f-41b8-aa4c-3aaac4fe7746.png"  max-width="100px" width="800px" align="left" alt="riscodeuser">

<img src="https://user-images.githubusercontent.com/91704169/231777698-012fca67-3633-4348-8661-50715bf28ff2.png"  max-width="100px" width="400px" align="right" alt="riscodeuser">



