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
<img src="https://user-images.githubusercontent.com/91704169/231480610-99f8ac7d-dd3d-49cd-81aa-bf023c576e97.png" max-width="100px" width="600px" align="centter" alt="riscodeuser">

Apredizagem lab 12
</p>
<img src="https://user-images.githubusercontent.com/91704169/231480682-231c7c3d-0d61-4c3c-9700-1899434df275.png" align="centter" alt="riscodeuser"max-width="100px" width="600px" align="centter" alt="riscodeuser">



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
<img src="https://user-images.githubusercontent.com/91704169/231485020-0a24a08a-209b-4826-bb19-8700402bb281.png" max-width="100px" width="600px" align="centter" alt="riscodeuser">

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
<img src="https://user-images.githubusercontent.com/91704169/231487387-def1664c-e63b-4d02-a464-fdb8bf680940.png"max-width="100px" width="600px" align="centter" alt="riscodeuser">
