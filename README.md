# PCB_Christmas_Tree
This project is a simple PCB based Christmas ornament with blinky LEDs and rechargeable supercaps.

---

### Hardware
#### Schematic
#### Layout
To keep this project cheap, the goal is to fit the whole layout on a 10x10cm 2 layer board, which JLCPCB famously offers at 2$ for 5pcs. Decision was made to split the tree in 2 halves that would then be soldered back together, to get a bit of extra height. 

For the 1st time I experimented with using the different layers (bare FR4 material, bare copper, copper+soldermask, bare soldermask and silkscreen) to make a somewhat artistic result. For more info on the colors you can get when playing with PCBs I would recommend visiting [this page](https://github.com/Hanqaqa/PCB_Color_Palette).

- Exposed pads spanning the 2 halves of the tree allow to join them and propagate the tracks for the LEDs
- Leds are reverse mounted so they shine through the board: solder mask keepout areas are placed on both sides to let the light through.
- Base of the tree doubles as a USB A port to easily recharge the batteries
- Supercapacitors provide mechanical support to stand the tree upright

#### Ordering
Zipped gerbers are available to be directly dropped on manufacturers websites like JLCPCB. I used their excellent prototype service
Final dimensions are 88.7mm*98mm.
Ordering settings: 2 layers, 1.6mm board thickness, white silkscreen, HASL(with lead) surface finish, 1oz copper weigth, "Specify a location" for Remove Order Number,
In the Remarks field: Please note: Some parts use Solder Mask Defined Pads. Do not compensate/modify the solder mask for them. No edge plating required. Center cutout to be routed and discarded.

---

### Software
