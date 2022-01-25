from mycroft import MycroftSkill, intent_handler
import subprocess

class BluetoothSpeakers(MycroftSkill):
    def __init__(self):
        MycroftSkill.__init__(self)

    def initialize(self):
        subprocess.Popen(['bash', self.root_dir + '/scripts/connect_bluetooth_speakers.sh'])
        
    @intent_handler('connect.bluetooth.speakers.intent')
    def handle_connect(self, message):
        subprocess.Popen(['bash', self.root_dir + '/scripts/connect_bluetooth_speakers.sh'])
        self.speak_dialog('speakers.connected')

    @intent_handler('disconnect.bluetooth.speakers.intent')
    def handle_disconnect(self, message):
        subprocess.Popen(['bash', self.root_dir + '/scripts/disconnect_bluetooth_speakers.sh'])
        self.speak_dialog('speakers.disconnected')


def create_skill():
    return BluetoothSpeakers()

