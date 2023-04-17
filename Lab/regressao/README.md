# Regressão linear múltipla e R-quadrado

Nesta unidade, contrastaremos a regressão linear múltipla com a regressão linear simples . Também veremos uma métrica chamada R 2 , que é comumente usada para avaliar a qualidade de um modelo de regressão linear.

# Regressão linear múltipla
A regressão linear múltipla modela a relação entre vários recursos e uma única variável. Matematicamente, é o mesmo que a regressão linear simples e geralmente é ajustada usando a mesma função de custo, mas com mais recursos.

Em vez de modelar um único relacionamento, essa técnica modela simultaneamente vários relacionamentos, que trata como independentes um do outro. Por exemplo, se estivermos prevendo o quão doente um cachorro ficará com base em sua idade e body_fat_percentage, duas relações serão encontradas:

Como a idade aumenta ou diminui a doença
Como body_fat_percentage aumenta ou diminui a doença
Se estivermos trabalhando apenas com dois recursos, podemos visualizar nosso modelo como uma superfície plana 2D, assim como podemos modelar uma regressão linear simples como uma linha. Vamos explorar isso no próximo exercício.

# A regressão linear múltipla tem suposições
O fato de que o modelo espera que as características sejam independentes é chamado de suposição do modelo. Quando as suposições do modelo não são verdadeiras, o modelo pode fazer previsões enganosas.

Por exemplo, a idade provavelmente prediz como os cães ficam doentes, conforme os cães mais velhos ficam mais doentes, juntamente com se os cães foram ensinados a jogar frisbee: cães mais velhos provavelmente sabem jogar frisbee. Se incluíssemos idade e know_frisbee em nosso modelo como recursos, provavelmente nos diria que know_frisbee é um bom preditor de uma doença e subestimaríamos a importância da idade. Isso é um pouco absurdo, porque saber que o frisbee provavelmente não causa doenças. Por outro lado, dog_breed também pode ser um bom preditor de doença, mas não há razão para acreditar que idade prediz dog_breed, então seria seguro incluir ambos em um modelo.

# Qualidade do ajuste: R 2
Sabemos que as funções de custo podem ser usadas para avaliar o quão bem um modelo se ajusta aos dados nos quais é treinado. Os modelos de regressão linear têm uma medida relacionada especial chamada R 2 (“R-quadrado”). R 2 é um valor entre 0 e 1 que nos diz o quão bem um modelo de regressão linear ajusta os dados. Quando as pessoas falam sobre as correlações serem fortes, geralmente querem dizer que o valor de R 2 era grande.

R 2 usa a matemática além do que pretendemos abordar neste curso, mas podemos pensar nisso intuitivamente. Vamos considerar o exercício anterior em que examinamos a relação entre idade e core_temperature. Um R 2 de 1 significaria que anos poderiam ser usados para prever perfeitamente quem tinha temperatura alta e quem tinha temperatura baixa. Em contraste, um 0 significaria simplesmente que não havia relação entre anos e temperatura.
