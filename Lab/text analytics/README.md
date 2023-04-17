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
Extrair frases-chave do texto que poderão indicar os principais pontos de discussão.
Identificar e categorizar entidades no texto. As entidades poderão ser pessoas, lugares, organizações ou até itens diários, como datas, horários, quantidades e assim por diante.
Neste módulo, você explorará algumas dessas funcionalidades e compreenderá como poderá aplicá-los a aplicativos como:

Um analisador de feed de mídias sociais para detectar sentimentos em uma campanha política ou em um produto no mercado.
Um aplicativo de pesquisa de documentos que extrairá frases-chave para ajudar a resumir o assunto principal dos documentos em um catálogo.
Uma ferramenta para extrair informações de marcas ou nomes de empresas de documentos ou de outros textos para fins de identificação.
Esses exemplos são apenas uma pequena amostra das muitas áreas em que o serviço de linguagem pode ajudar com a análise de texto.


