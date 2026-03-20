/**
 * Detects the most likely language of a text input by scoring the input against
 * language-specific analysers.
 *
 * <p>The detector supports filtering by language code, early exit when a minimum
 * score threshold is reached, and returning per-language scores with an overall
 * confidence value.</p>
 */
public virtual class LanguageDetector {

    /**
     * Maps language codes to the analyser class responsible for scoring that language.
     * This helps in lazy loading the analyzers
     */
    private static final Map<String, Type> ANALYSER_BY_LANGUAGE = new Map<String, Type>{

            // African
            'zu' => LanguageDetectorDataAfrican.ZuluLanguage.class,

            // Asian
            'bo' => LanguageDetectorDataAsian.TibetanLanguage.class,
            'ja' => LanguageDetectorDataAsian.JapaneseLanguage.class,
            'hi' => LanguageDetectorDataAsian.HindiLanguage.class,
            'id' => LanguageDetectorDataAsian.IndonesianLanguage.class,
            'ko' => LanguageDetectorDataAsian.KoreanLanguage.class,
            'mi' => LanguageDetectorDataAsian.MaoriLanguage.class,
            'mn' => LanguageDetectorDataAsian.MongolianLanguage.class,
            'ta' => LanguageDetectorDataAsian.TamilLanguage.class,
            'th' => LanguageDetectorDataAsian.ThaiLanguage.class,
            'ty' => LanguageDetectorDataAsian.TahitianLanguage.class,
            'vi' => LanguageDetectorDataAsian.VietnameseLanguage.class,
            'za' => LanguageDetectorDataAsian.ZhuangLanguage.class,
            'zh' => LanguageDetectorDataAsian.ChineseLanguage.class,

            // European
            'cy' => LanguageDetectorDataEuropean.WelshLanguage.class,
            'da' => LanguageDetectorDataEuropean.DanishLanguage.class,
            'de' => LanguageDetectorDataEuropean.GermanLanguage.class,
            'el' => LanguageDetectorDataEuropean.GreekLanguage.class,
            'en' => LanguageDetectorDataEuropean.EnglishLanguage.class,
            'eo' => LanguageDetectorDataEuropean.EsperantoLanguage.class,
            'es' => LanguageDetectorDataEuropean.SpanishLanguage.class,
            'fi' => LanguageDetectorDataEuropean.FinnishLanguage.class,
            'fr' => LanguageDetectorDataEuropean.FrenchLanguage.class,
            'ga' => LanguageDetectorDataEuropean.IrishLanguage.class,
            'it' => LanguageDetectorDataEuropean.ItalianLanguage.class,
            'la' => LanguageDetectorDataEuropean.LatinLanguage.class,
            'lv' => LanguageDetectorDataEuropean.LatvianLanguage.class,
            'mt' => LanguageDetectorDataEuropean.MalteseLanguage.class,
            'nl' => LanguageDetectorDataEuropean.DutchLanguage.class,
            'no' => LanguageDetectorDataEuropean.NorwegianLanguage.class,
            'pt' => LanguageDetectorDataEuropean.PortugueseLanguage.class,
            'ro' => LanguageDetectorDataEuropean.RomanianLanguage.class,
            'sv' => LanguageDetectorDataEuropean.SwedishLanguage.class,

            // Middle Eastern
            'ar' => LanguageDetectorDataMiddleEastern.ArabicLanguage.class,
            'he' => LanguageDetectorDataMiddleEastern.HebrewLanguage.class,
            'ku' => LanguageDetectorDataMiddleEastern.KurdishLanguage.class,
            'tr' => LanguageDetectorDataMiddleEastern.TurkishLanguage.class,

            // Slavic
            'be' => LanguageDetectorDataSlavic.BelarusianLanguage.class,
            'bg' => LanguageDetectorDataSlavic.BulgarianLanguage.class,
            'bs' => LanguageDetectorDataSlavic.BosnianLanguage.class,
            'cs' => LanguageDetectorDataSlavic.CzechLanguage.class,
            'hr' => LanguageDetectorDataSlavic.CroatianLanguage.class,
            'mk' => LanguageDetectorDataSlavic.MacedonianLanguage.class,
            'pl' => LanguageDetectorDataSlavic.PolishLanguage.class,
            'ru' => LanguageDetectorDataSlavic.RussianLanguage.class,
            'sk' => LanguageDetectorDataSlavic.SlovakLanguage.class,
            'sl' => LanguageDetectorDataSlavic.SlovenianLanguage.class,
            'sr' => LanguageDetectorDataSlavic.SerbianLanguage.class,
            'uk' => LanguageDetectorDataSlavic.UkrainianLanguage.class
    };

    /**
     * Analyses the input using all supported language analysers
     *
     * @param input The text to analyse
     *
     * @return A detection result containing the best match, confidence, and scores
     *
     * @see LanguageDetector.DetectionResult
     */
    public static DetectionResult analyse(String input) {
        return analyse(input, new List<String>(ANALYSER_BY_LANGUAGE.keySet()));
    }

    /**
     * Analyses the input using all supported language analysers
     *
     * @param requests An instance DetectionRequest
     *
     * @return The detection results containing the best match, confidence, and scores
     *
     * @see LanguageDetector.DetectionRequest
     * @see LanguageDetector.DetectionResult
     */
    @InvocableMethod(
            Label='Detect Language'
            Description='Analyses as string and detect the language it contains.'
            Category='LanguageDetection')
    public static List<DetectionResult> analyse(List<DetectionRequest> requests) {
        List<DetectionResult> results = new List<DetectionResult>();
        for (DetectionRequest request : requests) {
            results.add(
                    analyse(
                            request.input,
                            request.languageCodes == null ? new List<String>(ANALYSER_BY_LANGUAGE.keySet()) : request.languageCodes,
                            request.minimumScoreLevel)
            );
        }
        return results;
    }

    /**
     * Analyses the input using only the specified language codes
     *
     * @param input The text to analyse
     * @param languageCodes The language codes to evaluate
     *
     * @return A detection result containing the best match, confidence, and scores
     *
     * @see LanguageDetector.DetectionResult
     */
    public static DetectionResult analyse(String input, List<String> languageCodes) {
        return analyse(input, languageCodes, null);
    }

    /**
     * Analyses the input using all supported language analysers until a score exceeds
     * the specified minimum score threshold
     *
     * @param input The text to analyse.
     * @param minimumScoreLevel The score threshold that can stop analysis early
     *
     * @return A detection result containing the best match, confidence, and scores
     *
     * @see LanguageDetector.DetectionResult
     */
    public static DetectionResult analyse(String input, Decimal minimumScoreLevel) {
        return analyse(input, new List<String>(ANALYSER_BY_LANGUAGE.keySet()), minimumScoreLevel);
    }

    /**
     * Analyses the input using the specified language codes and an optional minimum score threshold
     *
     * @param input The text to analyse
     * @param languageCodes The language codes to evaluate
     * @param minimumScoreLevel The score threshold that can stop analysis early
     *
     * @return A detection result containing the best match, confidence, and scores
     *
     * @see LanguageDetector.DetectionResult
     */
    public static DetectionResult analyse(String input, List<String> languageCodes, Decimal minimumScoreLevel) {
        DetectionResult result = new DetectionResult();

        if (String.isBlank(input)) return result;

        String normalized = normalize(input);
        Decimal topScore = -1;
        Decimal totalPositiveScore = 0;

        for (String code : languageCodes) {
            if (ANALYSER_BY_LANGUAGE.containsKey(code) == false) {
                System.debug(LoggingLevel.WARN, 'Skipping unknown language code: ' + code);
                continue;
            }

            Decimal score = ((LanguageAnalyser) ANALYSER_BY_LANGUAGE.get(code).newInstance()).analyse(normalized);
            result.scores.put(code, score);


            if (score > 0) {
                totalPositiveScore += score;
            }

            if (score > topScore) {
                topScore = score;
                result.languageCode = code;
            }
            if (score > minimumScoreLevel) break;
        }

        if (topScore > 0 && totalPositiveScore > 0) {
            result.confidence = safeDivide(topScore, totalPositiveScore);
        }
        return result;
    }

    /**
     * Determines whether the provided value contains any non-Latin script characters
     *
     * @param value The text to inspect
     *
     * @return True when the text contains characters outside the basic Latin range
     */
    private static Boolean containsNonLatinScript(String value) {
        for (Integer i = 0; i < value.length(); i++) {
            if (value.charAt(i) > 127) {
                return true;
            }
        }
        return false;
    }

    /**
     * Checks whether a marker matches the normalized input
     *
     * <p>Single-character markers and non-Latin markers are matched by containment
     * Multi-character Latin markers are matched on word boundaries.</p>
     *
     * @param normalizedInput The normalized input text
     * @param marker The marker to search for
     *
     * @return True when the marker matches the input
     */
    private static Boolean matchesMarker(String normalizedInput, String marker) {
        if (String.isBlank(marker)) {
            return false;
        }

        String normalizedMarker = marker.trim().toLowerCase();

        if (normalizedMarker.length() == 1 || containsNonLatinScript(normalizedMarker)) {
            return normalizedInput.contains(normalizedMarker);
        }

        String paddedInput = ' ' + normalizedInput + ' ';
        return paddedInput.contains(' ' + normalizedMarker + ' ');
    }

    /**
     * Normalizes text before analysis by lowercasing, removing HTML tags, and collapsing whitespace
     *
     * @param value The text to normalize
     *
     * @return The normalized text
     */
    private static String normalize(String value) {
        String normalized = value.toLowerCase();
        normalized = normalized.stripHtmlTags();
        normalized = normalized.replaceAll('\\s+', ' ');
        return normalized.trim();
    }

    /**
     * Safely divides two decimal values
     *
     * @param numerator The numerator
     * @param denominator The denominator
     * @return The quotient, or 0 when the denominator is null or zero
     */
    private static Decimal safeDivide(Decimal numerator, Decimal denominator) {
        if (denominator == null || denominator == 0) {
            return 0;
        }
        return numerator.divide(denominator, 6);
    }

    /**
     * Contract for language analysers used by {@link LanguageDetector}
     */
    public interface LanguageAnalyser {
        /**
         * Analyses the provided input and returns a score between 0 and 1
         *
         * @param input The normalized input text
         *
         * @return A score representing how well the input matches the language
         */
        Decimal analyse(String input);
    }

    /**
     * Base class for language analysers that score input by comparing weighted words
     */
    public abstract class WeightedWordsLanguageAnalyzer implements LanguageAnalyser {

        /**
         * Analyses the provided input using weighted word markers
         *
         * @param input The normalized input text
         *
         * @return A score between 0 and 1 based on matched weighted words
         */
        public Decimal analyse(String input) {

            Map<String, Decimal> weightedWords = getWeightedWords();

            Decimal matchedWeight = 0;
            Decimal totalWeight = 0;

            for (String marker : weightedWords.keySet()) {
                Decimal weight = weightedWords.get(marker);
                totalWeight += weight;

                if (matchesMarker(input, marker)) {
                    matchedWeight += weight;
                }
            }

            if (totalWeight == 0) return 0;

            return safeDivide(matchedWeight, totalWeight);
        }

        /**
         * Builds a normalized weighted-word map from parallel word and weight lists
         *
         * @param words The words to use as markers
         * @param weights The weights corresponding to each word
         *
         * @return A map of normalized words to weights
         *
         * @throws IllegalArgumentException When inputs are missing or sizes do not align
         */
        protected Map<String, Decimal> weightedWords(List<String> words, List<Decimal> weights) {
            if (words == null || weights == null) {
                throw new IllegalArgumentException('Each language must contain words and weights');
            } else if (words.size() < 50 || words.size() > weights.size()) {
                throw new IllegalArgumentException('Each language must contain at least 50 words and the same amount of weights. Found ' + words.size() + ' words and ' + weights.size() + ' weights.');
            }

            Map<String, Decimal> result = new Map<String, Decimal>();
            for (Integer i = 0; i < words.size(); i++) {
                result.put(words[i].trim().toLowerCase(), weights[i]);
            }

            return result;
        }

        /**
         * Returns the weighted words used by this analyser
         *
         * @return A map of marker text to weights
         */
        public abstract Map<String, Decimal> getWeightedWords();
    }

    /**
     * Holds the result of a language detection attempt
     */
    public class DetectionResult {
        /**
         * The best matching language code
         */
        @InvocableVariable(
                Label='Language Code'
                Description='The best matching language code')
        public String languageCode;

        /**
         * The confidence score derived from the top score versus total positive score
         */
        @InvocableVariable(
                Label='Confidence Score'
                Description='The confidence score derived from the top score versus total positive score')
        public Decimal confidence;

        /**
         * Per-language analyser scores collected during detection
         */
        public Map<String, Decimal> scores;

        /**
         * Creates a default detection result
         */
        public DetectionResult() {
            this.languageCode = 'en-us';
            this.confidence = 0;
            this.scores = new Map<String, Decimal>();
        }
    }

    /**
     * Holds the request of a language detection attempt,
     * mainly used for InvokableMethod calls
     */
    public class DetectionRequest {
        /**
         * The text to analyse
         */
        @InvocableVariable(
                Label='Input'
                Description='The text to be analyzed for language detection'
                Required=true)
        public String input;

        /**
         * The language codes to evaluate
         */
        @InvocableVariable(
                Label='Languages'
                Description='The language codes to evaluate')
        public List<String> languageCodes;

        /**
         * The score threshold that can stop analysis early
         */
        @InvocableVariable(
                Label='Score Threshold'
                Description='The score threshold that can stop analysis early')
        public Decimal minimumScoreLevel;
    }
}