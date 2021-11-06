# PCB_Christmas_Tree
This project is a simple PCB based Christmas ornament with blinky LEDs and rechargeable supercaps.

---

### Hardware
#### Schematic

Components were chosen based on my current stock. 
* **Power storage**: Instead of traditional batteries, 2 supercapacitors were used as rechargeable storage, jst because I have a bunch of them and dislike non-rechargeable things. Granted, I estimated the tree can only run about 1 hour max per charge (approx. 6mA average current draw), which is not great considering a single CR2032 could probably last several weeks. But, supercaps are fun and you can recharge them with any USB port in <1min.
* **Charging**: An integrated USB connector allows direct charging of the supercaps, through a current limiting resistor. Do not make it less than ~15Ω to not exceed USB spec current capabilities. I added an optional charge balancing circuitry with TL431 shunt Vref, but didn't used it in the end as my caps were quite similar in capacity.
* **Brain of the operations**: I used the ever popular Attiny 25/45/85 series, a small 8-bit AVR micro which offers more than enough capabilities & programming space than I need. Programming port is a TagConnect footprint modified to remove the through holes.
* **LEDs**: Given the limited amount of GPIOs on the µC, I turned to [Charlieplexing](https://en.wikipedia.org/wiki/Charlieplexing), which allows with some clever tricks to drive 12 LEDs with only 4 pins. One thing though, if you want to use different color LEDs you won't be able to adjust their individual brightness easily, so blue LEDs will be dimmer than red by example.
#### Layout

To keep this project cheap, the goal is to fit the whole layout on a 10x10cm 2 layer board, which JLCPCB famously offers at 2$ for 5pcs. Decision was made to split the tree in 2 halves that would then be soldered back together, to get a bit of extra height. 

For the 1st time I experimented with using the different layers (bare FR4 material, bare copper, copper+soldermask, bare soldermask and silkscreen) to make a somewhat artistic result. For more info on the colors you can get when playing with PCBs I would recommend visiting [this page](https://github.com/Hanqaqa/PCB_Color_Palette).

- Exposed pads spanning the 2 halves of the tree allow to join them and propagate the tracks for the LEDs
- Leds are reverse mounted so they shine through the board: solder mask keepout areas are placed on both sides to let the light through.
- Base of the tree doubles as a USB A port to easily recharge the batteries
- Supercapacitors provide mechanical support to stand the tree upright
[PCB 3D view front][img/3Dview_front.png]
[PCB 3D view back][img/3Dview_back.png]
#### Ordering
Zipped gerbers are available to be directly dropped on manufacturers websites like JLCPCB. I used their excellent prototype service for my boards, both cheap and quick.

Feel free to use these files as is or modify and improve the project. Don't forget to share our version as well!

Final dimensions are 88.7mm*98mm.

Ordering settings: 2 layers, 1.6mm board thickness, white silkscreen, HASL(with lead) surface finish, 1oz copper weight, Specify a location for Remove Order Number,

In the Remarks field: "Please note: Some parts use Solder Mask Defined Pads. Do not compensate/modify the solder mask for them. No edge plating required. Center cutout to be routed and discarded."

---

### Software
