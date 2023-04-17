# Introdução

Analisar textos é um processo em que diferentes aspectos de um documento ou frase são avaliados para obter informações sobre o conteúdo desse texto. Na maioria das vezes, os humanos são capazes de ler algum texto e entender o significado dele. Mesmo sem considerar as regras gramaticais do idioma em que o texto está escrito, insights específicos poderão ser identificados no texto.

Por exemplo, será possível ler um texto e identificar algumas frases-chave que indicarão os principais pontos de discussão do texto. Também será possível reconhecer nomes de pessoas ou pontos de referência conhecidos, como a Torre Eiffel. Embora às vezes seja difícil, também será possível ter uma noção de como a pessoa estava se sentindo quando escreveu o texto, também conhecido como sentimentos.

# Técnicas de Análise de Texto
A análise de texto é um processo em que um algoritmo de IA (inteligência artificial), em execução em um computador, avalia esses mesmos atributos em um texto para determinar informações específicas. Uma pessoa normalmente dependerá de suas experiências e de conhecimento para obter informações. Um computador deverá obter esse conhecimento de modo semelhante para poder executar a tarefa. Há algumas técnicas conhecidas que poderão ser usadas para criar um software de análise de texto, incluindo:

Análise estatística dos termos usados no texto. Por exemplo, remover "palavras irrelevantes" comuns (como "o" ou "um", que revela poucas informações semânticas sobre o texto) e executar uma análise de frequência das palavras restantes (contando com que frequência cada palavra aparece) poderá fornecer pistas sobre o assunto principal do texto.
Ao estender a análise de frequência para frases de vários termos, comumente conhecidas como N-grams (uma frase de duas palavras equivale a um bi-gram, uma frase de três palavras equivale a um tri-gram e assim por diante).
Aplicar algoritmos de stemming ou lematização para normalizar palavras antes de contá-las. Para que palavras como "power", "powered" e "powerful" sejam interpretadas como a mesma palavra.
Aplicar regras de estrutura linguística para analisar frases. Por exemplo, dividir frases em estruturas semelhantes a árvores, como uma frase nominal, que contém substantivos, verbos, adjetivos e assim por diante.
A codificação de palavras ou termos como recursos numéricos poderão ser usados para treinar um modelo de machine learning. Por exemplo, para classificar um documento de texto com base nos termos que ele contém. Essa técnica geralmente é usada para executar uma análise de sentimentos, na qual um documento será classificado como positivo ou negativo.
Criar modelos vetorizados que capturam as relações semânticas entre as palavras, atribuindo a elas locais no espaço n-dimensional. Essa técnica de modelagem pode atribuir valores às palavras "flor" e "planta" que as aproximem, enquanto "skate" pode receber um valor que a distancie.
Embora essas técnicas possam ser usadas com grande efeito, a programação delas poderá ser complexa. No Microsoft Azure, o serviço cognitivo de Linguagem poderá ajudar a simplificar o desenvolvimento de aplicativos usando modelos predefinidos que poderão:

Determinar o idioma de um documento ou texto (como francês ou inglês).
Executar a análise de sentimentos no texto para determinar um sentimento positivo ou negativo.

Você pode usar os recursos de análise de texto no serviço de linguagem para detectar o idioma de cada uma dessas revisões; e pode responder com os seguintes resultados:

Documento	Nome do idioma	Código ISO 6391	Pontuação
Análise 1	Inglês	en	1,0
Análise 2	Espanhol	es	1,0
Análise 3	Inglês	en	0,9
Extrair frases-chave do texto que poderão indicar os principais pontos de discussão.
Identificar e categorizar entidades no texto. As entidades poderão ser pessoas, lugares, organizações ou até itens diários, como datas, horários, quantidades e assim por diante.
Neste módulo, você explorará algumas dessas funcionalidades e compreenderá como poderá aplicá-los a aplicativos como:

Um analisador de feed de mídias sociais para detectar sentimentos em uma campanha política ou em um produto no mercado.
Um aplicativo de pesquisa de documentos que extrairá frases-chave para ajudar a resumir o assunto principal dos documentos em um catálogo.
Uma ferramenta para extrair informações de marcas ou nomes de empresas de documentos ou de outros textos para fins de identificação.
Esses exemplos são apenas uma pequena amostra das muitas áreas em que o serviço de linguagem pode ajudar com a análise de texto.


