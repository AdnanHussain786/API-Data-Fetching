List<QuestionData> questions = [
  QuestionData(
      "MS-Word is an example of",
      [
        "An Operating System",
        "A processing device",
        "Application software",
        "An input device"
      ],
      'Application software',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),

  QuestionData(
      "Who created Flutter Framework?",
      ["Google", "Facebook", "Apple", "Microsoft"],
      'Google',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),
  QuestionData(
      "Which language is used for web development?",
      ["Java", "Python", "JavaScript", "C#"],
      'JavaScript',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),

  QuestionData(
      "Ctrl, Shift and Alt are called  keys.",
      ["modifier", "function", "DVD", "ROM"],
      'modifier',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),
  QuestionData(
      "A computer cannot " 'boot' " if it does not have the ________",
      ["Compiler", "Loader", "Operating system", "Assembler"],
      'Operating system',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),

  QuestionData(
      "________ is the process of dividing the disk into tracks and sectors",
      ["Tracking", "Formatting", "Crashing", "Allotting"],
      'Allotting',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),
  QuestionData(
      "Junk e-mail is also called ______",
      ["Spam", "Spoof", "Sniffer script", "Spool"],
      'Spam',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),
  QuestionData(
      "MS-Word is an example of",
      [
        "An Operating System",
        "A processing device",
        "Application software",
        "An input device"
      ],
      'Application software',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),
  QuestionData(
      "Who created Flutter Framework?",
      ["Google", "Facebook", "Apple", "Microsoft"],
      'Google',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),
  QuestionData(
      "Which language is used for web development?",
      ["Java", "Python", "JavaScript", "C#"],
      'JavaScript',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),

  QuestionData(
      "Ctrl, Shift and Alt are called  keys.",
      ["modifier", "function", "DVD", "ROM"],
      'modifier',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),
  QuestionData(
      "A computer cannot " 'boot' " if it does not have the ________",
      ["Compiler", "Loader", "Operating system", "Assembler"],
      'Operating system',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),

  QuestionData(
      "________ is the process of dividing the disk into tracks and sectors",
      ["Tracking", "Formatting", "Crashing", "Allotting"],
      'Allotting',
      'Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.Microsoft Word, for example, is a commonly used application software that allows users to create, edit, delete, and perform other actions on word documents.'),
  QuestionData(
      "Junk e-mail is also called ______",
      ["Spam", "Spoof", "Sniffer script", "Spool"],
      'Spam',
      'Microsoft Word, for example, is a commonly used application software'),

  // Add more questions here
];

class QuestionData {
  final String question;
  final List<String> options;
  String correctAnswer; // Correct answer
  String selectedOption; // User's selected answer
  bool isAnswerCorrect; // New property to track correctness
  String explanation; // Explanation for the correct answer

  QuestionData(
      this.question, this.options, this.correctAnswer, this.explanation)
      : selectedOption = '',
        isAnswerCorrect = false;
}
