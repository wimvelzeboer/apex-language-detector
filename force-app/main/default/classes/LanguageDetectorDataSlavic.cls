/**
 * Language detector data for Slavic languages.
 * <p>
 * Provides weighted word analyzers used to identify Slavic language variants
 * from text samples.
 * </p>
 */
public with sharing class LanguageDetectorDataSlavic {

    /**
     * Analyzer for Belarusian text.
     */
    public class BelarusianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Belarusian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'і', 'ў', 'не', 'на', 'што', 'гэта', 'як', 'з', 'да', 'для',
                            'але', 'быць', 'я', 'ты', 'ён', 'яна', 'мы', 'вы', 'яны', 'калі',
                            'дзе', 'хто', 'які', 'гэты', 'так', 'ужо', 'яшчэ', 'пры', 'пасля', 'перад',
                            'паміж', 'без', 'пра', 'над', 'пад', 'добра', 'вельмі', 'мова', 'тэкст', 'слова',
                            'сказ', 'краіна', 'людзі', 'час', 'жыццё', 'можа', 'трэба', 'тут', 'там', 'гэтыя',
                            'яго', 'яе', 'іх', 'мой', 'твой', 'наш', 'ваш', 'бо', 'ці', 'каб',
                            'таму', 'гэтае', 'гэтая', 'той', 'тая', 'тых', 'будзе', 'былі', 'ёсць', 'няма',
                            'сёння', 'заўтра', 'учора', 'потым', 'зараз', 'чалавек', 'пытанне', 'адказ', 'дом', 'свет',
                            'дзень', 'ноч', 'рука', 'вока', 'мець', 'рабіць', 'пісаць', 'чытаць', 'слухаць', 'гаварыць',
                            'паведамленне', 'слухай', 'бачыць', 'новы', 'стары', 'вялікі', 'малы', 'іншы', 'кожны', 'ніколі'
                    },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 8, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Bosnian text.
     */
    public class BosnianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Bosnian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'ali', 'kao', 'što', 'koji', 'koja', 'koje', 'sam', 'si', 'smo', 'ste',
                    'su', 'biti', 'imam', 'ima', 'imaju', 'ovo', 'ova', 'ovaj', 'to', 'ta',
                    'taj', 'nije', 'jeste', 'mogu', 'može', 'vrlo', 'dobro', 'tekst', 'riječ', 'jezik',
                    'poruka', 'čovjek', 'vrijeme', 'danas', 'sutra', 'kada', 'gdje', 'kako', 'zato', 'jedan',
                    'ja', 'ti', 'on', 'ona', 'mi', 'vi', 'oni', 'njihov', 'moj', 'tvoj',
                    'naš', 'vaš', 'ovdje', 'tamo', 'sada', 'poslije', 'prije', 'uvijek', 'nikada', 'jer',
                    'ako', 'ili', 'bez', 'između', 'iznad', 'ispod', 'dan', 'noć', 'godina', 'život',
                    'svijet', 'zemlja', 'kuća', 'posao', 'ruka', 'oko', 'pitanje', 'odgovor', 'govoriti', 'pisati',
                    'čitati', 'slušati', 'velik', 'mali', 'novi', 'stari', 'drugi', 'svaki', 'ljudi', 'osoba'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Bulgarian text.
     */
    public class BulgarianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Bulgarian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'това', 'този', 'тази', 'който', 'която', 'съм', 'си', 'е', 'сме', 'сте',
                    'са', 'има', 'имат', 'беше', 'може', 'много', 'добре', 'език', 'текст', 'дума',
                    'съобщение', 'човек', 'хора', 'време', 'ден', 'нощ', 'когато', 'къде', 'какво', 'защо',
                    'след', 'преди', 'между', 'без', 'над', 'под', 'само', 'още', 'тук', 'там',
                    'аз', 'ти', 'той', 'тя', 'ние', 'вие', 'те', 'него', 'нея', 'техен',
                    'мой', 'твой', 'наш', 'ваш', 'ако', 'или', 'защото', 'винаги', 'никога', 'сега',
                    'после', 'днес', 'утре', 'вчера', 'живот', 'свят', 'страна', 'дом', 'работа', 'ръка',
                    'око', 'въпрос', 'отговор', 'говоря', 'пиша', 'чета', 'слушам', 'голям', 'малък', 'нов',
                    'стар', 'друг', 'всеки', 'няма', 'имаха', 'бъде', 'бъдат', 'думи', 'личност', 'народ'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 8, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Croatian text.
     */
    public class CroatianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Croatian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'ali', 'kao', 'što', 'tko', 'koji', 'koja', 'koje', 'sam', 'si', 'smo',
                    'ste', 'su', 'biti', 'imam', 'ima', 'imaju', 'ovo', 'ova', 'ovaj', 'to',
                    'ta', 'taj', 'nije', 'jeste', 'mogu', 'može', 'vrlo', 'dobro', 'tekst', 'riječ',
                    'jezik', 'poruka', 'čovjek', 'vrijeme', 'danas', 'sutra', 'kada', 'gdje', 'kako', 'jedan',
                    'ja', 'ti', 'on', 'ona', 'mi', 'vi', 'oni', 'njihov', 'moj', 'tvoj',
                    'naš', 'vaš', 'ovdje', 'tamo', 'sada', 'poslije', 'prije', 'uvijek', 'nikada', 'jer',
                    'ako', 'ili', 'bez', 'između', 'iznad', 'ispod', 'dan', 'noć', 'godina', 'život',
                    'svijet', 'zemlja', 'kuća', 'posao', 'ruka', 'oko', 'pitanje', 'odgovor', 'govoriti', 'pisati',
                    'čitati', 'slušati', 'velik', 'mali', 'novi', 'stari', 'drugi', 'svaki', 'ljudi', 'osoba'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Czech text.
     */
    public class CzechLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Czech.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'co', 'kdo', 'který', 'která', 'které', 'jsem', 'jsi', 'jsme', 'jste', 'jsou',
                    'být', 'mám', 'má', 'mají', 'to', 'tato', 'tento', 'není', 'ano', 'ne',
                    'může', 'mohou', 'velmi', 'dobře', 'jazyk', 'text', 'slovo', 'zpráva', 'člověk', 'lidé',
                    'čas', 'dnes', 'zítra', 'kdy', 'kde', 'proč', 'před', 'po', 'mezi', 'bez',
                    'já', 'ty', 'on', 'ona', 'my', 'vy', 'oni', 'jeho', 'její', 'náš',
                    'váš', 'svůj', 'pokud', 'protože', 'také', 'ještě', 'už', 'tady', 'tam', 'teď',
                    'potom', 'vždy', 'nikdy', 'den', 'noc', 'rok', 'život', 'svět', 'země', 'dům',
                    'práce', 'ruka', 'oko', 'otázka', 'odpověď', 'mluvit', 'psát', 'číst', 'poslouchat', 'velký',
                    'malý', 'nový', 'starý', 'jiný', 'každý', 'osoba', 'moje', 'tvoje', 'bude', 'byli'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 8, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Macedonian text.
     */
    public class MacedonianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Macedonian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'што', 'кој', 'која', 'кое', 'јас', 'ти', 'тој', 'таа', 'ние', 'вие',
                    'тие', 'е', 'сум', 'си', 'сме', 'сте', 'се', 'има', 'имаат', 'може',
                    'многу', 'добро', 'јазик', 'текст', 'збор', 'порака', 'човек', 'време', 'денес', 'утре',
                    'пред', 'после', 'меѓу', 'без', 'над', 'под', 'исто', 'но', 'ако', 'зошто',
                    'него', 'неа', 'нив', 'мој', 'твој', 'наш', 'ваш', 'овој', 'оваа', 'овие',
                    'тука', 'таму', 'сега', 'потоа', 'секогаш', 'никогаш', 'ден', 'ноќ', 'година', 'живот',
                    'свет', 'земја', 'дом', 'работа', 'рака', 'око', 'прашање', 'одговор', 'зборува', 'пишува',
                    'чита', 'слуша', 'голем', 'мал', 'нов', 'стар', 'друг', 'секој', 'луѓе', 'личност',
                    'биде', 'биле', 'имање', 'прави', 'можат', 'знае', 'каде', 'кога', 'кој', 'нешто'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 8, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Polish text.
     */
    public class PolishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Polish.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'co', 'kto', 'kiedy', 'gdzie', 'jak', 'dlaczego', 'ja', 'ty', 'on', 'ona',
                    'my', 'wy', 'oni', 'to', 'ten', 'ta', 'te', 'jest', 'są', 'być',
                    'mam', 'ma', 'mogę', 'może', 'bardzo', 'dobrze', 'język', 'tekst', 'słowo', 'wiadomość',
                    'człowiek', 'czas', 'dzisiaj', 'jutro', 'przed', 'po', 'między', 'bez', 'tak', 'ale',
                    'jego', 'jej', 'ich', 'mój', 'twój', 'nasz', 'wasz', 'który', 'która', 'które',
                    'czy', 'bo', 'aby', 'jeśli', 'już', 'jeszcze', 'tutaj', 'tam', 'teraz', 'potem',
                    'zawsze', 'nigdy', 'dzień', 'noc', 'rok', 'życie', 'świat', 'kraj', 'dom', 'praca',
                    'ręka', 'oko', 'pytanie', 'odpowiedź', 'mieć', 'robić', 'mówić', 'pisać', 'czytać', 'słuchać',
                    'duży', 'mały', 'nowy', 'stary', 'inny', 'każdy', 'żaden', 'osoba', 'ludzie', 'mowa'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Russian text.
     */
    public class RussianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Russian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'и', 'в', 'не', 'на', 'я', 'быть', 'тот', 'он', 'с', 'а',
                            'по', 'это', 'она', 'этот', 'к', 'но', 'они', 'мы', 'как', 'из',
                            'у', 'который', 'то', 'за', 'свой', 'что', 'человек', 'о', 'год', 'так',
                            'для', 'весь', 'мочь', 'ты', 'же', 'один', 'сказать', 'такой', 'только', 'себя',
                            'своё', 'какой', 'когда', 'уже', 'если', 'дело', 'жизнь', 'без', 'день', 'время',
                            'его', 'её', 'их', 'мой', 'твой', 'наш', 'ваш', 'кто', 'где', 'почему',
                            'зачем', 'потому', 'чтобы', 'или', 'ли', 'при', 'под', 'над', 'после', 'перед',
                            'очень', 'хорошо', 'плохо', 'можно', 'нельзя', 'будет', 'были', 'есть', 'нет', 'там',
                            'здесь', 'сейчас', 'потом', 'сегодня', 'завтра', 'вчера', 'слово', 'текст', 'язык', 'сообщение',
                            'люди', 'работа', 'рука', 'глаз', 'страна', 'мир', 'дом', 'вопрос', 'ответ', 'иметь'
                    },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Serbian text.
     */
    public class SerbianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Serbian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'али', 'као', 'што', 'ко', 'који', 'која', 'које', 'сам', 'си', 'смо',
                    'сте', 'су', 'бити', 'имам', 'има', 'имају', 'ово', 'ова', 'овај', 'то',
                    'та', 'тај', 'није', 'јесте', 'могу', 'може', 'врло', 'добро', 'језик', 'текст',
                    'реч', 'порука', 'човек', 'време', 'данас', 'сутра', 'када', 'где', 'како', 'један',
                    'ја', 'ти', 'он', 'она', 'ми', 'ви', 'они', 'његов', 'њена', 'наш',
                    'ваш', 'свој', 'овде', 'тамо', 'сада', 'после', 'пре', 'увек', 'никада', 'јер',
                    'ако', 'или', 'без', 'између', 'изнад', 'испод', 'дан', 'ноћ', 'година', 'живот',
                    'свет', 'земља', 'кућа', 'посао', 'рука', 'око', 'питање', 'одговор', 'говорити', 'писати',
                    'читати', 'слушати', 'велики', 'мали', 'нови', 'стари', 'други', 'сваки', 'људи', 'особа'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Slovak text.
     */
    public class SlovakLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Slovak.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'po', 'čo', 'kto', 'kedy', 'kde', 'ako', 'prečo', 'ja', 'ty', 'on',
                    'ona', 'my', 'vy', 'oni', 'to', 'tento', 'táto', 'tieto', 'je', 'sú',
                    'byť', 'mám', 'má', 'môže', 'môžu', 'veľmi', 'dobre', 'jazyk', 'text', 'slovo',
                    'správa', 'človek', 'čas', 'dnes', 'zajtra', 'pred', 'po', 'medzi', 'bez', 'ale',
                    'jeho', 'jej', 'ich', 'môj', 'tvoj', 'náš', 'váš', 'ktorý', 'ktorá', 'ktoré',
                    'ak', 'pretože', 'tiež', 'ešte', 'už', 'tu', 'tam', 'teraz', 'potom', 'vždy',
                    'nikdy', 'deň', 'noc', 'rok', 'život', 'svet', 'krajina', 'dom', 'práca', 'ruka',
                    'oko', 'otázka', 'odpoveď', 'hovoriť', 'písať', 'čítať', 'počúvať', 'veľký', 'malý', 'nový',
                    'starý', 'iný', 'každý', 'osoba', 'ľudia', 'bude', 'boli', 'robiť', 'mať', 'svoj'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Slovenian text.
     */
    public class SlovenianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Slovenian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'za', 'po', 'kaj', 'kdo', 'kdaj', 'kje', 'kako', 'zakaj', 'jaz', 'ti',
                    'on', 'ona', 'mi', 'vi', 'oni', 'to', 'ta', 'taj', 'so', 'biti',
                    'imam', 'ima', 'lahko', 'zelo', 'dobro', 'jezik', 'besedilo', 'beseda', 'sporočilo', 'človek',
                    'čas', 'danes', 'jutri', 'pred', 'po', 'med', 'brez', 'tudi', 'ampak', 'če',
                    'njegov', 'njena', 'njihov', 'moj', 'tvoj', 'naš', 'vaš', 'ta', 'tukaj', 'tam',
                    'zdaj', 'potem', 'vedno', 'nikoli', 'dan', 'noč', 'leto', 'življenje', 'svet', 'država',
                    'dom', 'delo', 'roka', 'oko', 'vprašanje', 'odgovor', 'govoriti', 'pisati', 'brati', 'poslušati',
                    'velik', 'majhen', 'nov', 'star', 'drug', 'vsak', 'ljudje', 'oseba', 'bo', 'bili',
                    'imeti', 'delati', 'mora', 'more', 'kateri', 'katera', 'katero', 'še', 'že', 'ker'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Ukrainian text.
     */
    public class UkrainianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns weighted words commonly used in Ukrainian.
         *
         * @return A map of language indicators and their associated weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'по', 'це', 'вона', 'цей', 'до', 'але', 'вони', 'ми', 'як', 'із',
                    'у', 'який', 'то', 'за', 'свій', 'що', 'людина', 'про', 'рік', 'так',
                    'для', 'весь', 'могти', 'ти', 'же', 'один', 'сказати', 'такий', 'тільки', 'себе',
                    'своє', 'коли', 'вже', 'якщо', 'справа', 'життя', 'без', 'день', 'час', 'хто',
                    'його', 'її', 'їх', 'мій', 'твій', 'наш', 'ваш', 'де', 'чому', 'навіщо',
                    'тому', 'щоб', 'або', 'чи', 'при', 'під', 'над', 'після', 'перед', 'дуже',
                    'добре', 'погано', 'можна', 'не можна', 'буде', 'були', 'є', 'нема', 'там', 'тут',
                    'зараз', 'потім', 'сьогодні', 'завтра', 'вчора', 'слово', 'текст', 'мова', 'повідомлення', 'люди',
                    'робота', 'рука', 'око', 'країна', 'світ', 'дім', 'питання', 'відповідь', 'мати', 'кожен'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }
}