# Introdução à análise de texto

O serviço de linguagem faz parte das ofertas de Serviços Cognitivos do Azure que poderão executar um processamento avançado de linguagem natural sobre textos brutos.

# Recursos do Azure para o serviço de linguagem
Para usar o serviço de linguagem em um aplicativo, você deve provisionar um recurso apropriado em sua assinatura do Azure. Será possível optar por provisionar qualquer um dos seguintes tipos de recursos:

Um recurso de Linguagem – escolha esse tipo de recurso se você planeja usar somente o serviços de processamento de linguagem natural ou quer gerenciar o acesso e a cobrança do recurso de maneira separada dos outros serviços.
Um recurso de Serviços Cognitivos – escolha esse tipo de recurso caso planeje usar o serviço de linguagem combinado com outros serviços cognitivos e queira gerenciar o acesso e a cobrança desses serviços juntos.

# Detecção de idioma
Use a funcionalidade de detecção de idioma do serviço de linguagem para identificar o idioma no qual o texto está escrito. Será possível enviar vários documentos por vez para análise. Para cada documento enviado, o serviço detectará:

O nome do idioma (por exemplo, "inglês").
O código ISO 6391 do idioma (por exemplo, "in").
Uma pontuação que indicará um nível de confiança na detecção de idioma.
Considere um cenário no qual você é proprietário e gerencia um restaurante em que os clientes poderão responder a pesquisas e fornecer comentários sobre a comida, o serviço, a equipe e assim por diante. Imagine que você recebeu as seguintes análises dos clientes:

Análise 1: "Um lugar fantástico para almoçar. A sopa estava deliciosa."

Análise 2: "Comida maravillosa y gran servicio."

Análise 3: "The croque monsieur avec frites was terrific. Bon appetit!"

Você pode usar os recursos de análise de texto no serviço de linguagem para detectar o idioma de cada uma dessas revisões; e pode responder com os seguintes resultados:

Documento	Nome do idioma	Código ISO 6391	Pontuação </p>
Análise 1	Inglês	en	1,0 </p>
Análise 2	Espanhol	es	1,0 </p>
Análise 3	Inglês	en	0,9 </p>


#Conteúdo ambíguo ou com vários idiomas
Alguns textos poderão ser ambíguos por natureza ou ter um conteúdo com vários idiomas. Essas situações poderão ser um desafio para o serviço. Um exemplo de conteúdo ambíguo seria no caso de um documento conter textos limitados ou somente pontuações. Por exemplo, usar o serviço para analisar o texto ":-)" resultará em um valor desconhecido para o nome do idioma e o identificador de idioma, além de uma pontuação NaN (usada para indicar que algo não é um número).

#Análise de sentimento
As funcionalidades de análise de texto no serviço de linguagem podem avaliar texto e retornar pontuações e rótulos de sentimentos para cada frase. Essa funcionalidade será útil para detectar sentimentos positivos e negativos em mídias sociais, análises dos clientes, fóruns de discussão e muito mais.

Ao usar o modelo de classificação predefinido de machine learning, o serviço avaliará o texto e retornará uma pontuação de sentimentos com um intervalo entre 0 a 1, sendo que valores próximos de 1 serão considerados sentimentos positivos. As pontuações próximas ao meio do intervalo (0,5) serão consideradas neutras ou indeterminadas.

Por exemplo, as seguintes avaliações do restaurante poderiam ser analisadas em busca de sentimentos:

"Fomos jantar neste restaurante ontem à noite e a primeira coisa que percebi foi a educação da equipe. Fomos recebidos com simpatia e encaminhados à mesa imediatamente. A mesa estava limpa, as cadeiras eram confortáveis e a comida estava maravilhosa."

e

"Nossa experiência ao jantar neste restaurante foi uma das piores que já tive. O serviço era lento e a comida horrível. Nunca mais vou comer nesse estabelecimento de novo."

A pontuação de sentimentos da primeira análise poderá ser considerada em torno de 0,9, indicando um sentimento positivo. Embora a pontuação da segunda análise seja mais próxima de 0,1, indicando uma observação negativa.

