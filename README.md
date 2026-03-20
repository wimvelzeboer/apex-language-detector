# Salesforce Language Detector

A lightweight tool for Salesforce to detect the language of a given string.
It is using the hundred most commonly used words in a language to detect the language.

## Usage

To analyze a string against all available languages, use the `analyse` method.

```apex
LanguageDetector.DetectionResult languageAnalysis =
        LanguageDetector.analyse('This is an english text');
System.Assert.areEqual('en', languageAnalysis.language);
```

The analyzer will return an object containing the detected language,
the confidence score and a list of all the languages and their score.

```aiignore
class DetectionResult {
  public String languageCode;
  public Decimal confidence;
  public Map<String, Decimal> scores;
}
```

Running the analyzer on all possible languages will take a while.
Therefore, a second parameter is available to specify the languages to be analyzed.

```apex
LanguageDetector.DetectionResult languageAnalysis =
        LanguageDetector.analyse(
                'This is an english text',
                new List<String>{
                        'en', 'de', 'fr', 'it'
                }
        );
```

Alternatively, you can add a minimum score, once that score is reached,
it will stop analyzing other languages and immediately return the result.

```apex
LanguageDetector.DetectionResult languageAnalysis =
        LanguageDetector.analyse(
                'This is an english text',
                0.5); // minimum score
// OR
LanguageDetector.DetectionResult languageAnalysis =
        LanguageDetector.analyse(
                'This is an english text',
                new List<String>{
                        'en', 'de', 'fr', 'it'
                },
                0.5); // minimum score
```

The score is determined by dividing the sum of the weights of matched words by the aggregate weight of all words present
in the language data.

## Compatible languages

