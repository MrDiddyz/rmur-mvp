# rmur-mvp - Modular Music AI Studio 🎵

A comprehensive modular AI system for live music production that integrates **ChatGPT**, **advanced audio synthesis**, and **machine learning models**.

## 🎯 Overview

This is a complete music production environment with:
- ✨ **Live Music Studio** - Real-time multi-track production
- 🤖 **ChatGPT Integration** - AI-powered creative direction
- 🎛️ **Module Orchestrator** - Coordinate AI modules
- 🎚️ **Professional Effects** - Reverb, delay, compression
- 🔧 **Modular Architecture** - Plug-and-play components

## 🚀 Quick Start

### Installation

```bash
pip install -r requirements.txt
```

### Basic Usage

```python
from music_ai_studio import MusicAIStudio

# Create studio
studio = MusicAIStudio()

# Generate music
studio.generate_track("track_0", "C D E F G")
studio.add_effect_to_track("track_0", "reverb", decay=0.5)

# Mix output
mixed = studio.studio.mix()
```

### CLI Commands

```bash
# Interactive mode
python cli.py --interactive

# Process prompt
python cli.py --prompt "upbeat electronic track"

# With ChatGPT
python cli.py --interactive --chatgpt

# Run examples
python cli.py --example 1
```

## 📂 Project Structure

```
music_ai_core/
├── __init__.py              # Module exports
├── audio.py                 # Audio processing (librosa)
├── model.py                 # ML models (PyTorch)
├── live_studio.py           # Live music production
├── chatgpt_integration.py   # ChatGPT module
├── orchestrator.py          # Module coordination
└── config.py                # Configuration management

music_ai_studio.py           # Main application
cli.py                       # Command-line interface
examples.py                  # Usage examples
train.py                     # Model training script
```

## 🎛️ Core Modules

### 1. Live Music Studio
Create, synthesize, and mix music in real-time.

**Features:**
- Multi-track recording and synthesis
- Waveform generation (sine, square, sawtooth, triangle)
- Professional effects (reverb, delay, compression)
- Master volume control

**Usage:**
```python
studio = LiveMusicStudio(sample_rate=44100, num_tracks=8)
studio.generate_track("track_0", [(440, 1.0), (880, 1.0)])
studio.apply_effect("track_0", "reverb", decay=0.5)
mixed = studio.mix()
```

### 2. ChatGPT Integration
Get creative direction and music parameters from AI.

**Features:**
- Natural language prompt interpretation
- Automatic parameter extraction
- Creative suggestions
- Conversation history

**Usage:**
```python
chatgpt = ChatGPTModule(api_key="sk-...")
result = chatgpt.interpret_music_prompt("upbeat electronic")
# Returns: genre, tempo, mood, instruments, tips
```

### 3. Module Orchestrator
Coordinate all modules for collaborative AI production.

**Features:**
- Module registration & lifecycle
- Event-based architecture
- Collaborative task execution
- Session management

**Usage:**
```python
orchestrator = ModuleOrchestrator()
orchestrator.register_module("studio", studio)
orchestrator.register_module("chatgpt", chatgpt)

result = orchestrator.process_music_request("ambient track")
```

## 📖 Documentation

- [SYSTEM_README.md](SYSTEM_README.md) - Complete system guide
- [API_REFERENCE.md](API_REFERENCE.md) - Full API documentation
- [examples.py](examples.py) - 5 complete examples

## 🎓 Examples

### Example 1: Basic Workflow
```bash
python cli.py --example 1
```

### Example 2: ChatGPT Direction
```bash
python cli.py --example 2
```

### Example 3: Effects Processing
```bash
python cli.py --example 3
```

### Example 4: Complete Composition
```bash
python cli.py --example 4
```

### Example 5: Module Orchestration
```bash
python cli.py --example 5
```

## 🔑 Environment Setup

### OpenAI API (Optional)
For ChatGPT integration:

