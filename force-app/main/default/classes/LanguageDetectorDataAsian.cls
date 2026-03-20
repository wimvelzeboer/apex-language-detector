/**
 * Language-marker definitions for Asian and related language analyzers used by {@link LanguageDetector}.
 */
public with sharing class LanguageDetectorDataAsian {

    /**
     * Analyzer for Chinese language detection.
     */
    public class ChineseLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Chinese text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            '的', '是', '我', '你', '他', '她', '们', '在', '有', '和',
                            '了', '不', '这', '那', '中', '人', '说', '一', '个', '上',
                            '下', '大', '小', '好', '很', '也', '都', '要', '会', '可以',
                            '因为', '所以', '如果', '但是', '什么', '怎么', '哪里', '今天', '明天', '语言',
                            '文字', '消息', '内容', '请', '谢谢', '看', '听', '吃', '喝', '中国',
                            '我们', '他们', '她们', '没有', '不是', '一个', '这个', '那个', '现在', '时候',
                            '为什么', '怎么了', '知道', '觉得', '喜欢', '需要', '已经', '还是', '然后', '可能',
                            '问题', '回答', '名字', '国家', '世界', '时间', '工作', '生活', '朋友', '学校',
                            '老师', '学生', '地方', '东西', '事情', '开始', '结束', '打开', '关闭', '帮助',
                            '阅读', '写', '学习', '理解', '重要', '简单', '复杂', '非常', '一起', '里面'
                    },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
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

    /**
     * Analyzer for Indonesian language detection.
     */
    public class IndonesianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Indonesian text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'saya', 'kamu', 'dia', 'mereka', 'kita', 'kami', 'apa', 'siapa', 'kapan', 'bagaimana',
                            'mengapa', 'ya', 'tidak', 'ada', 'adalah', 'bisa', 'dapat', 'sangat', 'baik', 'bahasa',
                            'teks', 'kata', 'pesan', 'orang', 'waktu', 'hari', 'besok', 'sebelum', 'sesudah', 'antara',
                            'atas', 'bawah', 'juga', 'tetapi', 'jika', 'karena', 'pada', 'dalam', 'akan', 'mana',
                            'aku', 'engkau', 'anda', 'kami', 'kalian', 'milik', 'nya', 'sini', 'situ', 'sekarang',
                            'nanti', 'selalu', 'tidak pernah', 'mungkin', 'hanya', 'atau', 'sudah', 'masih', 'malam', 'tahun',
                            'hidup', 'dunia', 'negara', 'rumah', 'pekerjaan', 'tangan', 'mata', 'pertanyaan', 'jawaban', 'membaca',
                            'menulis', 'mendengar', 'melihat', 'besar', 'kecil', 'baru', 'lama', 'lain', 'setiap', 'manusia',
                            'bantuan', 'mengerti', 'belajar', 'guru', 'murid', 'sekolah', 'tempat', 'hal', 'awal', 'akhir'
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

    /**
     * Analyzer for Japanese language detection.
     */
    public class JapaneseLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Japanese text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'の', 'に', 'は', 'を', 'た', 'が', 'で', 'て', 'と', 'し',
                            'れ', 'さ', 'ある', 'いる', 'する', 'です', 'ます', '私', 'あなた', '彼',
                            '彼女', 'これ', 'それ', 'あれ', 'どこ', 'いつ', 'なぜ', 'どう', '何', '誰',
                            '今日', '明日', '言語', '文章', '単語', 'メッセージ', '人', '時間', '良い', 'とても',
                            'はい', 'いいえ', '可能', '見る', '聞く', '読む', '書く', '食べる', '飲む', '日本',
                            'わたし', 'ぼく', 'わたしたち', 'あなたたち', 'かれら', 'ここ', 'そこ', 'あそこ', 'いま', 'あと',
                            'まえ', 'いつも', 'ぜんぜん', 'たぶん', 'だから', 'しかし', 'もし', 'について', 'から', 'まで',
                            'より', 'だけ', 'でも', 'また', 'そして', 'まだ', 'もう', 'ちょっと', 'すごく', 'ほんとう',
                            '問題', '答え', '名前', '国', '世界', '仕事', '生活', '学校', '先生', '学生',
                            '場所', 'もの', 'こと', '始める', '終わる', '開く', '閉じる', '助ける', '大きい', '小さい'
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

    /**
     * Analyzer for Hindi language detection.
     */
    public class HindiLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Hindi text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'यह', 'वह', 'मैं', 'हम', 'तुम', 'आप', 'वे', 'क्या', 'कौन', 'कब',
                    'कहाँ', 'कैसे', 'क्यों', 'नहीं', 'हाँ', 'था', 'थी', 'थे', 'हो', 'होना',
                    'सकता', 'सकते', 'बहुत', 'अच्छा', 'भाषा', 'पाठ', 'शब्द', 'संदेश', 'आदमी', 'समय',
                    'आज', 'कल', 'पहले', 'बाद', 'बीच', 'ऊपर', 'नीचे', 'भी', 'लेकिन', 'यदि',
                    'मेरा', 'मेरी', 'मेरे', 'तुम्हारा', 'तुम्हारी', 'हमारा', 'उनका', 'यहाँ', 'वहाँ', 'अब',
                    'फिर', 'हमेशा', 'कभी', 'शायद', 'क्योंकि', 'या', 'सिर्फ', 'अभी', 'पहचान', 'उत्तर',
                    'प्रश्न', 'नाम', 'देश', 'दुनिया', 'काम', 'जीवन', 'स्कूल', 'शिक्षक', 'विद्यार्थी', 'जगह',
                    'चीज', 'शुरू', 'खत्म', 'खोलना', 'बंद', 'मदद', 'बड़ा', 'छोटा', 'नया', 'पुराना',
                    'दूसरा', 'हर', 'समझना', 'सीखना', 'ज़रूरी', 'संभव', 'पढ़ना', 'लिखना', 'सुनना', 'देखना'
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
                            5, 5, 5, 5, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Korean language detection.
     */
    public class KoreanLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Korean text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    '없다', '그리고', '하지만', '또는', '저', '나', '너', '우리', '그', '그녀',
                    '무엇', '누구', '언제', '어디', '왜', '어떻게', '오늘', '내일', '언어', '텍스트',
                    '단어', '메시지', '사람', '시간', '좋다', '매우', '예', '아니오', '보다', '듣다',
                    '읽다', '쓰다', '먹다', '마시다', '한국', '문장', '이것', '저것', '그것', '가능',
                    '나는', '너는', '우리는', '그들은', '여기', '저기', '지금', '나중', '항상', '절대',
                    '아마', '그래서', '그러나', '만약', '부터', '까지', '보다도', '만', '또', '아직',
                    '이미', '조금', '정말', '문제', '답', '이름', '나라', '세계', '일', '생활',
                    '학교', '선생님', '학생', '장소', '물건', '일하다', '시작하다', '끝나다', '열다', '닫다',
                    '돕다', '크다', '작다', '새롭다', '오래되다', '다른', '모든', '이해하다', '배우다', '필요하다'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 8, 8, 8, 8, 8, 8,
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

    /**
     * Analyzer for Maori language detection.
     */
    public class MaoriLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Maori text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'ia', 'mātou', 'tātou', 'rātou', 'tenei', 'tena', 'tera', 'hea', 'wai', 'āhea',
                            'kei hea', 'pēhea', 'āe', 'kāo', 'reo', 'kupu', 'karere', 'tangata', 'wā', 'i tēnei rā',
                            'āpōpō', 'i mua', 'i muri', 'i waenga', 'kei runga', 'kei raro', 'hoki', 'engari', 'mēnā', 'kotahi',
                            'rua', 'toru', 'nui', 'pai', 'āwhina', 'whenua', 'moana', 'whare', 'kai', 'inu',
                            'inaianei', 'tonu', 'pea', 'anake', 'ranei', 'kua', 'tonu', 'rā', 'pō', 'tau',
                            'oranga', 'ao', 'motu', 'mahi', 'ringa', 'kanohi', 'pātai', 'whakautu', 'pānui', 'tuhi',
                            'whakarongo', 'kite', 'hou', 'tawhito', 'rerekē', 'ia', 'tangata katoa', 'mārama', 'ako', 'kaiako',
                            'ākonga', 'kura', 'wāhi', 'mea', 'tīmatanga', 'mutunga', 'whakatūwhera', 'kati', 'ingoa', 'kōrero',
                            'haere', 'hoki mai', 'tika', 'kino', 'roa', 'poto', 'mahana', 'makariri', 'hoa', 'whānau'
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

    /**
     * Analyzer for Mongolian language detection.
     */
    public class MongolianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Mongolian text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'энэ', 'юу', 'хэн', 'хэзээ', 'хаана', 'яаж', 'яагаад', 'тийм', 'үгүй', 'байна',
                    'байсан', 'болно', 'маш', 'сайн', 'хэл', 'текст', 'үг', 'мессеж', 'хүн', 'цаг',
                    'өнөөдөр', 'маргааш', 'өмнө', 'дараа', 'дунд', 'дээр', 'доор', 'мөн', 'гэхдээ', 'хэрэв',
                    'учир нь', 'нэг', 'хоёр', 'гурав', 'улс', 'амьдрал', 'өдөр', 'шөнө', 'ажил', 'гэр',
                    'одоо', 'үргэлж', 'хэзээ ч', 'магадгүй', 'зөвхөн', 'эсвэл', 'аль хэдийн', 'одоо ч', 'жил', 'дэлхий',
                    'гар', 'нүд', 'асуулт', 'хариулт', 'унших', 'бичих', 'сонсох', 'харах', 'том', 'жижиг',
                    'шинэ', 'хуучин', 'өөр', 'бүгд', 'ойлгох', 'сурах', 'багш', 'сурагч', 'сургууль', 'газар',
                    'юм', 'эхлэл', 'төгсгөл', 'нээх', 'хаах', 'нэр', 'ярих', 'явах', 'ирэх', 'үнэн',
                    'муу', 'сайхан', 'ойр', 'хол', 'ус', 'хоол', 'найз', 'гэр бүл', 'хот', 'зам'
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

    /**
     * Analyzer for Tahitian language detection.
     */
    public class TahitianLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Tahitian text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'mai', 'i', 'ei', 'e', 'ua', 'aita', 'mea', 'aha', 'o vai', 'fea',
                            'hea', 'nahea', 'pea', 'reo', 'parau', 'poroi', 'taata', 'taime', 'mahana', 'ananahi',
                            'na mua', 'na muri', 'roto', 'runga', 'raro', 'atoa', 'maitai', 'rahi', 'iti', 'hoê',
                            'piti', 'toru', 'maha', 'moana', 'fenua', 'arii', 'fare', 'kai', 'inu', 'hio',
                            'nei', 'tera', 'tenei', 'i teie nei', 'muri iho', 'nunca', 'anake', 'eiaha', 'aore', 'matahiti',
                            'oraraa', 'ao', 'motu', 'ohipa', 'rima', 'mata', 'uiraa', 'pahonoraa', 'taio', 'papai',
                            'faaroo', 'hi‘o', 'apî', 'paari', 'ê', 'atoa', 'haapii', 'orometua', 'haapiiraa', 'vahi',
                            'mea', 'haamataraa', 'hopea', 'iriti', 'pani', 'i‘oa', 'parau', 'haere', 'ho‘i', 'parau mau',
                            'ino', 'maitai roa', 'piti aʻe', 'piri', 'atea', 'vai', 'maa', 'hoa', 'utuafare', 'oire'
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

    /**
     * Analyzer for Tamil language detection.
     */
    public class TamilLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Tamil text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'அவர்கள்', 'என்ன', 'யார்', 'எப்போது', 'எங்கே', 'எப்படி', 'ஏன்', 'ஆம்', 'இல்லை', 'உள்ளது',
                    'இருக்கும்', 'மிக', 'நன்று', 'மொழி', 'உரை', 'சொல்', 'செய்தி', 'மனிதன்', 'நேரம்', 'இன்று',
                    'நாளை', 'முன்', 'பின்', 'இடையில்', 'மேல்', 'கீழ்', 'உடன்', 'இல்லாமல்', 'ஆனால்', 'என்றால்',
                    'ஏனெனில்', 'ஒரு', 'இரண்டு', 'மூன்று', 'படி', 'பார்', 'கேள்', 'எழுது', 'சாப்பிடு', 'குடி',
                    'அவன்', 'அவள்', 'அது', 'இவை', 'அவை', 'எங்கள்', 'உங்கள்', 'இங்கு', 'அங்கு', 'இப்போது',
                    'பிறகு', 'எப்போதும்', 'ஒருபோதும்', 'ஏற்கனவே', 'மீண்டும்', 'அல்லது', 'மேலும்', 'மட்டும்', 'கூட', 'பற்றி',
                    'முதல்', 'வரை', 'காரணம்', 'பதில்', 'கேள்வி', 'பெயர்', 'நாடு', 'உலகம்', 'வேலை', 'வாழ்க்கை',
                    'பள்ளி', 'ஆசிரியர்', 'மாணவர்', 'இடம்', 'பொருள்', 'தொடங்கு', 'முடி', 'திற', 'மூடு', 'உதவி',
                    'பெரிய', 'சிறிய', 'புதிய', 'பழைய', 'வேறு', 'ஒவ்வொரு', 'புரிந்து', 'கற்று', 'தேவை', 'சாத்தியம்'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
                            9, 9, 9, 9, 8, 8, 8, 8, 8, 8,
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

    /**
     * Analyzer for Thai language detection.
     */
    public class ThaiLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Thai text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'เรา', 'พวกเขา', 'อะไร', 'ใคร', 'เมื่อไร', 'ที่ไหน', 'อย่างไร', 'ทำไม', 'ใช่', 'ไม่ใช่',
                    'ภาษา', 'ข้อความ', 'คำ', 'คน', 'เวลา', 'วันนี้', 'พรุ่งนี้', 'ก่อน', 'หลัง', 'ระหว่าง',
                    'บน', 'ล่าง', 'กับ', 'ไม่มี', 'แต่', 'ถ้า', 'เพราะ', 'หนึ่ง', 'สอง', 'สาม',
                    'ดี', 'มาก', 'สามารถ', 'อ่าน', 'เขียน', 'พูด', 'ฟัง', 'กิน', 'ดื่ม', 'อยู่',
                    'นี่', 'นั้น', 'นี้', 'เราเอง', 'ตอนนี้', 'แล้ว', 'อีก', 'เสมอ', 'ไม่เคย', 'อาจ',
                    'ดังนั้น', 'อย่างไรก็ตาม', 'หรือ', 'แค่', 'ยัง', 'เพิ่ง', 'คำถาม', 'คำตอบ', 'ชื่อ', 'ประเทศ',
                    'โลก', 'งาน', 'ชีวิต', 'โรงเรียน', 'ครู', 'นักเรียน', 'สถานที่', 'สิ่งของ', 'เริ่ม', 'จบ',
                    'เปิด', 'ปิด', 'ช่วย', 'ใหญ่', 'เล็ก', 'ใหม่', 'เก่า', 'อื่น', 'ทุก', 'เข้าใจ',
                    'เรียนรู้', 'จำเป็น', 'ข้อความนี้', 'คำนั้น', 'ภายใน', 'ภายนอก', 'เหนือ', 'ใต้', 'ใกล้', 'ไกล'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
                            9, 9, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Tibetan language detection.
     */
    public class TibetanLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Tibetan text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'ཁྱེད', 'ཁོང', 'ངེད', 'ཚོ', 'སུ', 'ག་རེ', 'ནམ', 'གང་དུ', 'ཇི་ལྟར', 'ཅི་ཕྱིར',
                    'རེད', 'མ་རེད', 'སྐད་ཡིག', 'ཡིག་ཆ', 'ཚིག', 'འཕྲིན', 'མི', 'དུས', 'དེ་རིང', 'སང་ཉིན',
                    'སྔོན', 'རྗེས', 'བར', 'སྟེང', 'འོག', 'མཉམ་དུ', 'འོན་ཀྱང', 'གལ་ཏེ', 'གཅིག', 'གཉིས',
                    'གསུམ', 'བཟང་པོ', 'ཆེན་པོ', 'ཆུང་ཆུང', 'ཀློག', 'འབྲི', 'བལྟ', 'ཉན', 'ཟ', 'འཐུང',
                    'ད་ལྟ', 'རྟག་པར', 'ནམ་ཡང', 'ཕལ་ཆེར', 'ཁོ་ན', 'ཡང་ན', 'ཟིན་པ', 'ད་དུང', 'ཉིན', 'མཚན',
                    'ལོ', 'ཚེ', 'འཛམ་གླིང', 'རྒྱལ་ཁབ', 'ཁང་པ', 'ལས་ཀ', 'ལག་པ', 'མིག', 'དྲི་བ', 'ལན',
                    'ཤེས', 'སློབ', 'སློབ་གྲྭ', 'སློབ་དཔོན', 'སློབ་མ', 'ས་ཆ', 'དངོས་པོ', 'འགོ་བཙུགས', 'མཇུག་སྒྲིལ', 'ཁ་ཕྱེ',
                    'ཁ་རྒྱག', 'རོགས་པ', 'མིང', 'བདེན་པ', 'ངན་པ', 'ཆུ', 'ཟས', 'གྲོགས་པོ', 'ནང་མི', 'ལམ'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 10, 9, 9, 9, 9, 9,
                            9, 9, 8, 8, 8, 8, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5
                    }
            );
        }
    }

    /**
     * Analyzer for Vietnamese language detection.
     */
    public class VietnameseLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Vietnamese text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(new List<String>{
                    'tôi', 'bạn', 'anh', 'cô', 'chúng tôi', 'họ', 'gì', 'ai', 'khi nào', 'ở đâu',
                    'như thế nào', 'tại sao', 'có', 'đúng', 'không phải', 'ngôn ngữ', 'văn bản', 'từ ngữ', 'thông điệp', 'con người',
                    'thời gian', 'hôm nay', 'ngày mai', 'trước', 'sau', 'giữa', 'cũng', 'nhưng', 'nếu', 'vì',
                    'một', 'hai', 'ba', 'tốt', 'rất', 'đọc', 'viết', 'nói', 'nghe', 'ăn',
                    'uống', 'chúng ta', 'họ là', 'đây', 'đó', 'bây giờ', 'sau đó', 'luôn luôn', 'không bao giờ', 'có thể',
                    'đã', 'đang', 'sẽ', 'hoặc', 'chỉ', 'vẫn', 'câu hỏi', 'câu trả lời', 'tên', 'quốc gia',
                    'thế giới', 'công việc', 'cuộc sống', 'trường học', 'giáo viên', 'học sinh', 'nơi', 'vật', 'bắt đầu', 'kết thúc',
                    'mở', 'đóng', 'giúp', 'lớn', 'nhỏ', 'mới', 'cũ', 'khác', 'mọi', 'hiểu',
                    'học', 'cần', 'bên trong', 'bên ngoài', 'gần', 'xa', 'đi', 'đến', 'thật', 'thường'
            },
                    new List<Decimal>{
                            10, 10, 10, 10, 9, 9, 9, 9, 9, 9,
                            9, 9, 8, 8, 8, 8, 8, 8, 8, 8,
                            8, 8, 8, 8, 8, 7, 7, 7, 7, 7,
                            7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                            4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                    }
            );
        }
    }

    /**
     * Analyzer for Zhuang language detection.
     */
    public class ZhuangLanguage extends LanguageDetector.WeightedWordsLanguageAnalyzer {
        /**
         * Returns the weighted words used to score Zhuang text.
         *
         * @return A map of marker text to weights.
         */
        public override Map<String, Decimal> getWeightedWords() {
            return weightedWords(
                    new List<String>{
                            'seiz', 'lawz', 'gij', 'maz', 'baenz', 'aih', 'raemx', 'mwngz', 'gyoengq', 'dae',
                            'yaek', 'nyaek', 'gaij', 'goengq', 'saed', 'cingq', 'va', 'vaenz', 'saw', 'ndaw',
                            'raix', 'daj', 'duj', 'raemj', 'rox', 'foq', 'haeux', 'cingj', 'vaiz', 'siengq',
                            'haenh', 'sam', 'si', 'mbanj', 'gojlaeng', 'dingq', 'dajgoj', 'raeuh', 'faex', 'gvaq',
                            'neix', 'nanz', 'daih', 'gwn', 'ndawz', 'laeng', 'ciengz', 'dandan', 'couh', 'yaix',
                            'goek', 'song', 'sam', 'siq', 'haj', 'hnz', 'mbouj goj', 'ngoenz', 'goenz', 'bi',
                            'saeh', 'lok', 'goh', 'ban', 'raen', 'ta', 'cam', 'dap', 'doeg', 'viet',
                            'ndeg', 'yawj', 'yaiq', 'nuek', 'mai', 'gauq', 'yied', 'boux', 'bouxdeih', 'bangh',
                            'roxnaeuz', 'hag', 'saek', 'diuz', 'gyaeuj', 'biu', 'mingz', 'ndoi', 'fwen', 'hwnj'
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