| ISO 639-1 code | language name         | Compatible |
|----------------|-----------------------|------------|
| aa             | Afar                  |            |
| ab             | Abkhaz                |            |
| ae             | Avestan               |            |
| af             | Afrikaans             |            |
| ak             | Akan                  |            |
| am             | Amharic               |            |
| an             | Aragonese             |            |
| ar             | Arabic                | Yes        |
| as             | Assamese              |            |
| av             | Avaric                |            |
| ay             | Aymara                |            |
| az             | Azerbaijani           |            |
| ba             | Bashkir               |            |
| be             | Belarusian            | Yes        |
| bg             | Bulgarian             | Yes        |
| bh             | Bihari languages      |            |
| bi             | Bislama               |            |
| bm             | Bambara               |            |
| bn             | Bengali               |            |
| bo             | Tibetan               | Yes        |
| br             | Breton                |            |
| bs             | Bosnian               | Yes        |
| ca             | Catalan               |            |
| ce             | Chechen               |            |
| ch             | Chamorro              |            |
| co             | Corsican              |            |
| cr             | Cree                  |            |
| cs             | Czech                 | Yes        |
| cu             | Church Slavic         |            |
| cv             | Chuvash               |            |
| cy             | Welsh                 |            |
| da             | Danish                | Yes        |
| de             | German                | Yes        |
| dv             | Divehi                |            |
| dz             | Dzongkha              |            |
| ee             | Ewe                   |            |
| el             | Greek                 | Yes        |
| en             | English               | Yes        |
| eo             | Esperanto             | Yes        |
| es             | Spanish               | Yes        |
| et             | Estonian              |            |
| eu             | Basque                |            |
| fa             | Persian               |            |
| ff             | Fulah                 |            |
| fi             | Finnish               | Yes        |
| fj             | Fijian                |            |
| fo             | Faroese               |            |
| fr             | French                | Yes        |
| fy             | Western Frisian       |            |
| ga             | Irish                 | Yes        |
| gd             | Scottish Gaelic       |            |
| gl             | Galician              |            |
| gn             | Guaraní               |            |
| gu             | Gujarati              |            |
| gv             | Manx                  |            |
| ha             | Hausa                 |            |
| he             | Hebrew                | Yes        |
| hi             | Hindi                 | Yes        |
| ho             | Hiri Motu             |            |
| hr             | Croatian              | Yes        |
| ht             | Haitian Creole        |            |
| hu             | Hungarian             |            |
| hy             | Armenian              |            |
| hz             | Herero                |            |
| ia             | Interlingua           |            |
| id             | Indonesian            |            |
| ie             | Interlingue           |            |
| ig             | Igbo                  |            |
| ii             | Sichuan Yi            |            |
| ik             | Inupiaq               |            |
| io             | Ido                   |            |
| is             | Icelandic             |            |
| it             | Italian               | Yes        |
| iu             | Inuktitut             |            |
| ja             | Japanese              | Yes        |
| jv             | Javanese              |            |
| ka             | Georgian              |            |
| kg             | Kongo                 |            |
| ki             | Kikuyu                |            |
| kj             | Kuanyama              |            |
| kk             | Kazakh                |            |
| kl             | Kalaallisut           |            |
| km             | Central Khmer         |            |
| kn             | Kannada               |            |
| ko             | Korean                | Yes        |
| kr             | Kanuri                |            |
| ks             | Kashmiri              |            |
| ku             | Kurdish               |            |
| kv             | Komi                  |            |
| kw             | Cornish               |            |
| ky             | Kyrgyz                |            |
| la             | Latin                 |            |
| lb             | Luxembourgish         |            |
| lg             | Ganda                 |            |
| li             | Limburgish            |            |
| ln             | Lingala               |            |
| lo             | Lao                   |            |
| lt             | Lithuanian            |            |
| lu             | Luba-Katanga          |            |
| lv             | Latvian               | Yes        |
| mg             | Malagasy              |            |
| mh             | Marshallese           |            |
| mi             | Māori                 | Yes        |
| mk             | Macedonian            | Yes        |
| ml             | Malayalam             |            |
| mn             | Mongolian             | Yes        |
| mr             | Marathi               |            |
| ms             | Malay                 |            |
| mt             | Maltese               | Yes        |
| my             | Burmese               |            |
| na             | Nauru                 |            |
| nb             | Norwegian Bokmål      |            |
| nd             | Ndebele, North        |            |
| ne             | Nepali                |            |
| ng             | Ndonga                |            |
| nl             | Dutch                 | Yes        |
| nn             | Norwegian Nynorsk     |            |
| no             | Norwegian             | Yes        |
| nr             | Ndebele, South        |            |
| nv             | Navajo                |            |
| ny             | Chewa                 |            |
| oc             | Occitan               |            |
| oj             | Ojibwa                |            |
| om             | Oromo                 |            |
| or             | Oriya                 |            |
| os             | Ossetian              |            |
| pa             | Panjabi               |            |
| pi             | Pali                  |            |
| pl             | Polish                | Yes        |
| ps             | Pashto                |            |
| pt             | Portuguese            | Yes        |
| qu             | Quechua               |            |
| rm             | Romansh               |            |
| rn             | Rundi                 |            |
| ro             | Romanian              | Yes        |
| ru             | Russian               | Yes        |
| rw             | Kinyarwanda           |            |
| sa             | Sanskrit              |            |
| sc             | Sardinian             |            |
| sd             | Sindhi                |            |
| se             | Northern Sami         |            |
| sg             | Sango                 |            |
| si             | Sinhala               |            |
| sk             | Slovak                | Yes        |
| sl             | Slovenian             | Yes        |
| sm             | Samoan                |            |
| sn             | Shona                 |            |
| so             | Somali                |            |
| sq             | Albanian              |            |
| sr             | Serbian               | Yes        |
| ss             | Swati                 |            |
| st             | Southern Sotho        |            |
| su             | Sundanese             |            |
| sv             | Swedish               | Yes        |
| sw             | Swahili               |            |
| ta             | Tamil                 | Yes        |
| te             | Telugu                |            |
| tg             | Tajik                 |            |
| th             | Thai                  | Yes        |
| ti             | Tigrinya              |            |
| tk             | Turkmen               |            |
| tl             | Tagalog               |            |
| tn             | Tswana                |            |
| to             | Tonga (Tonga Islands) |            |
| tr             | Turkish               | Yes        |
| ts             | Tsonga                |            |
| tt             | Tatar                 |            |
| tw             | Twi                   |            |
| ty             | Tahitian              | Yes        |
| ug             | Uyghur                |            |
| uk             | Ukrainian             | Yes        |
| ur             | Urdu                  |            |
| uz             | Uzbek                 |            |
| ve             | Venda                 |            |
| vi             | Vietnamese            | Yes        |
| vo             | Volapük               |            |
| wa             | Walloon               |            |
| wo             | Wolof                 |            |
| xh             | Xhosa                 |            |
| yi             | Yiddish               |            |
| yo             | Yoruba                |            |
| za             | Zhuang                | Yes        |
| zh             | Chinese               | Yes        |
| zu             | Zulu                  | Yes        |


## Contributing

Pull requests are welcome! Not all languages are supported yet, you can help by adding more.