```bash
export OPENAI_API_KEY="sk-your-api-key"
```

## 🎵 Audio Features

### Synthesis
- Sine wave generation
- Square, sawtooth, triangle waves
- ADSR envelope control
- Frequency-based note generation

### Effects
- **Reverb**: Spatial depth (50ms delay)
- **Delay**: Echo effect with feedback
- **Compression**: Dynamic range control
- **Normalization**: Peak level management

### Mixing
- Multi-track combination
- Pan control (-1.0 to 1.0)
- Volume adjustment (0.0 to 1.0)
- Track muting/unmuting

## 🏗️ Architecture

```
┌─────────────────────────────────┐
│    Music AI Studio (Main)        │
└─────────────────────────────────┘
            ↓
┌─────────────────────────────────┐
│   Module Orchestrator           │
├─────────────────────────────────┤
│ • Module management             │
│ • Event coordination            │
│ • Task collaboration            │
└─────────────────────────────────┘
         ↓ ↓ ↓
    ┌────┴─┴─┴────┐
    ↓     ↓       ↓
┌────────────┐ ┌──────────┐ ┌────────┐
│   Studio   │ │ ChatGPT  │ │ Model  │
├────────────┤ ├──────────┤ ├────────┤
│ Synthesis  │ │ Creative │ │Learning│
│ Effects    │ │ Direction│ │Feature │
│ Mixing     │ │ Prompts  │ │Extract │
└────────────┘ └──────────┘ └────────┘
```

## 💻 System Requirements

- Python 3.8+
- 4GB RAM minimum
- CUDA-capable GPU (optional, for model training)

## 📦 Dependencies

- `torch` - Deep learning framework
- `librosa` - Audio processing
- `numpy` - Numerical computing
- `soundfile` - Audio I/O
- `openai` - ChatGPT API (optional)

## 🎯 Use Cases

1. **Live Music Production** - Real-time track generation and mixing
2. **AI-Assisted Composition** - ChatGPT-guided music creation
3. **Music ML Training** - Model development with preprocessed audio
4. **Audio Effects Processing** - Professional audio manipulation
5. **Generative Music** - Automated composition and synthesis

## 🔮 Roadmap

- [ ] Real-time audio streaming
- [ ] DAW plugin (VST/AU)
- [ ] MIDI controller support
- [ ] Advanced synthesis (FM, granular)
- [ ] Web UI
- [ ] Audio export (WAV, MP3)
- [ ] Preset system

## 🎚️ Music AI Core (model training)

This repository also contains a lightweight `music_ai_core` prototype for training and evaluating autoencoders on mel-spectrogram patches.

### Training

Two model options: `fc` (fully-connected) and `conv` (convolutional). The convolutional model typically provides better local feature learning for spectrograms.

```bash
python train.py data --out model.pth --epochs 10 --batch_size 8 --model_type conv
```

### Inference & Audio Reconstruction

Run inference on a single file:
```bash
python infer.py input.wav --model model.pth --output reconstructed --model_type conv --save_wav
```

This saves:
- `reconstructed.npy` — Mel spectrogram from the autoencoder
- `reconstructed.wav` — Reconstructed waveform using Griffin-Lim phase estimation (100 iterations by default)

Customize Griffin-Lim settings:
```bash
python infer.py input.wav --model model.pth --save_wav --gl_iter 200 --hop_length 256 --n_fft 1024
```

### Core Files

- `music_ai_core/audio.py` — Loading, mel extraction, Griffin-Lim waveform reconstruction
- `music_ai_core/model.py` — Fully-connected and convolutional autoencoders with factory function
- `train.py` — Training loop with model selection and device management
- `infer.py` — Inference with optional spectrogram-to-waveform reconstruction


## 📝 License

MIT License

## 🤝 Contributing

Contributions welcome! Follow existing code style and add tests.

---

**Built with 🎵 for music creators and AI enthusiasts**
