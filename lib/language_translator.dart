// import 'package:flutter/material.dart';
// import 'package:translator/translator.dart';

// class LanguageTranslationPage extends StatefulWidget {
//   const LanguageTranslationPage({super.key});

//   @override
//   State<LanguageTranslationPage> createState() =>
//       _LanguageTranslationPageState();
// }

// class _LanguageTranslationPageState extends State<LanguageTranslationPage> {
//   var languages = ['Hindi', 'English', 'Arabic'];
//   var originLanguage = "From";
//   var destinationlanguage = "To";
//   var output = "";
//   TextEditingController languageController = TextEditingController();
//   void translate(String src, String dest, String input) async {
//     GoogleTranslator translator = new GoogleTranslator();
//     var translation = await translator.translate(input, from: src, to: dest);
//     setState(() {
//       output = translation.text.toString();
//     });

//     if (src == "--" || dest == "--") {
//       setState(() {
//         output = "Fail to translate";
//       });
//     }
//   }

//   String getLAnguageCode(String language) {
//     if (language == "English") {
//       return "en";
//     } else if (language == "Hindi") {
//       return "hi";
//     } else if (language == "Arabic") {
//       return "ar";
//     }
//     return "--";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Language Translation'),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 67, 46, 120),
//         elevation: 0,
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 50),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   DropdownButton(
//                       focusColor: Colors.white,
//                       iconDisabledColor: Colors.black,
//                       iconEnabledColor: Colors.white,
//                       hint: Text(
//                         originLanguage,
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       dropdownColor: Colors.black,
//                       icon: Icon(Icons.keyboard_arrow_down),
//                       items: languages.map((String dropDownStringItem) {
//                         return DropdownMenuItem(
//                           child: Text(dropDownStringItem),
//                           value: dropDownStringItem,
//                         );
//                       }).toList(),
//                       onChanged: (String? value) {
//                         setState(() {
//                           originLanguage = value!;
//                         });
//                       }),
//                   SizedBox(width: 40),
//                   Icon(
//                     Icons.arrow_right_alt_outlined,
//                     color: Colors.white,
//                     size: 40,
//                   ),
//                   SizedBox(
//                     width: 40,
//                   ),
//                   DropdownButton(
//                       focusColor: Colors.white,
//                       iconDisabledColor: Colors.white,
//                       iconEnabledColor: Colors.white,
//                       hint: Text(
//                         destinationlanguage,
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       dropdownColor: Colors.black,
//                       icon: Icon(Icons.keyboard_arrow_down),
//                       items: languages.map((String dropDownStringItem) {
//                         return DropdownMenuItem(
//                           child: Text(dropDownStringItem),
//                           value: dropDownStringItem,
//                         );
//                       }).toList(),
//                       onChanged: (String? value) {
//                         setState(() {
//                           destinationlanguage = value!;
//                         });
//                       }),
//                 ],
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   cursorColor: Colors.white,
//                   autofocus: false,
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                     labelText: 'Please Enter your text',
//                     labelStyle: TextStyle(fontSize: 15, color: Colors.white),
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white, width: 1)),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white, width: 1.0),
//                     ),
//                     errorStyle:
//                         TextStyle(color: Colors.redAccent, fontSize: 15),
//                   ),
//                   controller: languageController,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your text to translate';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Color.fromARGB(255, 67, 46, 120)
//                         // primary: Color(0xff2b3c5a)
//                         ),
//                     onPressed: () {
//                       translate(
//                           getLAnguageCode(originLanguage),
//                           getLAnguageCode(destinationlanguage),
//                           languageController.text.toString());
//                     },
//                     child: Text("Translate")),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "\n$output",
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.pink),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class LanguageTranslationPage extends StatefulWidget {
  const LanguageTranslationPage({super.key});

  @override
  State<LanguageTranslationPage> createState() =>
      _LanguageTranslationPageState();
}

