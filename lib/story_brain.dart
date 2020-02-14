import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'It\'s mid-February in NYC and you\'re dreaming of a warm sunny beach. Just then your phone rings.',
        choice1: '"Another scammer", you say and ignore the call.',
        choice2: 'You pick up. "Yes?".'),
    Story(
        storyTitle:
        '"Hi!, you\'re the lucky winner of a free trip to Mexico! You have 3 seconds to accept, yes or no?"',
        choice1: 'I\'m in, why not?  \u00A1Viva Mexico!.',
        choice2: '"Scammer", you yell, as you hang up the phone.'),
    Story(
        storyTitle:
            'Suddenly there\'s a knock on your front door.',
        choice1: 'You look through the peep-hole but no one\'s there. Strange. You sit back down on the couch.',
        choice2:'"I love visitors", you say as you open the door. Strange. No one there but... There\'s a big manila envelope addressed to you on the stoop.'),
    Story(
        storyTitle:
            'The phone rings loudly in the apartment next door. Your neighbor screams. "I won a cruise trip to Mexico!',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You open the envelope and find a travel itinerary with your name on it... and the initials S.M. of a second person, hmmmmm.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        '"What\'s this I\'m sitting on?" You reach underneath and find an envelope. Strange indeed.',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
