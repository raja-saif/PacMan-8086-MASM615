# Pac-Man in x86 Assembly (MASM + Irvine32)

A Pac-Man-style console game written in MASM assembly with the Irvine32 library. It has three levels, moving enemies, collectible fruits, teleport booths, and tracking for score and lives.

## 🎮 Features
- **Start screens:** you enter your name, can open an instructions screen (press `i`), and choose a level (1–3).
- **Three maze layouts**, drawn in color as text on a 120×27 grid.
- **Gameplay:**
  - Eat the `.` pellets to score.
  - Walls (`#`, `%`) block movement.
  - You start with 3 lives. Touching an enemy costs a life and sends you back to the start position.
- **Enemies:** patrol fixed back-and-forth paths. Level 1 has 2 enemies; levels 2 and 3 have 4.
- **Fruits** (levels 2–3): four bonus items, each worth +10 points.
- **Teleport booths** (level 3): corner positions that move the player to the opposite corner.
- **Level progression:** clearing the level's pellet/fruit target moves you to the next level, which resets lives and score. Clearing level 3 ends the game.
- **Controls:** `W` `A` `S` `D` to move, `P` to pause, `X` to quit.
- **Game Over screen** with your name and final score.

## 🛠 Tech Stack
- x86 assembly (MASM), 32-bit, `INCLUDE Irvine32.inc`
- Irvine32 library routines: `Gotoxy`, `SetTextColor`, `WriteString`, `ReadKey`, `ReadInt`, `Delay`, and others

## 📁 Project Structure
```
PacMan-8086-MASM615/
├── proj.asm       # Complete game source (data, screens, game loop, enemies, collisions)
└── i22-1353.mp4   # Gameplay demo video
```

## ▶️ How to Run
You need MASM and the Kip Irvine `Irvine32` library (`Irvine32.inc`, `Irvine32.lib`). The program uses 32-bit Irvine32 console routines, so build it as a Windows console program:

- **Visual Studio:** add `proj.asm` to an Irvine32 MASM project template, then build and run.
- **Command line (MASM with the Irvine32 setup):**
  ```bat
  ml /c /coff /Zi proj.asm
  link proj.obj Irvine32.lib kernel32.lib user32.lib /SUBSYSTEM:CONSOLE
  proj.exe
  ```

## 🎬 Demo
See [`i22-1353.mp4`](i22-1353.mp4) for a gameplay recording.

## 👤 Author
Raja Saif Ali — [GitHub](https://github.com/raja-saif) · [LinkedIn](https://www.linkedin.com/in/raja-saif-01702329a/)
