# Day 1 — USB Microphone System

USB Microphone System Analysis

This section explains the analog front-end of a USB microphone setup and its role in signal conditioning and conversion.

<img src="cktimg/Fig-d1-1-USBmic.png" width="500"/>

*System Overview*:

- *MEMS Microphone (SPH8878LR5H-1)*: Captures sound and outputs an analog voltage signal.
- *Amplification & Filtering*: The analog signal passes through a coupling capacitor and resistor, then enters an op-amp (OPA344) for amplification and noise filtering.
- *Analog to Digital Conversion (ADC)*: The conditioned analog signal is fed into an Arduino’s 10-bit ADC.
- *Digital Processing and USB Output*: The microcontroller processes the data and outputs it as USB-MIDI to a host device.

> 🎧 This design enables real-time conversion of sound into USB-MIDI digital data using analog IC techniques.
