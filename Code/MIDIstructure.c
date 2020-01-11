// Author C.Goodman
// Date 07/01/2020

#include <stdio.h>
#include <stdint.h>

// MIDI Message Explanation:
// https://www.cs.cmu.edu/~music/cmsip/readings/davids-midi-spec.htm
// MIDI Message Spec From:
// https://www.midi.org/specifications-old/item/table-1-summary-of-midi-message
// MIDI Baud Rate is 31250

//=============================================================
//MIDI Data Structure Definition
typedef struct {
    uint8_t id;
    uint8_t byte1;
    uint8_t byte2
} MIDIMessage;

//=============================================================
// Function Declarations
// Channel Voice Messages
MIDIMessage note_off(uint8_t, uint8_t, uint8_t);
MIDIMessage note_on(uint8_t, uint8_t, uint8_t);
MIDIMessage polyphonic_aftertouch(uint8_t, uint8_t, uint8_t);
MIDIMessage control_change(uint8_t, uint8_t, uint8_t);
MIDIMessage prog_change(uint8_t, uint8_t);
MIDIMessage channel_aftertouch(uint8_t, uint8_t);
MIDIMessage pitch_bend(uint8_t, uint8_t, uint8_t);
MIDIMessage channel_mode_message(uint8_t, uint8_t, uint8_t);

// System Common Messages
MIDIMessage time_quarter_frame(uint8_t, uint8_t);
MIDIMessage song_pos_point(uint8_t, uint8_t);
MIDIMessage song_select(uint8_t);
MIDIMessage tune_request(void);

// System Real-Time Messages
MIDIMessage timing_clock(void);
MIDIMessage start(void);
MIDIMessage continu(void);
MIDIMessage stop(void);
MIDIMessage active_sense(void);
MIDIMessage reset(void);

//=============================================================
// Function Definitions
// Channel Voice Messages
MIDIMessage note_off(uint8_t channel, uint8_t note, uint8_t velocity) {
    MIDIMessage message;
    message.id = 0x80 || channel;
    message.byte1 = note;
    message.byte2 = velocity;

    return message;
}

MIDIMessage note_on(uint8_t channel, uint8_t note, uint8_t velocity) {
    MIDIMessage message;
    message.id = 0x90 || channel;
    message.byte1 = note;
    message.byte2 = velocity;

    return message;
}

MIDIMessage polyphonic_aftertouch(uint8_t channel, uint8_t note, uint8_t pressure) {
    MIDIMessage message;
    message.id = 0xA0 || channel;
    message.byte1 = note;
    message.byte2 = pressure;

    return message;
}

MIDIMessage control_change(uint8_t channel, uint8_t controller, uint8_t value) {
    MIDIMessage message;
    message.id = 0xB0 || channel;
    message.byte1 = controller;
    message.byte2 = value;

    return message;
}

MIDIMessage program_change(uint8_t channel, uint8_t program) {
    MIDIMessage message;
    message.id = 0xC0 || channel;
    message.byte1 = program;
    message.byte2 = 0;

    return message;
}

MIDIMessage channel_aftertouch(uint8_t channel, uint8_t pressure) {
    MIDIMessage message;
    message.id = 0xD0 || channel;
    message.byte1 = pressure;
    message.byte2 = 0;

    return message;
}

MIDIMessage pitch_bend(uint8_t channel, uint8_t LSBs, uint8_t MSBs) {
    MIDIMessage message;
    message.id = 0xD0 || channel;
    message.byte1 = LSBs;
    message.byte2 = MSBs;

    return message;
}

MIDIMessage channel_mode_message(uint8_t channel, uint8_t c, uint8_t v) {
    MIDIMessage message;
    message.id = 0xB0 || channel;
    message.byte1 = c;
    message.byte2 = v;

    return message;
}

//-------------------------------------------------------------
// System Common Messages
MIDIMessage time_quarter_frame(uint8_t msgType, uint8_t values) {
    MIDIMessage message;
    message.id = 0xF1;
    message.byte1 = msgType;
    message.byte2 = values;

    return message;
}

MIDIMessage song_pos_point(uint8_t beatLSB, uint8_t beatMSB) {
    MIDIMessage message;
    message.id = 0xF2;
    message.byte1 = beatLSB;
    message.byte2 = beatMSB;

    return message;
}

MIDIMessage song_select(uint8_t song) {
    MIDIMessage message;
    message.id = 0xF3;
    message.byte1 = song;
    message.byte2 = 0;

    return message;
}

MIDIMessage tune_request(void) {
    MIDIMessage message;
    message.id = 0xF6;
    message.byte1 = 0;
    message.byte2 = 0;

    return message;
}

//-------------------------------------------------------------
// System Real-Time Messages
MIDIMessage timing_clock(void) {
    MIDIMessage message;
    message.id = 0xF8;
    message.byte1 = 0;
    message.byte2 = 0;

    return message;
}

MIDIMessage start(void) {
    MIDIMessage message;
    message.id = 0xFA;
    message.byte1 = 0;
    message.byte2 = 0;

    return message;    
}

MIDIMessage continu(void) {
    MIDIMessage message;
    message.id = 0xFB;
    message.byte1 = 0;
    message.byte2 = 0;

    return message;       
}
MIDIMessage stop(void) {
    MIDIMessage message;
    message.id = 0xFC;
    message.byte1 = 0;
    message.byte2 = 0;

    return message;    
}

MIDIMessage active_sense(void) {
    MIDIMessage message;
    message.id = 0xFE;
    message.byte1 = 0;
    message.byte2 = 0;

    return message;        
}

MIDIMessage reset(void) {
    MIDIMessage message;
    message.id = 0xFF;
    message.byte1 = 0;
    message.byte2 = 0;

    return message;        
}
