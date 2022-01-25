from mycroft import MycroftSkill, intent_file_handler


class BluetoothSpeakers(MycroftSkill):
    def __init__(self):
        MycroftSkill.__init__(self)

    @intent_file_handler('speakers.bluetooth.intent')
    def handle_speakers_bluetooth(self, message):
        self.speak_dialog('speakers.bluetooth')


def create_skill():
    return BluetoothSpeakers()

