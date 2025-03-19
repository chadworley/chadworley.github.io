import wave
import struct
import math

# Parameters for the WAV file
frame_rate = 44100  # Sample rate (frames per second)
num_channels = 1    # Mono
sample_width = 2    # 16-bit PCM
num_frames = frame_rate * 5  # 5 seconds of audio

# Create a new WAV file
output_file = wave.open('output.wav', 'wb')
output_file.setparams((num_channels, sample_width, frame_rate, num_frames, 'NONE', 'not compressed'))

# Generate some sample data (sine wave)
data = []
for i in range(num_frames):
    value = int(32767 * math.sin(2 * math.pi * 440 * i / frame_rate)) # 440 Hz sine wave
    data.append(struct.pack('<h', value)) # Convert to 16-bit little-endian

# Write the data to the WAV file
output_file.writeframes(b''.join(data))

# Close the WAV file
output_file.close()
