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


