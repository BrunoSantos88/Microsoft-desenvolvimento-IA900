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

Apredizagem lab 13-04
</p>
<img src="https://user-images.githubusercontent.com/91704169/231777268-58c395c0-ca3f-41b8-aa4c-3aaac4fe7746.png"  max-width="100px" width="480px" align="left" alt="riscodeuser">

<img src="https://user-images.githubusercontent.com/91704169/231777698-012fca67-3633-4348-8661-50715bf28ff2.png"  max-width="100px" width="480px" align="right" alt="riscodeuser"> </p>


#Exemplos </p>
<img src="https://user-images.githubusercontent.com/91704169/231834294-e39f8150-0a0c-40f3-8f2c-a087ce83b6d2.png" max-width="100px" width="1000" align="center" alt="riscodeuser">



