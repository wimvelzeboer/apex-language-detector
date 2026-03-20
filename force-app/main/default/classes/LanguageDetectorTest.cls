
@IsTest
private class LanguageDetectorTest {
    @IsTest
    static void testAllLanguages() {
        final String input = 'Dit is toch echt een heel mooie Nederlandse tekst, voor zomaar een test om alles te testen';

        System.Test.startTest();
        LanguageDetector.DetectionResult result = LanguageDetector.analyse(input);
        System.Test.stopTest();

        System.Assert.areEqual('nl', result.languageCode, 'Expected Dutch');
    }

    @IsTest
    static void testSpecifiedLanguages() {
        final String input = 'Dit is toch echt een heel mooie Nederlandse tekst, voor zomaar een test om alles te testen';

        System.Test.startTest();
        LanguageDetector.DetectionResult result =
                LanguageDetector.analyse(input,
                        new List<String>{
                                'nl', 'en'
                        });
        System.Test.stopTest();

        System.Assert.areEqual('nl', result.languageCode, 'Expected Dutch');
    }

    @IsTest
    static void testSpecifiedLanguagesWithScore() {
        final String input = 'Dit is toch echt een heel mooie Nederlandse tekst, voor zomaar een test om alles te testen';

        System.Test.startTest();
        LanguageDetector.DetectionResult result =
                LanguageDetector.analyse(input,
                        new List<String>{
                                'nl', '                                                                 '
                        },
                        0.5);
        System.Test.stopTest();

        System.Assert.areEqual('nl', result.languageCode, 'Expected Dutch');
    }

    @IsTest
    static void testWithScore() {
        final String input = 'Dit is toch echt een heel mooie Nederlandse tekst, voor zomaar een test om alles te testen';

        System.Test.startTest();
        LanguageDetector.DetectionResult result = LanguageDetector.analyse(input, 0.5);
        System.Test.stopTest();

        System.Assert.areEqual('nl', result.languageCode, 'Expected Dutch');
    }

    @IsTest
    static void testInvokable() {
        LanguageDetector.DetectionRequest request = new LanguageDetector.DetectionRequest();
        request.input = 'Dit is toch echt een heel mooie Nederlandse tekst, voor zomaar een test om alles te testen';

        System.Test.startTest();
        List<LanguageDetector.DetectionResult> result =
                LanguageDetector.analyse(new List<LanguageDetector.DetectionRequest >{
                        request
                });
        System.Test.stopTest();

        System.Assert.areEqual('nl', result.get(0).languageCode, 'Expected Dutch');
    }
}