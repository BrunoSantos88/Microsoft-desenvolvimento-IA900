# Introdução

A detecção de anomalias é uma técnica de inteligência artificial usada para determinar se os valores de uma série estão dentro dos parâmetros esperados.

Há muitos cenários em que a detecção de anomalias é útil. Por exemplo, um sistema Smart HVAC pode usar a detecção de anomalias para monitorar temperaturas em um edifício e gerar um alerta se a temperatura estiver acima ou abaixo do valor esperado para um determinado período de tempo.

# Os cenários abrangem:

monitorar a pressão arterial
avaliar o tempo médio entre falhas de produtos de hardware
comparar despesas mês a mês nos custos de produtos
O Detector de Anomalias do Azure é um serviço baseado em nuvem que ajuda a monitorar e detectar anormalidades em seus dados de série temporal e em tempo real.

Objetivos de aprendizagem
Depois de concluir este módulo, você poderá:

Descrever o que é a detecção de anomalias
Descrever como o serviço do Detector de Anomalias pode avaliar dados de série temporal
Definir cenários em que a detecção de anomalias pode ser aplicada para dados históricos e em tempo real
Pré-requisitos
Capacidade de navegar pelo portal do Azure
Conhecimento básico dos serviços do Azure

# O que é o Detector de Anomalias?

# Anomalias são valores que estão fora dos valores ou do intervalo de valores esperados.


No gráfico que ilustra os dados de série temporal, há uma área sombreada clara indicando o limite ou o intervalo de sensibilidade. A linha azul contínua é usada para indicar os valores medidos. Quando um valor medido está fora do limite sombreado, um ponto laranja é usado para indicar que o valor é considerado uma anomalia. O limite de sensibilidade é um parâmetro que você pode especificar ao chamar o serviço. Ele permite que você defina essas configurações de limite para ajustar os resultados.

A detecção de anomalias é considerada o ato de identificar eventos, ou observações, que diferem significativamente do restante dos dados que estão sendo avaliados. Uma detecção de anomalias minuciosa leva a uma solução de problemas imediata, ajudando a evitar perda de receita e a manter a reputação da marca.

# Serviço do Detector de Anomalias do Azure
O Detector de Anomalias faz parte da categoria Serviços de Decisão nos Serviços Cognitivos do Azure. Ele é um serviço baseado em nuvem que permite monitorar e detectar anomalias em dados de série temporal. Ele não exige que você tenha conhecimento em aprendizado de máquina. Você pode usar a API REST para integrar o Detector de Anomalias a seus aplicativos com relativa facilidade. O serviço usa o conceito de estratégia de "um parâmetro". O principal parâmetro que você precisa personalizar é o de "Sensibilidade", que vai de 1 a 99, de modo a ajustar o resultado para se adequar ao cenário. O serviço pode detectar anomalias em dados históricos de série temporal e também em dados em tempo real, como entrada de streaming de dispositivos IoT, sensores ou outras fontes de entrada de streaming.


# Como funciona o Detector de Anomalias

O serviço do Detector de Anomalias identifica anomalias que existem fora do escopo de um limite. O limite é definido usando um valor de sensibilidade. Por padrão, os limites superior e inferior para detecção de anomalias são calculados usando conceitos conhecidos como expectedValue, upperMargin e lowerMargin. Os limites superior e inferior são calculados usando esses três valores. Se um valor exceder o limite, ele será identificado como uma anomalia. Você pode ajustar os limites aplicando marginScale às margens superior e inferior, conforme demonstrado pela fórmula a seguir.

upperBoundary = expectedValue + (100 - marginScale) * upperMargin

# Formato de dados
O serviço do Detector de Anomalias aceita dados no formato JSON. Você pode usar qualquer dado numérico que tenha registrado ao longo do tempo. Os principais aspectos dos dados enviados incluem a granularidade, um carimbo de data/hora e um valor registrado para esse carimbo de data/hora. Um exemplo de objeto JSON que você pode enviar para a API é mostrado neste exemplo de código. A granularidade é definida como horária e é usada para representar as temperaturas em graus Celsius que foram registradas nos carimbos de data/hora indicados.

# Exemplo </p>
{ 
    "granularity": "hourly",
    "series": [
      {
        "timestamp": "2021-03-01T01:00:00Z",</p>
        "value": -10.56
      },
      {
        "timestamp": "2021-03-02T02:00:00Z",
        "value": -8.30
      },
      {
        "timestamp": "2021-03-02T03:00:00Z",
        "value": -10.30
      },
      {
        "timestamp": "2021-03-02T04:00:00Z",
        "value": 5.95
      },
    ]
}

O serviço dá suporte a um máximo de 8.640 pontos de dados. No entanto, o envio de muitos pontos de dados no mesmo objeto JSON pode resultar em latência na resposta. Você pode melhorar a resposta dividindo os pontos de dados em partes menores (janelas) e enviando-os em uma sequência.

O mesmo formato de objeto JSON é usado em um cenário de streaming. A principal diferença é que você enviará um único valor em cada solicitação. O método de detecção de streaming comparará o valor atual que está sendo enviado com o valor enviado anteriormente.

Recomendações de consistência de dados
Caso seus dados tenham valores ausentes na sequência, considere seguir as recomendações abaixo.

