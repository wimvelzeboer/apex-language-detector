/**
 * Language marker data for African languages supported by {@link LanguageDetector}.
 */
public with sharing class LanguageDetectorDataAfrican {

    /**
     * Detects Zulu text using weighted word markers.
     */
    public class ZuluLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted word markers used to score Zulu text.
         *
         * @return A map of normalized marker text to weights
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'futhi', 'na', 'ku', 'ngo', 'uma', 'kodwa', 'noma', 'ngoba', 'lapho', 'nini',
                            'ubani', 'yini', 'kanjani', 'kuphi', 'yebo', 'cha', 'mina', 'wena', 'yena', 'thina',
                            'nina', 'bona', 'le', 'lo', 'lena', 'lokho', 'ikhona', 'kukhona', 'ulimi', 'umbhalo',
                            'igama', 'umyalezo', 'umuntu', 'isikhathi', 'namuhla', 'kusasa', 'ngaphambi', 'ngemuva', 'phakathi', 'phezu',
                            'phansi', 'kakhulu', 'kuhle', 'kungenzeka', 'funda', 'bhala', 'khuluma', 'lalela', 'dla', 'phuza',
                            'manje', 'njalo', 'neze', 'mhlawumbe', 'kuphela', 'noma-ke', 'sekuyivele', 'namanje', 'usuku', 'ubusuku',
                            'unyaka', 'impilo', 'umhlaba', 'izwe', 'indlu', 'umsebenzi', 'isandla', 'iso', 'umbuzo', 'impendulo',
                            'bona', 'qonda', 'fundisa', 'thisha', 'umfundi', 'isikole', 'indawo', 'into', 'ukuqala', 'ukuphela',
                            'vula', 'vala', 'usizo', 'omkhulu', 'omncane', 'omusha', 'omdala', 'omunye', 'wonke', 'abantu',
                            'eduze', 'kude', 'amanzi', 'ukudla', 'umngane', 'umndeni', 'indlela', 'iqiniso', 'okubi', 'okuhle'
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
}