class _LanguageTranslationPageState extends State<LanguageTranslationPage> {
  var languages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Italian',
    'Portuguese',
    'Dutch',
    'Chinese (Simplified)',
    'Chinese (Traditional)',
    'Japanese',
    'Korean',
    'Russian',
    'Arabic',
    'Hindi',
    'Marathi',
    'Gujarati',
    'Tamil',
    'Telugu',
    'Kannada',
    'Malayalam',
    'Punjabi',
    'Bengali',
    'Urdu',
    'Odia',
    'Assamese',
    'Maithili',
    'Santali',
    'Konkani',
    'Sindhi',
    'Manipuri',
    'Kashmiri',
    'Dogri',
    'Bodo',
    'Sanskrit',
    'Nepali',
    'Sinhala',
    'Burmese',
    'Lao',
    'Khmer',
    'Swahili',
    'Thai',
    'Turkish',
    'Swedish',
    'Finnish',
    'Danish',
    'Hungarian',
    'Greek',
    'Polish',
    'Czech',
    'Romanian',
    'Hebrew',
    'Ukrainian',
    'Vietnamese',
    'Malay',
    'Indonesian',
    'Filipino',
    'Persian (Farsi)',
    'Norwegian',
    'Serbian',
    'Afrikaans',
    'Amharic',
    'Basque',
    'Catalan',
    'Hausa',
    'Igbo',
    'Yoruba',
    'Zulu',
    'Maltese',
    'Mongolian',
    'Pashto',
    'Samoan',
    'Slovak',
    'Slovenian',
    'Tajik',
    'Tatar',
    'Uzbek',
    'Welsh',
    'Xhosa'
  ];
  var originLanguage = "From";
  var destinationlanguage = "To";
  var output = "";
  TextEditingController languageController = TextEditingController();

  GoogleTranslator translator = GoogleTranslator(); // Move translator here

  void translate(String src, String dest, String input) async {
    if (src == "--" || dest == "--") {
      setState(() {
        output = "Please select valid languages";
      });
      return;
    }

    try {
      var translation = await translator.translate(input, from: src, to: dest);
      setState(() {
        output = translation.text.toString();
      });
    } catch (e) {
      setState(() {
        output = "Error in translation: $e";
      });
    }
  }

  String getLanguageCode(String language) {
    switch (language) {
      case 'English':
        return 'en';
      case 'Spanish':
        return 'es';
      case 'French':
        return 'fr';
      case 'German':
        return 'de';
      case 'Italian':
        return 'it';
      case 'Portuguese':
        return 'pt';
      case 'Dutch':
        return 'nl';
      case 'Chinese (Simply)':
        return 'zh';
      case 'Chinese (Tradi)':
        return 'zh-TW';
      case 'Japanese':
        return 'ja';
      case 'Korean':
        return 'ko';
      case 'Russian':
        return 'ru';
      case 'Arabic':
        return 'ar';
      case 'Hindi':
        return 'hi';
      case 'Marathi':
        return 'mr';
      case 'Gujarati':
        return 'gu';
      case 'Tamil':
        return 'ta';
      case 'Telugu':
        return 'te';
      case 'Kannada':
        return 'kn';
      case 'Malayalam':
        return 'ml';
      case 'Punjabi':
        return 'pa';
      case 'Bengali':
        return 'bn';
      case 'Urdu':
        return 'ur';
      case 'Odia':
        return 'or';
      case 'Assamese':
        return 'as';
      case 'Maithili':
        return 'mai';
      case 'Santali':
        return 'sat';
      case 'Konkani':
        return 'kok';
      case 'Sindhi':
        return 'sd';
      case 'Manipuri':
        return 'mni';
      case 'Kashmiri':
        return 'ks';
      case 'Dogri':
        return 'doi';
      case 'Bodo':
        return 'brx';
      case 'Sanskrit':
        return 'sa';
      case 'Nepali':
        return 'ne';
      case 'Sinhala':
        return 'si';
      case 'Burmese':
        return 'my';
      case 'Lao':
        return 'lo';
      case 'Khmer':
        return 'km';
      case 'Swahili':
        return 'sw';
      case 'Thai':
        return 'th';
      case 'Turkish':
        return 'tr';
      case 'Swedish':
        return 'sv';
      case 'Finnish':
        return 'fi';
      case 'Danish':
        return 'da';
      case 'Hungarian':
        return 'hu';
      case 'Greek':
        return 'el';
      case 'Polish':
        return 'pl';
      case 'Czech':
        return 'cs';
      case 'Romanian':
        return 'ro';
      case 'Hebrew':
        return 'he';
      case 'Ukrainian':
        return 'uk';
      case 'Vietnamese':
        return 'vi';
      case 'Malay':
        return 'ms';
      case 'Indonesian':
        return 'id';
      case 'Filipino':
        return 'tl';
      case 'Persian (Farsi)':
        return 'fa';
      case 'Norwegian':
        return 'no';
      case 'Serbian':
        return 'sr';
      case 'Afrikaans':
        return 'af';
      case 'Amharic':
        return 'am';
      case 'Basque':
        return 'eu';
      case 'Catalan':
        return 'ca';
      case 'Hausa':
        return 'ha';
      case 'Igbo':
        return 'ig';
      case 'Yoruba':
        return 'yo';
      case 'Zulu':
        return 'zu';
      case 'Maltese':
        return 'mt';
      case 'Mongolian':
        return 'mn';
      case 'Pashto':
        return 'ps';
      case 'Samoan':
        return 'sm';
      case 'Slovak':
        return 'sk';
      case 'Slovenian':
        return 'sl';
      case 'Tajik':
        return 'tg';
      case 'Tatar':
        return 'tt';
      case 'Uzbek':
        return 'uz';
      case 'Welsh':
        return 'cy';
      case 'Xhosa':
        return 'xh';
      default:
        return '--';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Translation'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 67, 46, 120),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // FROM Language Dropdown
                  Flexible(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.4, // Adjust width dynamically
                      child: DropdownButton<String>(
                        isExpanded: true, // Prevents overflow
                        focusColor: Colors.white,
                        iconDisabledColor: Colors.black,
                        iconEnabledColor: Colors.white,
                        hint: Text(
                          originLanguage,
                          style: TextStyle(color: Colors.white),
                        ),
                        dropdownColor: Colors.black,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: languages.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            child: Text(dropDownStringItem,
                                overflow: TextOverflow.ellipsis),
                            value: dropDownStringItem,
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            originLanguage = value!;
                          });
                        },
                      ),
                    ),
                  ),

                  SizedBox(width: 10), // Reduced spacing

                  // Translation Icon
                  Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.white,
                    size: 40,
                  ),

                  SizedBox(width: 10), // Reduced spacing

                  // TO Language Dropdown
                  Flexible(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.4, // Adjust width dynamically
                      child: DropdownButton<String>(
                        isExpanded: true, // Prevents overflow
                        focusColor: Colors.white,
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        hint: Text(
                          destinationlanguage,
                          style: TextStyle(color: Colors.white),
                        ),
                        dropdownColor: Colors.black,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: languages.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            child: Text(dropDownStringItem,
                                overflow: TextOverflow.ellipsis),
                            value: dropDownStringItem,
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            destinationlanguage = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  cursorColor: Colors.white,
                  autofocus: false,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Please Enter your text',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                    ),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: languageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your text to translate';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 67, 46, 120)),
                  onPressed: () {
                    translate(
                      getLanguageCode(originLanguage),
                      getLanguageCode(destinationlanguage),
                      languageController.text.toString(),
                    );
                  },
                  child: Text("Translate"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "\n$output",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 67, 46, 120)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
