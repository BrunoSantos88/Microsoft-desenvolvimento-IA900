# Introdução

Esperamos cada vez mais que as soluções de IA (inteligência artificial) aceitem comandos de voz e forneçam respostas faladas. Considere o número crescente de sistemas domésticos e de automóveis que você pode controlar falando com eles, usando comandos como "desligar as luzes" e solicitando respostas verbais a perguntas como "vai chover hoje?"

# Para habilitar esse tipo de interação, o sistema de IA deverá ser compatível com dois recursos:

Reconhecimento de Fala: a capacidade de detectar e interpretar a entrada falada.
Sintetização de voz: a capacidade de gerar uma saída falada.
Reconhecimento de fala
A função do Reconhecimento de Fala é identificar a palavra falada e convertê-la em dados que poderão ser processados, muitas vezes, transcrevendo essa palavra em uma representação de texto. As palavras faladas poderão estar no formato de uma voz gravada em um arquivo de áudio ou em um áudio ao vivo de um microfone. Os padrões de Fala do áudio serão analisados para determinar padrões reconhecíveis que serão transformados em palavras. Para fazer isso feito, o software normalmente usa vários tipos de modelos, incluindo:

Um modelo acústico que converte o sinal de áudio em fonemas (representações de sons específicos).
Um modelo de linguagem que transforma os fonemas em palavras, geralmente usando um algoritmo estatístico que prevê a sequência mais provável de palavras com base nos fonemas.
As palavras reconhecidas geralmente são convertidas em texto, que poderão ser usadas em diferentes finalidades, como:

# Fornecer legendas ocultas para vídeos gravados ou ao vivo
Criar uma transcrição de uma chamada telefônica ou de uma reunião
Ditado de anotação automatizada
Determinar a entrada do usuário pretendida para obter um processamento adicional
Sintetização de voz
A sintetização de voz em muitos aspectos é o inverso do reconhecimento de fala. A função dela é transformar dados em voz, geralmente com a conversão de texto em fala. Uma solução de sintetização de voz normalmente requer as seguintes informações:

# O texto a ser falado.
A voz a ser usada para transformar o texto em fala.
Para sintetizar uma voz, o sistema normalmente cria tokens do texto com o objetivo de dividi-lo em palavras individuais e atribuir sons fonéticos a cada palavra. Ele então interrompe a transcrição fonética em unidades prosódicas (como frases, cláusulas ou sentenças) para criar fonemas que serão convertidos em formato de áudio. Em seguida, esses fonemas são sintetizados como áudio com a aplicação de uma voz, que determinará parâmetros como tom e timbre, além de gerar um formato de onda de áudio que poderá ser enviado a um alto-falante ou gravado em um arquivo.

# Será possível usar a saída de sintetização de voz para diversas finalidades, incluindo:

Gerar respostas faladas para a entrada do usuário.
Criar menus de vozes para sistemas telefônicos.
Ler mensagens de email ou de texto em voz alta em cenários de mãos livres.
Transmitir anúncios em locais públicos, como estações ferroviárias ou aeroportos.


# Introdução à Fala no Azure

O Microsoft Azure oferece funcionalidades de reconhecimento de fala e sintetização de voz por meio do Serviço Cognitivo de Fala, que inclui as seguintes APIs (interfaces de programação de aplicativo):

# API de Conversão de Fala em Texto
API de Conversão de Texto em Fala
Recursos do Azure para o Serviço de Fala
Para usar o serviço de Fala em um aplicativo, será necessário criar um recurso apropriado em sua assinatura do Azure. Será possível optar por criar um dos seguintes tipos de recursos:

Recurso de Fala – escolha esse tipo de recurso caso planeje usar somente o Serviço de Fala ou queira gerenciar o acesso e a cobrança do recurso de maneira separada dos outros serviços.
Recurso de Serviços Cognitivos – escolha esse tipo de recurso caso planeje usar o Serviço de Fala combinado com outros serviços cognitivos e queira gerenciar o acesso e a cobrança desses serviços juntos.
API de Conversão de Fala em Texto
É possível usar a API de Conversão de Fala em Texto para executar a transcrição em lote ou em tempo real de um áudio em formato de texto. A fonte de áudio da transcrição poderá ser uma fluxo de áudio em tempo real de um microfone ou um arquivo de áudio.

O modelo usado pela API de conversão de fala em texto será baseado em um Modelo de Linguagem Universal treinado pela Microsoft. Os dados do modelo são de propriedade da Microsoft e foram implantados no Microsoft Azure. O modelo será otimizado para dois cenários: conversação e ditado. Também será possível criar e treinar seus modelos personalizados, incluindo acústica, linguagem e pronúncia, caso os modelos predefinidos da Microsoft não forneçam o que você precisa.

# Transcrição em tempo real
A Conversão de Fala em Texto em tempo real permite transcrever texto em transmissões de áudio. Será possível usar uma transcrição em tempo real para apresentações, demonstrações ou qualquer outro cenário em que uma pessoa esteja falando.

Para que a transcrição em tempo real funcione, seu aplicativo deverá escutar o áudio de entrada de um microfone ou outra fonte de entrada de áudio, como um arquivo de áudio. O código do aplicativo transmitirá o áudio para o serviço que retornará o texto transcrito.

# Transcrição em lote
Nem todos os cenários de conversão de fala em texto serão em tempo real. Você poderá ter gravações de áudio armazenadas em um compartilhamento de arquivo, em um servidor remoto ou até mesmo no armazenamento do Azure. Será possível transmitir arquivos de áudio com um URI de SAS (assinatura de acesso compartilhado) e receber resultados de transcrição de maneira assíncrona.

A transcrição em lote deverá ser executada de maneira assíncrona, pois os trabalhos em lote são agendados com base no melhor esforço. Normalmente, um trabalho será executado minutos após a solicitação, porém não há estimativa de quando um trabalho será alterado para o estado de execução.

# API de Conversão de Texto em Fala
A API de Conversão de Texto em Fala permite converter a entrada de texto em uma fala audível, que poderá ser reproduzida de modo direto por meio de um alto-falante de computador ou gravada em um arquivo de áudio.

# Vozes disponíveis na sintetização de voz
Ao usar a API de Conversão de Texto em Fala será possível especificar qual voz reproduzirá o texto. Essa funcionalidade oferece flexibilidade para personalizar sua solução de sintetização de voz e dar a ela um personagem específico.

O serviço inclui várias vozes predefinidas compatíveis com diversos idiomas e pronúncias regionais, incluindo vozes padrão e também vozes neurais que aproveitam as redes neurais para superar as limitações comuns da sintetização de voz relacionadas à entonação, resultando em uma voz mais natural. Também será possível desenvolver vozes personalizadas e usá-las com a API de Conversão de Texto em Fala

# Idiomas compatíveis
As APIs de conversão de fala em texto e conversão de texto em fala são compatíveis com vários idiomas. Use os links abaixo para descobrir mais detalhes sobre os idiomas compatíveis:

Idiomas de conversão de Fala em Texto. </p> </p>
Link: https://learn.microsoft.com/pt-br/azure/cognitive-services/speech-service/language-support?tabs=stt#speech-to-text </p>
Idiomas de conversão de Texto em Fala. </p>
link: https://learn.microsoft.com/pt-br/azure/cognitive-services/speech-service/language-support?tabs=stt#text-to-speech


