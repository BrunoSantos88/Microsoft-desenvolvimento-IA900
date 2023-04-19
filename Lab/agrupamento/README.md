# Introdução

# A detecção de anomalias é uma técnica de inteligência artificial usada para determinar se os valores de uma série estão dentro dos parâmetros esperados.

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
