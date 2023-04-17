# Introdução

Como as organizações e os indivíduos precisam cada vez mais colaborar com pessoas de outras culturas e locais geográficos, a remoção de barreiras de idioma se tornou um problema significativo.

Uma solução é encontrar pessoas bilíngues, ou até mesmo multilíngues, para traduzir entre idiomas. No entanto, a escassez dessas habilidades e o número de combinações de idiomas possíveis podem tornar essa abordagem difícil de dimensionar. Cada vez mais, a tradução automática, às vezes chamada de tradução automática, está sendo usada para resolver esse problema.

# Tradução literal e semântica
No início, a tradução automática era literal. Na tradução literal, cada palavra é traduzida pela sua correspondente no idioma de destino. Essa abordagem apresenta alguns problemas. Por exemplo, pode não haver uma palavra equivalente no idioma de destino. Além disso, a tradução literal pode alterar o significado de uma frase ou não transmitir o contexto correto.

Por exemplo, a frase francesa "éteindre la lumière" pode ser traduzida para o inglês como "apagar a luz". No entanto, em francês, você também pode dizer "fermer la Lumiere" para dizer a mesma coisa. O verbo francês fermer literalmente significa "fechar", portanto, uma tradução literal baseada apenas nas palavras indicaria, em inglês, "fechar a luz". Para o falante de inglês, isso realmente não faz sentido. Portanto, para ser útil, um serviço de tradução deve levar em conta o contexto semântico e retornar a tradução em inglês de "apagar a luz".

Os sistemas de inteligência artificial devem ser capazes de entender não apenas as palavras, mas também o contexto semântico no qual são usadas. Dessa maneira, o serviço pode retornar uma tradução mais precisa das frases originais. É necessário considerar as regras de gramática, os estilos formais e informais e os coloquialismos.

# Tradução de fala e texto
A tradução de texto pode ser usada para converter documentos de um idioma para outro, traduzir comunicações por email provenientes de governos estrangeiros e até mesmo traduzir páginas da Web na Internet. Muitas vezes, você verá uma opção Traduzir em postagens em sites de mídia social. O mecanismo de pesquisa do Bing pode oferecer para traduzir páginas da Web inteiras retornadas nos resultados da pesquisa.

A tradução de fala é usada para converter entre idiomas falados, às vezes diretamente (conversão de fala em fala) e, às vezes, pela tradução para um formato de texto intermediário (conversão de fala em texto).

# Introdução à tradução no Azure

O Microsoft Azure fornece serviços cognitivas que ajudam a traduzir. Especificamente, você pode usar os seguintes serviços:

O serviço de Tradução, que dá suporte à tradução de texto.
O serviço de Fala, que converte fala em texto e traduz a fala.
Recursos do Azure para Tradução e Fala
Para usar os serviços de Tradução ou Fala, provisione os recursos apropriados em sua assinatura do Azure.

Há tipos de recursos dedicados de Tradução e Fala para esses serviços, que você pode usar para gerenciar o acesso e a cobrança de cada serviço individualmente.

Como alternativa, você pode criar um recurso dos Serviços Cognitivos que fornece acesso a ambos os serviços por meio de um recurso do Azure, consolidando a cobrança e permitindo que os aplicativos acessem os dois serviços por meio de um ponto de extremidade e chave de autenticação.

Traduzir texto com o serviço de Tradução
O serviço de Tradução é fácil de integrar com aplicativos, sites, ferramentas e soluções. O serviço usa um modelo de NMT (tradução automática neural) para tradução, que analisa o contexto semântico do texto e gera uma tradução mais precisa e completa.

# Suporte a idiomas no serviço de Tradução
O serviço de Tradução dá suporte à tradução de texto em mais de 60 idiomas. Ao usar o serviço, especifique o idioma de origem e o idioma de destino usando códigos de idioma ISO 639-1, como en para inglês, fr para francês e zh para chinês. Como alternativa, você pode especificar variantes culturais de idiomas complementando o código de idioma com o código cultural 3166-1 correspondente – por exemplo, en-US para inglês dos EUA, en-GB para o inglês britânico ou fr-CA para o francês canadense.

Ao usar o serviço de Tradução, você pode especificar um idioma de origem e vários idiomas de destino, permitindo traduzir um documento de origem para vários idiomas de modo simultâneo.

# Configurações opcionais
A API de Tradução oferece algumas configurações opcionais para ajudar a ajustar os resultados retornados, incluindo:

Filtro de conteúdo ofensivo. Sem nenhuma configuração, o serviço traduzirá o texto de entrada sem filtrar o conteúdo ofensivo. Os níveis de conteúdo ofensivo são normalmente específicos à cultura, mas você pode controlar a tradução dele marcando o texto traduzido como ofensivo ou omitindo-o nos resultados.
Tradução seletiva. Você pode marcar o conteúdo para que ele não seja traduzido. Por exemplo, você pode querer marcar o código, um nome de marca ou uma palavra/frase que não faça sentido quando localizada.
Tradução de fala com o serviço de Fala
O serviço de Fala inclui as seguintes APIs (interface de programação de aplicativo):

Conversão de fala em texto: usada para transcrever fala de uma fonte de áudio em formato de texto.
Conversão de texto em fala: usada para gerar áudio falado com base em uma fonte de texto.
Tradução de Fala: usada para traduzir fala em um idioma para texto ou fala em outro.
É possível usar a API de Tradução de Fala para traduzir áudio falado de uma fonte de streaming, como um microfone ou um arquivo de áudio, e retornar a tradução como um texto ou stream de áudio. Isso permite cenários como a legendagem oculta em tempo real de uma fala ou tradução bidirecional simultânea de uma conversa falada.

# Idiomas disponíveis no serviço de Fala
Assim como ocorre com o serviço de Tradução, você pode especificar um idioma de origem e um ou mais idiomas de destino para os quais a origem deve ser traduzida. Você pode converter a fala em mais de 60 idiomas.

O idioma de origem deve ser especificado usando o idioma estendido e o formato de código de cultura, como es-US para espanhol americano. Esse requisito ajuda a garantir que a origem seja compreendida corretamente, permitindo a pronúncia localizada e as expressões idiomáticas.

Os idiomas de destino devem ser especificados usando um código de idioma de dois caracteres, como en para inglês ou de para alemão.

# Exercício – Traduzir texto e fala

Uma das forças motrizes que permitiu o desenvolvimento da civilização humana é a capacidade de comunicação mútua. Na maioria das empreitadas humanas, a comunicação é fundamental.

A IA (Inteligência Artificial) pode ajudar a simplificar a comunicação traduzindo texto ou fala entre idiomas, ajudando a remover barreiras de comunicação entre países e culturas.

Para testar os recursos do serviço de Tradução, usaremos um aplicativo de linha de comando simples que é executado no Cloud Shell. Os mesmos princípios e funcionalidades se aplicam em soluções do mundo real, como sites ou aplicativos de telefone.

Link: https://learn.microsoft.com/pt-br/training/modules/translate-text-with-translation-service/3-exercise-translate-text-use-azure