# Sentimentos indeterminados
Uma pontuação de 0,5 poderá indicar que o sentimento do texto é indeterminado e resultar de um texto que não tem contexto suficiente para discernir um sentimento ou que a quantidade de frases é insuficiente. Por exemplo, uma lista de palavras em uma frase que não tem nenhuma estrutura poderá resultar em uma pontuação indeterminada. Outro exemplo em que a pontuação poderá ser 0,5 é o caso em que o código de idioma errado foi usado. Um código de idioma (como "in" para inglês ou "fr" para francês) será usado para informar o serviço em que o idioma do texto está escrito. Caso informe ao serviço que o texto está em francês, porém use o código de idioma in para inglês, o serviço retornará uma pontuação de exatamente 0,5.

# Extração de frases-chave
O conceito de extração de frases-chave é avaliar o texto de documentos e identificar os principais pontos de discussão deles. Considere o cenário do restaurante discutido anteriormente. Dependendo do volume de pesquisas coletadas, ler todas as análises pode demorar muito. Em vez disso, será possível usar os recursos de extração de frases-chave do serviço de linguagem para resumir os principais pontos.

Será possível receber uma análise como:

"Viemos jantar aqui por causa da comemoração de um aniversário e tivemos uma experiência fantástica. Fomos recebidos por uma recepcionista simpática que nos encaminhou à mesa imediatamente. O ambiente era relaxante, a comida estava incrível e o serviço ótimo. Caso goste de uma boa comida e um serviço atencioso, você deverá conhecer esse lugar."

# A extração de frases-chave poderá fornecer algum contexto para essa análise, extraindo as seguintes frases:

serviço atencioso
boa comida
comemoração de aniversário
experiência fantástica
table
recepcionista simpática
jantar
ambiente
lugar
Será possível usar a análise de sentimentos para determinar que essa análise é positiva, como também as frases-chave para identificar elementos importantes da análise.

# Reconhecimento de entidade
É possível fornecer ao serviço de linguagem texto não estruturado e ele retornará uma lista de entidades no texto que ele reconhece. O serviço também poderá fornecer links para que seja possível obter mais informações sobre essa entidade na Web. Uma entidade é basicamente um item de uma categoria ou tipo específicos e, em alguns casos, subtipos. Conforme mostrado na tabela a seguir.

# Tipo	SubType	Exemplo </p>
Pessoa		"Bill Gates", "João" </p> </p>
Localização		"Paris", "Nova York" </p>
Organização		"Microsoft" </p>
Quantidade	Número	"6" ou "seis" </p>
Quantidade	Percentual	"25%" ou "cinquenta por cento" </p>
Quantidade	Ordinal	"1º" ou "primeiro" </p>
Quantidade	Idade	"90 dias" ou "30 anos" </p>
Quantidade	Moeda	"10,99" </p> 
Quantidade	Dimensão	"10 quilômetros", "40 cm" </p>
Quantidade	Temperatura	"45 graus" </p>
DateTime		"04 de fevereiro de 2012, 18h30" </p>
DateTime	Data	"02 de maio de 2017" ou "02/05/2017" </p>
DateTime	Hora	"8h" ou "8h00" </p>
DateTime	DateRange	"de 02 a 05 de maio" </p>
DateTime	TimeRange	"18h às 19h" </p>
DateTime	Duração	"1 minuto e 45 segundos" </p>
DateTime	Definição	"todas as terças-feiras" </p>
URL		"https://www.bing.com"</p>
Email		"support@microsoft.com" </p>
Número de telefone dos EUA		"(312) 555-0176" </p>
Endereço IP		"10.0.1.125" </p>

O serviço também será compatível com uma vinculação de entidade para ajudar a remover a ambiguidade de entidades vinculando-as a uma referência específica. Para entidades reconhecidas, o serviço retornará uma URL de um artigo relevante da Wikipédia.

Por exemplo, imagine que você usa o serviço de linguagem para detectar entidades no seguinte trecho de análise do restaurante:

"Comi em um restaurante em Seattle na semana passada."

# Entidade	Tipo	SubType	URL da Wikipédia </p>
Seattle	Localização		https://en.wikipedia.org/wiki/Seattle </p>
semana passada	DateTime	DateRange	</p>

# Exercício – Explorar a análise de texto

LAB 17/04
LINK: https://learn.microsoft.com/pt-br/training/modules/analyze-text-with-text-analytics-service/3-exercise