A amostragem ocorre a cada poucos minutos e tem menos de 10% do número esperado de pontos ausentes. Nesse caso, o impacto deve ser insignificante nos resultados da detecção.
Caso você tenha mais de 10% de pontos ausentes, há opções para ajudar a "preencher" o conjunto de dados. Considere usar um método de interpolação linear para preencher os valores ausentes e completar o conjunto de dados. Isso preencherá as lacunas com valores distribuídos uniformemente.
O serviço do Detector de Anomalias fornecerá os melhores resultados se os dados de série temporal forem distribuídos de maneira uniforme. Se os dados forem distribuídos de forma mais aleatória, você poderá usar um método de agregação para criar um conjunto de dados de distribuição mais uniforme.

# Quando usar o Detector de Anomalias

O serviço do Detector de Anomalias dá suporte ao processamento em lotes de dados de série temporal e à detecção de anomalias de último ponto de dados em tempo real.

# Detecção em lote
A detecção em lote envolve a aplicação do algoritmo a uma série de dados inteira de uma vez. O conceito de dados de série temporal envolve a avaliação de um conjunto de dados como um lote. Use sua série temporal para detectar todas as anomalias que podem existir em seus dados. Essa operação gera um modelo que usa todos os dados da série temporal, sendo que cada ponto analisado usa o mesmo modelo.

É melhor usar a detecção em lote quando seus dados contêm:

Dados de série temporal de tendência simples, com picos ou quedas ocasionais
Dados da série temporal sazonal com anomalias ocasionais
A sazonalidade é considerada um padrão que ocorre em intervalos regulares em seus dados. Os padrões horários, diários ou mensais são exemplos disso. Usar dados sazonais e especificar um período para esse padrão pode ajudar a reduzir a latência na detecção.
Ao usar o modo de detecção em lote, o Detector de Anomalias cria um único modelo estatístico com base em todo o conjunto de dados que você transmite para o serviço. Com base nesse modelo, cada ponto de dados no conjunto de dados é avaliado e as anomalias são identificadas.

# Exemplo de detecção em lote
Considere uma empresa médica que armazena os estoques em instalações de armazenamento nas quais a temperatura precisa permanecer dentro de um intervalo específico. Para avaliar se o estoque permaneceu armazenado em um intervalo de temperatura seguro nos últimos três meses, precisamos saber:

# A temperatura máxima permitida

a temperatura mínima permitida
a duração aceitável do tempo para que as temperaturas estejam fora do intervalo de segurança
Se você estiver interessado em avaliar a conformidade em relação às leituras históricas, poderá extrair os dados de séries temporais necessários, empacotá-los em um objeto JSON e enviá-los para o serviço do Detector de Anomalias para avaliação. Em seguida, você verá uma exibição histórica das leituras de temperatura ao longo do tempo.

# Detecção em tempo real.
A detecção em tempo real usa dados de streaming comparando os pontos de dados vistos anteriormente com o último ponto de dados para determinar se o último é uma anomalia. Essa operação gera um modelo que usa os pontos de dados que você envia e determina se o ponto de destino (atual) é uma anomalia. Ao chamar o serviço em cada novo ponto de dados gerado, você pode monitorar seus dados conforme são criados.

# Exemplo de detecção em tempo real
Considere um cenário no setor de bebidas carbonatadas em que a detecção de anomalias em tempo real pode ser útil. O dióxido de carbono adicionado aos refrigerantes durante o processo de engarrafamento ou de envasamento precisa permanecer em um intervalo de temperatura específico.

Os sistemas de engarrafamento utilizam um dispositivo conhecido como carbo-cooler para conseguir a refrigeração do produto nesse processo. Se a temperatura cair muito, o produto será congelado no carbo-cooler. Se a temperatura estiver muito quente, o dióxido de carbono não aderirá corretamente à bebida. Em qualquer uma dessas situações, o lote de produtos não poderá ser vendido aos clientes.

Esse cenário de bebidas gaseificadas é um exemplo de onde você pode usar a detecção de streaming para tomada de decisões em tempo real. Ele pode ser vinculado a um aplicativo que controla os equipamentos da linha de produção de engarrafamento. Você pode usá-lo para alimentar monitores que retratam as temperaturas do sistema para a estação de controle de qualidade. Um técnico de serviço também pode usá-lo para identificar as necessidades de manutenção e o potencial de falha em equipamentos.

Você pode usar o serviço do Detector de Anomalias para criar um aplicativo de monitoramento configurado com os critérios acima para executar o monitoramento de temperatura em tempo real. Você pode executar a detecção de anomalias usando técnicas de streaming e detecção de lote. A detecção de streaming é mais útil para monitorar requisitos de armazenamento críticos que devem ser acionados imediatamente. Os sensores monitorarão a temperatura dentro do compartimento e enviarão essas leituras para seu aplicativo ou um hub de eventos no Azure. O Detector de Anomalias avaliará os pontos de dados de streaming e determinará se um ponto é uma anomalia.

# Exercício Pratico

Para testar os recursos do serviço de Detecção de Anomalias, usaremos um aplicativo de linha de comando simples que é executado no Cloud Shell. Os mesmos princípios e funcionalidades se aplicam a soluções do mundo real, como sites ou aplicativos de telefone.

Link: https://learn.microsoft.com/pt-br/training/modules/intro-to-anomaly-detector/4a-exercise
