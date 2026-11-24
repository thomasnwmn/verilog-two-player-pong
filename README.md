# verilog-two-player-pong
## Project Description
This is a project I collaborated on with [Maksym Draga](https://github.com/maksdraga) during out time together in EECS 3201 for our course project.
It uses the DE10-Lite FPGA board to create a game of pong displayed via VGA to a monitor.  It is completely written in Verilog and uses sequential logic to write each frame. 
It uses a clock divider to create a frame clock which ticks 60 times per second (60 fps), and each frame calculates paddle positions for both players, and the next ball position.
Collisions and boundaries are checked each frame, and hitting a boundary sets the velocity perpendicular to the wall as negative (bouncing in the other direction).
If the ball hits the vertical edges of the screen, the game is reset to a neutral state and a score is added for the player opposite to the vertical wall that the ball touched.
Player score is displayed on the seven-segment display on the board, and play can be resumed by pressing KEY[0] on the DE10-Lite.
The paddles are controlled using the leftmost and rightmost switches on the board, and the first inside switch relative to each control switch acts as an enable for each paddle (since the switches can either be 1 or 0, it is impossible to keep the paddle still without this enable).

## How to play
1. Open Quartus Prime Lite and open the project file called vgacore.qpf in the synthesis folder.
2. Compile the files on the left side in the "Tasks" Window, then scroll down in that window and open the programmer.
3. Ensure that the USB Blaster associated with the DE10-Lite is selected in the hardware setup, then click "Start".

## Controls
- KEY[0] on the board resumes the game after a point is scored
- SW[0] and SW[9] controls their respective paddles
- SW[1] and SW[8] act as an enable for their respective paddles

## References
- VGA Output [UC Davis EEC180 Tutorial](https://www.ece.ucdavis.edu/~bbaas/180/tutorials/vga/)
- [DE10-Lite_User_Manual](https://github.com/user-attachments/files/35362171/DE10-Lite_User_Manual.pdf)
