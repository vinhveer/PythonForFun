import sys
from PyQt5.QtWidgets import QApplication, QWidget, QVBoxLayout, QPushButton, QFileDialog, QLabel
import speech_recognition as sr
from pydub import AudioSegment

class SpeechToTextApp(QWidget):
    def __init__(self):
        super().__init__()
        
        self.initUI()
        
    def initUI(self):
        layout = QVBoxLayout()

        self.label = QLabel("Chọn file âm thanh để chuyển đổi thành văn bản", self)
        layout.addWidget(self.label)

        self.button = QPushButton("Chọn file", self)
        self.button.clicked.connect(self.openFileNameDialog)
        layout.addWidget(self.button)

        self.setLayout(layout)
        self.setWindowTitle("Chuyển giọng nói thành văn bản")
        self.setGeometry(300, 300, 400, 200)

    def openFileNameDialog(self):
        options = QFileDialog.Options()
        options |= QFileDialog.ReadOnly
        fileName, _ = QFileDialog.getOpenFileName(self, "Chọn file âm thanh", "", "Audio Files (*.wav *.mp3)", options=options)
        if fileName:
            self.label.setText(f"Đang chuyển đổi file: {fileName}")
            self.convertSpeechToText(fileName)
        
    def convertSpeechToText(self, file_path):
        recognizer = sr.Recognizer()

        # Chuyển đổi file âm thanh nếu không phải là .wav
        if file_path.endswith(".mp3"):
            audio = AudioSegment.from_mp3(file_path)
            wav_path = file_path.replace(".mp3", ".wav")
            audio.export(wav_path, format="wav")
            file_path = wav_path

        # Đọc tệp âm thanh
        with sr.AudioFile(file_path) as source:
            audio_data = recognizer.record(source)

        try:
            # Chuyển đổi giọng nói thành văn bản
            text = recognizer.recognize_google(audio_data, language="vi-VN")
            self.label.setText("Văn bản: " + text)
        except sr.UnknownValueError:
            self.label.setText("Không thể nhận dạng giọng nói.")
        except sr.RequestError as e:
            self.label.setText(f"Lỗi dịch vụ: {e}")

if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = SpeechToTextApp()
    ex.show()
    sys.exit(app.exec_())
