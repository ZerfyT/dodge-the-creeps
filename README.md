# Dodge the Creeps

A fun 2D survival game built with Godot 4.4 engine using GDScript where players must avoid enemies for as long as possible while collecting points.

## 📚 Tutorial Reference

This project is based on the official Godot Engine tutorial:
**[Your First 2D Game](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html)**

The tutorial provides:

- Complete step-by-step instructions
- Detailed explanations of Godot concepts
- All game assets and resources
- Best practices for 2D game development

## 🎮 Game Overview

**Dodge the Creeps** is a simple yet addictive arcade-style game where you control a character that must dodge various types of enemies (creeps) that spawn randomly around the screen. The goal is to survive as long as possible while your score increases over time.

## 🕹️ How to Play

- **Movement**: Use arrow keys to move your character
  - `↑` Arrow Key: Move Up
  - `↓` Arrow Key: Move Down
  - `←` Arrow Key: Move Left
  - `→` Arrow Key: Move Right
- **Start Game**: Press `Space` or `Enter` to start a new game
- **Objective**: Avoid all enemies and survive as long as possible
- **Scoring**: Your score increases automatically over time while you stay alive

## 🎯 Game Features

- **Dynamic Enemy Spawning**: Enemies spawn randomly from different directions
- **Multiple Enemy Types**: Three different types of creeps with unique animations:
  - Flying enemies
  - Swimming enemies
  - Walking enemies
- **Smooth Character Animation**: Player character has walking and vertical movement animations
- **Score System**: Real-time score tracking
- **Sound Effects**: Background music and game over sound
- **Game Over Screen**: Clean restart functionality

## 🚀 Getting Started

### Prerequisites

- [Godot Engine 4.4](https://godotengine.org/download) or later

### Running the Game

1. Clone or download this repository
2. Open Godot Engine
3. Import the project by selecting the `project.godot` file
4. Press `F5` or click the "Play" button to run the game
5. Select the main scene when prompted

### Building for Distribution

1. In Godot, go to `Project > Export`
2. Add your desired export templates
3. Configure export settings for your target platform
4. Export the game

## 📁 Project Structure

```text
dodge-the-creeps/
├── main.gd                 # Main game controller
├── main.tscn              # Main game scene
├── player.gd              # Player character logic
├── player.tscn            # Player scene
├── mob.gd                 # Enemy (mob) behavior
├── mob.tscn               # Enemy scene template
├── hud.gd                 # User interface controller
├── hud.tscn               # UI scene
├── project.godot          # Godot project configuration
├── art/                   # Game assets
│   ├── playerGrey_*.png   # Player character sprites
│   ├── enemy*.png         # Enemy sprites
│   ├── *.wav/*.ogg        # Audio files
└── fonts/                 # Game fonts
    └── Xolonium-Regular.ttf
```

## 🎨 Assets

The game includes:

- **Character Sprites**: Gray player character with walking and up/down animations
- **Enemy Sprites**: Flying, swimming, and walking enemy animations
- **Audio**: Background music loop and game over sound effect
- **Font**: Xolonium Regular font for UI text

## 🛠️ Technical Details

- **Engine**: Godot 4.4
- **Language**: GDScript
- **Rendering**: Forward Plus renderer
- **Input System**: Custom input mapping for movement and game control
- **Physics**: Uses Area2D for player collision detection and RigidBody2D for enemies
- **Audio**: AudioStreamPlayer nodes for music and sound effects

## 📜 License

This project serves as a learning example for Godot game development. Feel free to use and modify for educational purposes.

---

Have fun dodging those creeps! 🏃‍♂️💨
