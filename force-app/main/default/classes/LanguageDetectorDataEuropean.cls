public with sharing class LanguageDetectorDataEuropean {

    public class DanishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'som', 'den', 'de', 'et', 'en', 'jeg', 'du', 'han', 'hun', 'vi',
                    'jer', 'har', 'havde', 'kan', 'kunne', 'skal', 'ville', 'hvad', 'hvor', 'hvordan',
                    'hvorfor', 'når', 'meget', 'godt', 'sprog', 'tekst', 'ord', 'besked', 'menneske', 'tid',
                    'idag', 'imorgen', 'efter', 'før', 'mellem', 'uden', 'over', 'under', 'også', 'bliver',
                    'mig', 'dig', 'os', 'dem', 'min', 'mit', 'mine', 'din', 'dit', 'dine',
                    'vores', 'jeres', 'der', 'her', 'nu', 'senere', 'altid', 'aldrig', 'måske', 'fordi',
                    'eller', 'kun', 'allerede', 'stadig', 'dag', 'nat', 'år', 'liv', 'verden', 'land',
                    'hus', 'arbejde', 'hånd', 'øje', 'spørgsmål', 'svar', 'læse', 'skrive', 'lytte', 'se',
                    'stor', 'lille', 'ny', 'gammel', 'anden', 'hver', 'person', 'mennesker', 'hjælpe', 'forstå'
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
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    public class DutchLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'niet', 'zijn', 'is', 'was', 'op', 'aan', 'met', 'als', 'voor', 'had',
                    'er', 'maar', 'om', 'hem', 'dan', 'zou', 'of', 'wat', 'mijn', 'men',
                    'dit', 'zo', 'door', 'over', 'ze', 'zich', 'bij', 'ook', 'tot', 'je',
                    'mij', 'uit', 'der', 'daar', 'haar', 'naar', 'heb', 'hoe', 'heeft', 'hebben',
                    'wij', 'jij', 'jullie', 'ons', 'onze', 'hun', 'deze', 'dit', 'die', 'hier',
                    'nu', 'toen', 'altijd', 'nooit', 'waar', 'wanneer', 'waarom', 'welke', 'welk', 'wie',
                    'nog', 'reeds', 'goed', 'heel', 'veel', 'meer', 'minder', 'kunnen', 'kan', 'moeten',
                    'zal', 'worden', 'geweest', 'taal', 'tekst', 'woord', 'bericht', 'mens', 'tijd', 'dag',
                    'nacht', 'vandaag', 'morgen', 'gisteren', 'tussen', 'zonder', 'tegen', 'onder', 'boven', 'omdat',
                    'hoor', 'haar', 'hallo', 'ziens', 'achter', 'voor', 'naast', 'links', 'rechts', 'beneden'
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

    public class EnglishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'the', 'be', 'to', 'of', 'and', 'a', 'in', 'that', 'have', 'i',
                            'it', 'for', 'not', 'on', 'with', 'he', 'as', 'you', 'do', 'at',
                            'this', 'but', 'his', 'by', 'from', 'they', 'we', 'say', 'her', 'she',
                            'or', 'an', 'will', 'my', 'one', 'all', 'would', 'there', 'their', 'what',
                            'so', 'up', 'out', 'if', 'about', 'who', 'get', 'which', 'go', 'me',
                            'when', 'make', 'can', 'like', 'time', 'no', 'just', 'him', 'know', 'take',
                            'people', 'into', 'year', 'your', 'good', 'some', 'could', 'them', 'see', 'other',
                            'than', 'then', 'now', 'look', 'only', 'come', 'its', 'over', 'think', 'also',
                            'back', 'after', 'use', 'two', 'how', 'our', 'work', 'first', 'well', 'way',
                            'even', 'new', 'want', 'because', 'any', 'these', 'give', 'day', 'most', 'us'
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
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    });
        }
    }

    public class EsperantoLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'ni', 'ili', 'ne', 'jes', 'kun', 'por', 'sur', 'sub', 'inter', 'antaŭ',
                    'post', 'kiel', 'kio', 'kiu', 'kie', 'kiam', 'kial', 'tre', 'bone', 'lingvo',
                    'teksto', 'vorto', 'mesaĝo', 'homo', 'tempo', 'hodiaŭ', 'morgaŭ', 'esti', 'havas', 'povas',
                    'unu', 'du', 'granda', 'malgranda', 'ankaŭ', 'sed', 'ĉar', 'se', 'do', 'ĝis',
                    'tiu', 'tio', 'tiuj', 'ĉi tie', 'tie', 'nun', 'poste', 'ĉiam', 'neniam', 'eble',
                    'nur', 'aŭ', 'jam', 'ankoraŭ', 'tago', 'nokto', 'jaro', 'vivo', 'mondo', 'lando',
                    'domo', 'laboro', 'mano', 'okulo', 'demando', 'respondo', 'legi', 'skribi', 'aŭdi', 'vidi',
                    'nova', 'malnova', 'alia', 'ĉiu', 'persono', 'homoj', 'helpo', 'kompreni', 'lerni', 'instruisto',
                    'lernanto', 'lernejo', 'loko', 'aĵo', 'komenco', 'fino', 'malfermi', 'fermi', 'nomo', 'paroli'
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
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    public class FinnishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'että', 'mitä', 'kuka', 'missä', 'miten', 'miksi', 'kun', 'jos', 'mutta', 'kanssa',
                    'ilman', 'ennen', 'jälkeen', 'välillä', 'yli', 'alla', 'sisällä', 'ulos', 'tämä', 'tuo',
                    'hyvä', 'erittäin', 'kieli', 'teksti', 'sana', 'viesti', 'ihminen', 'aika', 'tänään', 'huomenna',
                    'voi', 'voivat', 'olla', 'olen', 'olet', 'olemme', 'ovat', 'yksi', 'kaksi', 'myös',
                    'minun', 'sinun', 'meidän', 'teidän', 'heidän', 'tässä', 'tuolla', 'nyt', 'sitten', 'aina',
                    'ei koskaan', 'ehkä', 'koska', 'tai', 'vain', 'jo', 'vielä', 'päivä', 'yö', 'vuosi',
                    'elämä', 'maailma', 'maa', 'talo', 'työ', 'käsi', 'silmä', 'kysymys', 'vastaus', 'lukea',
                    'kirjoittaa', 'kuunnella', 'nähdä', 'suuri', 'pieni', 'uusi', 'vanha', 'toinen', 'jokainen', 'henkilö',
                    'ihmiset', 'auttaa', 'ymmärtää', 'oppia', 'tarvita', 'mahdollinen', 'koulu', 'opettaja', 'oppilas', 'paikka'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
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

    public class FrenchLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'le', 'de', 'un', 'être', 'et', 'à', 'il', 'avoir', 'ne', 'je',
                            'son', 'que', 'se', 'qui', 'ce', 'dans', 'en', 'du', 'elle', 'au',
                            'pour', 'pas', 'vous', 'par', 'sur', 'faire', 'plus', 'dire', 'me', 'on',
                            'mon', 'lui', 'nous', 'comme', 'mais', 'pouvoir', 'avec', 'tout', 'y', 'aller',
                            'voir', 'bien', 'où', 'sans', 'temps', 'très', 'une', 'les', 'des', 'est',
                            'la', 'tu', 'ils', 'elles', 'nous', 'votre', 'notre', 'leur', 'leurs', 'ces',
                            'cet', 'cette', 'ici', 'encore', 'aussi', 'déjà', 'alors', 'donc', 'car', 'chez',
                            'depuis', 'contre', 'avant', 'après', 'pendant', 'entre', 'toujours', 'jamais', 'souvent', 'parce',
                            'quoi', 'quand', 'comment', 'pourquoi', 'homme', 'femme', 'jour', 'nuit', 'texte', 'langue',
                            'mot', 'message', 'peut', 'peu', 'grand', 'petit', 'autre', 'même', 'ainsi', 'cela'
                    },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 9, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 5, 5, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    public class GermanLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'der', 'die', 'und', 'in', 'den', 'von', 'zu', 'das', 'mit', 'sich',
                            'des', 'auf', 'für', 'ist', 'im', 'dem', 'nicht', 'ein', 'eine', 'als',
                            'auch', 'es', 'an', 'werden', 'aus', 'er', 'hat', 'dass', 'sie', 'nach',
                            'wird', 'bei', 'einer', 'um', 'am', 'sind', 'noch', 'wie', 'einem', 'über',
                            'einen', 'so', 'zum', 'war', 'haben', 'nur', 'oder', 'aber', 'vor', 'zur',
                            'ich', 'du', 'wir', 'ihr', 'man', 'sein', 'ihre', 'ihm', 'ihn', 'ihnen',
                            'dies', 'diese', 'dieser', 'dieses', 'kein', 'keine', 'mehr', 'schon', 'hier', 'dort',
                            'heute', 'morgen', 'gestern', 'immer', 'nie', 'oft', 'warum', 'wann', 'wo', 'was',
                            'wer', 'welche', 'welcher', 'welches', 'sprache', 'text', 'wort', 'nachricht', 'mensch', 'zeit',
                            'tag', 'nacht', 'groß', 'klein', 'gut', 'sehr', 'kann', 'können', 'weil', 'doch'
                    },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 9, 9, 9, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 7, 7, 7, 7,
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

    public class GreekLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'ποιος', 'ποια', 'πότε', 'πού', 'πώς', 'γιατί', 'είμαι', 'είσαι', 'είναι', 'είμαστε',
                    'είστε', 'έχω', 'έχει', 'έχουν', 'όχι', 'ναι', 'πολύ', 'καλά', 'γλώσσα', 'κείμενο',
                    'λέξη', 'μήνυμα', 'άνθρωπος', 'χρόνος', 'σήμερα', 'αύριο', 'πριν', 'μετά', 'μεταξύ', 'χωρίς',
                    'πάνω', 'κάτω', 'αυτό', 'αυτή', 'αυτά', 'μπορεί', 'μπορούν', 'καιρός', 'ζωή', 'εδώ',
                    'εκεί', 'τώρα', 'πάντα', 'ποτέ', 'ίσως', 'μόνο', 'ή', 'επειδή', 'αν', 'τότε',
                    'ήδη', 'ακόμα', 'μέρα', 'νύχτα', 'έτος', 'κόσμος', 'χώρα', 'σπίτι', 'δουλειά', 'χέρι',
                    'μάτι', 'ερώτηση', 'απάντηση', 'διαβάζω', 'γράφω', 'ακούω', 'βλέπω', 'μεγάλος', 'μικρός', 'νέος',
                    'παλιός', 'άλλος', 'κάθε', 'πρόσωπο', 'άνθρωποι', 'βοήθεια', 'καταλαβαίνω', 'μαθαίνω', 'δάσκαλος', 'μαθητής',
                    'σχολείο', 'τόπος', 'πράγμα', 'αρχή', 'τέλος', 'ανοίγω', 'κλείνω', 'όνομα', 'λόγος', 'έτσι'
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
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    public class IrishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'faoi', 'idir', 'roimh', 'tar', 'seo', 'sin', 'mé', 'tú', 'sé', 'sí',
                    'sinn', 'sibh', 'siad', 'cad', 'cé', 'cathain', 'cá', 'conas', 'cén', 'sea',
                    'atá', 'an mhaith', 'teanga', 'téacs', 'focal', 'teachtaireacht', 'duine', 'am', 'inniu', 'amárach',
                    'freisin', 'ach', 'má', 'mar', 'thar', 'faoin', 'roimhe', 'inaiaidh', 'anseo', 'ansin',
                    'anois', 'i gcónaí', 'riamh', 'b\'fhéidir', 'amháin', 'nó', 'cheana', 'fós', 'lá', 'oíche',
                    'bliain', 'saol', 'domhan', 'tír', 'teach', 'obair', 'lámh', 'súil', 'ceist', 'freagra',
                    'léamh', 'scríobh', 'éisteacht', 'féachaint', 'mór', 'beag', 'nua', 'sean', 'eile', 'gach',
                    'duine', 'daoine', 'cabhair', 'tuig', 'foghlaim', 'múinteoir', 'mac léinn', 'scoil', 'áit', 'rud',
                    'tús', 'deireadh', 'oscail', 'dún', 'ainm', 'labhair', 'fíor', 'maith', 'go leor', 'gan'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 8, 8, 8, 8, 8, 8, 8, 8,
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

    public class ItalianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'una', 'i', 'del', 'si', 'le', 'dei', 'con', 'da', 'non', 'al',
                    'più', 'come', 'ma', 'ha', 'o', 'sono', 'anche', 'nel', 'mi', 'gli',
                    'ci', 'lo', 'se', 'ho', 'della', 'delle', 'tu', 'io', 'noi', 'voi',
                    'loro', 'essere', 'avere', 'fare', 'molto', 'bene', 'tra', 'fra', 'su', 'come',
                    'questo', 'questa', 'questi', 'queste', 'quello', 'quella', 'mio', 'mia', 'tuo', 'tua',
                    'nostro', 'nostra', 'qui', 'qua', 'lì', 'ora', 'prima', 'dopo', 'sempre', 'mai',
                    'quando', 'dove', 'perché', 'chi', 'cosa', 'quale', 'uomo', 'donna', 'giorno', 'notte',
                    'tempo', 'persona', 'testo', 'parola', 'messaggio', 'lingua', 'può', 'possono', 'stato', 'stata',
                    'erano', 'sarà', 'saranno', 'molti', 'poco', 'tanto', 'senza', 'sotto', 'sopra', 'dentro'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 9, 9, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    public class LatinLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'quando', 'cur', 'quomodo', 'ego', 'tu', 'nos', 'vos', 'is', 'ea', 'id',
                    'cum', 'sine', 'pro', 'sub', 'super', 'inter', 'ante', 'post', 'unus', 'duo',
                    'tres', 'bene', 'valde', 'lingua', 'textus', 'verbum', 'nuntius', 'homo', 'tempus', 'hodie',
                    'cras', 'potest', 'possum', 'esse', 'habet', 'habent', 'ita', 'sed', 'nam', 'aut',
                    'hic', 'haec', 'hoc', 'ille', 'illa', 'illud', 'nunc', 'semper', 'numquam', 'fortasse',
                    'solum', 'iam', 'adhuc', 'dies', 'nox', 'annus', 'vita', 'mundus', 'terra', 'domus',
                    'opus', 'manus', 'oculus', 'quaestio', 'responsum', 'legere', 'scribere', 'audire', 'videre', 'magnus',
                    'parvus', 'novus', 'vetus', 'alius', 'omnis', 'persona', 'populus', 'auxilium', 'intellegere', 'discere',
                    'magister', 'discipulus', 'schola', 'locus', 'res', 'initium', 'finis', 'aperire', 'claudere', 'nomen'
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

    public class LatvianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'par', 'kas', 'kur', 'kad', 'kā', 'kāpēc', 'es', 'tu', 'viņš', 'viņa',
                    'mēs', 'jūs', 'viņi', 'šis', 'šī', 'tas', 'tā', 'būt', 'var', 'varēt',
                    'ļoti', 'labi', 'valoda', 'teksts', 'vārds', 'ziņa', 'cilvēks', 'laiks', 'šodien', 'rīt',
                    'pirms', 'pēc', 'starp', 'arī', 'bet', 'ja', 'jo', 'viens', 'divi', 'trīs',
                    'mans', 'mana', 'tavs', 'tava', 'mūsu', 'jūsu', 'šeit', 'tur', 'tagad', 'vēlāk',
                    'vienmēr', 'nekad', 'varbūt', 'tikai', 'vai', 'jau', 'vēl', 'diena', 'nakts', 'gads',
                    'dzīve', 'pasaule', 'valsts', 'māja', 'darbs', 'roka', 'acs', 'jautājums', 'atbilde', 'lasīt',
                    'rakstīt', 'klausīties', 'redzēt', 'liels', 'mazs', 'jauns', 'vecs', 'cits', 'katrs', 'persona',
                    'cilvēki', 'palīdzība', 'saprast', 'mācīties', 'skolotājs', 'skolēns', 'skola', 'vieta', 'lieta', 'sākums'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 8, 8, 8, 8, 8, 8, 8, 8,
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

    public class MalteseLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'wara', 'jien', 'int', 'hu', 'hi', 'aħna', 'intom', 'huma', 'xi', 'xiex',
                    'min', 'fejn', 'meta', 'kif', 'għaliex', 'iva', 'le', 'għandu', 'għandha', 'jista',
                    'jistgħu', 'tajjeb', 'ħafna', 'lingwa', 'test', 'kelma', 'messaġġ', 'bniedem', 'ħin', 'illum',
                    'għada', 'dan', 'dik', 'dawn', 'dawk', 'wkoll', 'iżda', 'jekk', 'għax', 'wieħed',
                    'tnejn', 'tlieta', 'tiegħi', 'tiegħek', 'tagħna', 'tagħkom', 'hawn', 'hemm', 'issa', 'aktar tard',
                    'dejjem', 'qatt', 'forsi', 'biss', 'jew', 'diġà', 'għadu', 'jum', 'lejl', 'sena',
                    'ħajja', 'dinja', 'pajjiż', 'dar', 'xogħol', 'id', 'għajn', 'mistoqsija', 'tweġiba', 'aqra',
                    'ikteb', 'isma', 'ara', 'kbir', 'żgħir', 'ġdid', 'antik', 'ieħor', 'kull', 'persuna',
                    'nies', 'għajnuna', 'ifhem', 'tgħallem', 'għalliem', 'student', 'skola', 'post', 'ħaġa', 'bidu'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 8, 8, 8, 8, 8, 8, 8, 8,
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

    public class NorwegianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'som', 'den', 'de', 'et', 'en', 'jeg', 'du', 'han', 'hun', 'vi',
                    'dere', 'har', 'hadde', 'kan', 'kunne', 'skal', 'ville', 'hva', 'hvor', 'hvordan',
                    'hvorfor', 'når', 'veldig', 'bra', 'språk', 'tekst', 'ord', 'melding', 'menneske', 'tid',
                    'idag', 'i morgen', 'etter', 'før', 'mellom', 'uten', 'over', 'under', 'også', 'blir',
                    'meg', 'deg', 'oss', 'dem', 'min', 'mitt', 'mine', 'din', 'ditt', 'dine',
                    'vår', 'vårt', 'våre', 'der', 'her', 'nå', 'senere', 'alltid', 'aldri', 'kanskje',
                    'fordi', 'eller', 'bare', 'allerede', 'fortsatt', 'dag', 'natt', 'år', 'liv', 'verden',
                    'land', 'hus', 'arbeid', 'hånd', 'øye', 'spørsmål', 'svar', 'lese', 'skrive', 'lytte',
                    'se', 'stor', 'liten', 'ny', 'gammel', 'annen', 'hver', 'person', 'folk', 'forstå'
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

    public class SpanishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'las', 'un', 'por', 'con', 'no', 'una', 'su', 'para', 'es', 'al',
                    'lo', 'como', 'más', 'o', 'pero', 'sus', 'le', 'ha', 'me', 'si',
                    'sin', 'sobre', 'este', 'ya', 'entre', 'cuando', 'todo', 'esta', 'ser', 'son',
                    'dos', 'también', 'fue', 'había', 'era', 'muy', 'años', 'hasta', 'desde', 'está',
                    'yo', 'tú', 'él', 'ella', 'nosotros', 'vosotros', 'ellos', 'ellas', 'mi', 'mis',
                    'tu', 'tus', 'nuestro', 'nuestra', 'nuestros', 'nuestras', 'ese', 'esa', 'estos', 'estas',
                    'aquí', 'allí', 'ahora', 'después', 'antes', 'siempre', 'nunca', 'porque', 'quien', 'donde',
                    'qué', 'cómo', 'cuál', 'cuáles', 'hombre', 'mujer', 'día', 'noche', 'tiempo', 'persona',
                    'texto', 'palabra', 'mensaje', 'lengua', 'idioma', 'puede', 'pueden', 'hacer', 'tener', 'estar',
                    'texto', 'palabra', 'mensaje', 'lengua', 'idioma', 'puede', 'pueden', 'hacer', 'tener', 'estar'
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

    public class PortugueseLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'é', 'com', 'não', 'uma', 'os', 'no', 'se', 'na', 'por', 'mais',
                    'as', 'dos', 'como', 'mas', 'foi', 'ao', 'ele', 'das', 'tem', 'à',
                    'seu', 'sua', 'ou', 'ser', 'quando', 'muito', 'há', 'nos', 'já', 'está',
                    'eu', 'também', 'só', 'pelo', 'pela', 'até', 'isso', 'ela', 'entre', 'era',
                    'tu', 'você', 'vocês', 'nós', 'eles', 'elas', 'meu', 'minha', 'teu', 'tua',
                    'nosso', 'nossa', 'este', 'esta', 'esses', 'essas', 'aqui', 'ali', 'agora', 'depois',
                    'antes', 'sempre', 'nunca', 'porque', 'quem', 'onde', 'como', 'qual', 'quais', 'homem',
                    'mulher', 'dia', 'noite', 'tempo', 'pessoa', 'texto', 'palavra', 'mensagem', 'língua', 'idioma',
                    'pode', 'podem', 'fazer', 'ter', 'estar', 'sobre', 'sem', 'sob', 'acima', 'dentro'
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

    public class RomanianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'despre', 'între', 'înainte', 'după', 'eu', 'tu', 'el', 'ea', 'noi', 'voi',
                    'ei', 'ele', 'ce', 'cine', 'când', 'unde', 'cum', 'de', 'da', 'fi',
                    'am', 'are', 'sunt', 'poate', 'pot', 'foarte', 'bine', 'limbă', 'text', 'cuvânt',
                    'mesaj', 'om', 'timp', 'azi', 'mâine', 'sub', 'peste', 'dar', 'acum', 'că',
                    'care', 'acest', 'această', 'acești', 'aceste', 'aici', 'acolo', 'acum', 'atunci', 'mereu',
                    'niciodată', 'poate', 'doar', 'sau', 'deja', 'încă', 'zi', 'noapte', 'an', 'viață',
                    'lume', 'țară', 'casă', 'muncă', 'mână', 'ochi', 'întrebare', 'răspuns', 'citi', 'scrie',
                    'asculta', 'vedea', 'mare', 'mic', 'nou', 'vechi', 'alt', 'fiecare', 'persoană', 'oameni',
                    'ajutor', 'înțelege', 'învăța', 'profesor', 'elev', 'școală', 'loc', 'lucru', 'început', 'sfârșit'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 8, 8, 8, 8, 8, 8,
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

    public class SwedishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'som', 'den', 'de', 'en', 'ett', 'jag', 'du', 'han', 'hon', 'vi',
                    'ni', 'har', 'hade', 'kan', 'kunna', 'ska', 'skulle', 'vad', 'var', 'hur',
                    'varför', 'när', 'mycket', 'bra', 'språk', 'text', 'ord', 'meddelande', 'människa', 'tid',
                    'idag', 'imorgon', 'efter', 'före', 'mellan', 'utan', 'över', 'under', 'också', 'blir',
                    'mig', 'dig', 'oss', 'dem', 'min', 'mitt', 'mina', 'din', 'ditt', 'dina',
                    'vår', 'vårt', 'våra', 'där', 'här', 'nu', 'sedan', 'alltid', 'aldrig', 'kanske',
                    'eftersom', 'eller', 'bara', 'redan', 'fortfarande', 'dag', 'natt', 'år', 'liv', 'värld',
                    'land', 'hus', 'arbete', 'hand', 'öga', 'fråga', 'svar', 'läsa', 'skriva', 'lyssna',
                    'se', 'stor', 'liten', 'ny', 'gammal', 'annan', 'varje', 'person', 'människor', 'förstå'
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

    public class WelshLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'am', 'ond', 'beth', 'pwy', 'pryd', 'ble', 'sut', 'pam', 'ydw', 'wyt',
                    'mae', 'rydym', 'rydych', 'maen', 'fi', 'ti', 'ef', 'hi', 'ni', 'nhw',
                    'ie', 'na', 'iaith', 'testun', 'gair', 'neges', 'dyn', 'amser', 'heddiw', 'yfory',
                    'cyn', 'wedi', 'rhwng', 'uwchben', 'islaw', 'hefyd', 'os', 'oherwydd', 'un', 'dau',
                    'tri', 'fy', 'dy', 'ei', 'ein', 'eich', 'eu', 'yma', 'yno', 'nawr',
                    'wedyn', 'bob amser', 'byth', 'efallai', 'dim ond', 'neu', 'eisoes', 'eto', 'dydd', 'nos',
                    'blwyddyn', 'bywyd', 'byd', 'gwlad', 'tŷ', 'gwaith', 'llaw', 'llygad', 'cwestiwn', 'ateb',
                    'darllen', 'ysgrifennu', 'gwrando', 'gweld', 'mawr', 'bach', 'newydd', 'hen', 'arall', 'pob',
                    'person', 'pobl', 'cymorth', 'deall', 'dysgu', 'athro', 'myfyriwr', 'ysgol', 'lle', 'peth'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 8, 8, 8, 8, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }
}
