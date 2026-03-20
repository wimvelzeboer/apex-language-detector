/**
 * Provides weighted-word language analysers for Middle Eastern languages.
 *
 * <p>These analysers are used by {@link LanguageDetector} to score input text
 * against language-specific marker sets for Arabic, Hebrew, Kurdish, and Turkish.</p>
 */
public with sharing class LanguageDetectorDataMiddleEastern {

    /**
     * Analyses text for Arabic language markers.
     */
    public class ArabicLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted Arabic marker set used for language detection.
         *
         * @return A map of Arabic markers to their weights
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'في', 'من', 'إلى', 'على', 'أن', 'هذا', 'هذه', 'الذي', 'التي', 'كان',
                            'كانت', 'مع', 'عن', 'ما', 'ماذا', 'كيف', 'أين', 'متى', 'أنا', 'نحن',
                            'أنت', 'هو', 'هي', 'هم', 'هل', 'لا', 'نعم', 'كل', 'بعض', 'بعد',
                            'قبل', 'بين', 'حتى', 'إذا', 'لأن', 'إن', 'أو', 'ثم', 'عند', 'هناك',
                            'هنا', 'لغة', 'نص', 'رسالة', 'وقت', 'يوم', 'الناس', 'يمكن', 'يكون', 'أيضا',
                            'ذلك', 'تلك', 'هؤلاء', 'الآن', 'اليوم', 'غدا', 'أمس', 'دائما', 'أبدا', 'ربما',
                            'فقط', 'لكن', 'غير', 'تحت', 'فوق', 'داخل', 'خارج', 'اسم', 'بلد', 'عالم',
                            'عمل', 'حياة', 'مدرسة', 'معلم', 'طالب', 'مكان', 'شيء', 'بداية', 'نهاية', 'فتح',
                            'إغلاق', 'مساعدة', 'كبير', 'صغير', 'جديد', 'قديم', 'آخر', 'كلما', 'فهم', 'تعلم',
                            'قراءة', 'كتابة', 'استماع', 'رؤية', 'سؤال', 'جواب', 'شخص', 'بيت', 'يد', 'عين'
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
     * Analyses text for Hebrew language markers.
     */
    public class HebrewLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted Hebrew marker set used for language detection.
         *
         * @return A map of Hebrew markers to their weights
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'הוא', 'היא', 'אנחנו', 'אתם', 'הם', 'הן', 'מה', 'מי', 'איפה', 'מתי',
                    'איך', 'למה', 'כן', 'לא', 'יש', 'אין', 'היה', 'הייתה', 'יהיה', 'יכול',
                    'יכולה', 'יכולים', 'טוב', 'מאוד', 'שפה', 'טקסט', 'מילה', 'הודעה', 'אדם', 'זמן',
                    'היום', 'מחר', 'לפני', 'אחרי', 'בין', 'מתחת', 'מעל', 'גם', 'אבל', 'כי',
                    'אלה', 'האלה', 'כאן', 'שם', 'עכשיו', 'תמיד', 'אף פעם', 'אולי', 'רק', 'או',
                    'אם', 'לכן', 'אחר', 'בתוך', 'מחוץ', 'שם', 'עולם', 'מדינה', 'עבודה', 'חיים',
                    'בית', 'מורה', 'תלמיד', 'מקום', 'דבר', 'התחלה', 'סוף', 'לפתוח', 'לסגור', 'לעזור',
                    'גדול', 'קטן', 'חדש', 'ישן', 'אחרת', 'כל', 'להבין', 'ללמוד', 'לקרוא', 'לכתוב',
                    'לשמוע', 'לראות', 'שאלה', 'תשובה', 'יד', 'עין', 'אנשים', 'יום', 'לילה', 'אפשר'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
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

    /**
     * Analyses text for Kurdish language markers.
     */
    public class KurdishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted Kurdish marker set used for language detection.
         *
         * @return A map of Kurdish markers to their weights
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'ev', 'me', 'te', 'wî', 'hûn', 'ewan', 'çi', 'kî', 'kengê', 'çawa',
                    'çima', 'erê', 'na', 'heye', 'bûye', 'dibe', 'gelek', 'baş', 'ziman', 'nivîs',
                    'peyv', 'peyam', 'mirov', 'dem', 'îro', 'sibê', 'berî', 'piştî', 'navbera', 'jêr',
                    'ser', 'jî', 'lê', 'ger', 'yek', 'du', 'sê', 'çar', 'pênc', 'li ku',
                    'li vir', 'li wir', 'niha', 'paşê', 'her tim', 'tu carî', 'tenê', 'an', 'ji ber', 'welat',
                    'cihan', 'kar', 'jiyan', 'mal', 'mamoste', 'xwendekar', 'cih', 'tişt', 'destpêk', 'dawî',
                    'vekirin', 'girtin', 'alîkarî', 'mezin', 'biçûk', 'nû', 'kevin', 'din', 'hemû', 'têgihiştin',
                    'fêr bûn', 'xwendin', 'nivîsîn', 'guhdan', 'dîtin', 'pirs', 'bersiv', 'dest', 'çav', 'roj',
                    'şev', 'kes', 'gel', 'dikare', 'dibin', 'hene', 'tuneye', 'weke', 'dema', 'çend'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
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

    /**
     * Analyses text for Turkish language markers.
     */
    public class TurkishLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted Turkish marker set used for language detection.
         *
         * @return A map of Turkish markers to their weights
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            've', 'bir', 'bu', 'şu', 'o', 'için', 'ile', 'ama', 'fakat', 'de',
                            'da', 'mi', 'mı', 'ne', 'kim', 'ne zaman', 'nerede', 'nasıl', 'neden', 'evet',
                            'hayır', 'ben', 'sen', 'biz', 'siz', 'onlar', 'var', 'yok', 'olmak', 'olur',
                            'çok', 'iyi', 'dil', 'metin', 'kelime', 'mesaj', 'insan', 'zaman', 'bugün', 'yarın',
                            'önce', 'sonra', 'arasında', 'üstünde', 'altında', 'ayrıca', 'eğer', 'çünkü', 'gibi', 'kadar',
                            'benim', 'senin', 'onun', 'bizim', 'sizin', 'onların', 'burada', 'orada', 'şimdi', 'sonra',
                            'her zaman', 'asla', 'sadece', 'veya', 'ülke', 'dünya', 'iş', 'hayat', 'ev', 'öğretmen',
                            'öğrenci', 'yer', 'şey', 'başlangıç', 'bitiş', 'açmak', 'kapatmak', 'yardım', 'büyük', 'küçük',
                            'yeni', 'eski', 'diğer', 'herkes', 'anlamak', 'öğrenmek', 'okumak', 'yazmak', 'dinlemek', 'görmek',
                            'soru', 'cevap', 'el', 'göz', 'gün', 'gece', 'kişi', 'insanlar', 'olabilir', 'gerekli'
                    },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
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
