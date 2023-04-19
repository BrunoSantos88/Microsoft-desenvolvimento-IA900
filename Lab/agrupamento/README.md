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
