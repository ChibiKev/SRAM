## SRAM
Project for CSC 343 - Computer Systems Design Lab with Professor Izidor Gertner at the City College of New York.
## About The Project
- You will create a static random-access memory chip using D-Latches. With an SRAM you are able to store multiple bits at various address locations. Your goal now is to gain knowledge on how to create a memory device that can hold 16-bit wide values and display in the 7-segment HEX displays and decimal.
- **NOTE:** Before we start building our memory chip, we should be familiar with the operation and behavior of latches and flip-flops. 
- You will design an 16 x 4 SRAM by extending the SRAM. The output of this SRAM will be connected to a 4-to-7 decoder that outputs to the 7-segment-display. Input to this SRAM is using 4 switches and a key to signal WRITE to memory signal.
- You will design an 16 x 32 SRAM ( 16 locations 32 bits each) by extending the SRAM. The output of this SRAM will be connected to an appropriate decoder ( you have to figure out what decoder to use.) that outputs to the 7-segment-display.
- You have to find a way how to input 32 bits to memory word using 4 times 8 switches and keys.
## Pin Assignments
### 16x4 SRAM
| Variable Name	| Variable Type	| Signal Name	| FPGA Pin No. |
|  ------------ | ------------- | ----------- | ------------ |
| Chen_Kevin_datain[0]	| Input |	SW[0]		    | PIN_N25      |
| Chen_Kevin_datain[1]	| Input |	SW[1]		    | PIN_N26      |
| Chen_Kevin_datain[2]	| Input |	SW[2]		    | PIN_P25      |
| Chen_Kevin_datain[3]	| Input |	SW[3]		    | PIN_AE14     |
| Chen_Kevin_address[0]	| Input |	SW[4]		    | PIN_AF14     |
| Chen_Kevin_address[1]	| Input |	SW[5]		    | PIN_AD13     |
| Chen_Kevin_address[2]	| Input |	SW[6]		    | PIN_AC13     |
| Chen_Kevin_address[3]	| Input |	SW[7]		    | PIN_C13      |
| Chen_Kevin_WE		      | Input |	SW[15]	    | PIN_U4       |
| Chen_Kevin_OE		      | Input |	SW[16]	    | PIN_V1       |
| Chen_Kevin_CS		      | Input |	SW[17]	    | PIN_V2       |
| Chen_Kevin_Segment_A0	| Output|	HEX0[0]     | PIN_AF10     |
| Chen_Kevin_Segment_B0	| Output|	HEX0[1]     | PIN_AB12     |
| Chen_Kevin_Segment_C0	| Output|	HEX0[2]     | PIN_AC12     |
| Chen_Kevin_Segment_D0	| Output|	HEX0[3]     | PIN_AD11     |
| Chen_Kevin_Segment_E0	| Output|	HEX0[4]     | PIN_AE11     |
| Chen_Kevin_Segment_F0	| Output|	HEX0[5]     | PIN_V14      |
| Chen_Kevin_Segment_G0	| Output|	HEX0[6]     | PIN_V13      |
### 16x32 SRAM
| Variable Name	| Variable Type	| Signal Name	| FPGA Pin No. |
|  ------------ | ------------- | ----------- | ------------ |
| Chen_Kevin_Keys[0]	  | Input	|	SW[0]		    | PIN_N25      |
| Chen_Kevin_Keys[1]	  | Input	|	SW[1]		    | PIN_N26      |
| Chen_Kevin_Switches[0]| Input	|	SW[2]		    | PIN_P25      |
| Chen_Kevin_Switches[1]| Input	|	SW[3]		    | PIN_AE14     |
| Chen_Kevin_Switches[2]| Input	|	SW[4]		    | PIN_AF14     |
| Chen_Kevin_Switches[3]| Input	|	SW[5]		    | PIN_AD13     |
| Chen_Kevin_Switches[4]| Input	|	SW[6]		    | PIN_AC13     |
| Chen_Kevin_Switches[5]| Input	|	SW[7]		    | PIN_C13      |
| Chen_Kevin_Switches[6]| Input	|	SW[8]		    | PIN_B13      |
| Chen_Kevin_Switches[7]| Input	|	SW[9]		    | PIN_A13      |
| Chen_Kevin_address[0]	| Input	|	SW[10]		  | PIN_N1       |
| Chen_Kevin_address[1]	| Input	|	SW[11]		  | PIN_P1       |
| Chen_Kevin_address[2]	| Input	|	SW[12]		  | PIN_P2       |
| Chen_Kevin_address[3]	| Input	|	SW[13]		  | PIN_T7       |
| Chen_Kevin_WE		      | Input	|	SW[15]		  | PIN_U4       |
| Chen_Kevin_OE		      | Input	|	SW[16]		  | PIN_V1       |
| Chen_Kevin_CS		      | Input	|	SW[17]		  | PIN_V2       |
| Chen_Kevin_Segment_A0	| Output|		HEX0[0]		| PIN_AF10     |
| Chen_Kevin_Segment_B0	| Output|		HEX0[1]		| PIN_AB12     |
| Chen_Kevin_Segment_C0	| Output|		HEX0[2]		| PIN_AC12     |
| Chen_Kevin_Segment_D0	| Output|		HEX0[3]		| PIN_AD11     |
| Chen_Kevin_Segment_E0	| Output|		HEX0[4]		| PIN_AE11     |
| Chen_Kevin_Segment_F0	| Output|		HEX0[5]		| PIN_V14      |
| Chen_Kevin_Segment_G0	| Output|		HEX0[6]		| PIN_V13      |
| Chen_Kevin_Segment_A1	| Output|		HEX1[0]		| PIN_V20      |
| Chen_Kevin_Segment_B1	| Output|		HEX1[1]		| PIN_V21      |
| Chen_Kevin_Segment_C1	| Output|		HEX1[2]		| PIN_W21      |
| Chen_Kevin_Segment_D1	| Output|		HEX1[3]		| PIN_Y22      |
| Chen_Kevin_Segment_E1	| Output|		HEX1[4]		| PIN_AA24     |
| Chen_Kevin_Segment_F1	| Output|		HEX1[5]		| PIN_AA23     |
| Chen_Kevin_Segment_G1	| Output|		HEX1[6]		| PIN_AB24     |
| Chen_Kevin_Segment_A2	| Output|		HEX2[0]		| PIN_AB23     |
| Chen_Kevin_Segment_B2	| Output|		HEX2[1]		| PIN_V22      |
| Chen_Kevin_Segment_C2	| Output|		HEX2[2]		| PIN_AC25     |
| Chen_Kevin_Segment_D2	| Output|		HEX2[3]		| PIN_AC26     |
| Chen_Kevin_Segment_E2	| Output|		HEX2[4]		| PIN_AB26     |
| Chen_Kevin_Segment_F2	| Output|		HEX2[5]		| PIN_AB25     |
| Chen_Kevin_Segment_G2	| Output|		HEX2[6]		| PIN_Y24      |
| Chen_Kevin_Segment_A3	| Output|		HEX3[0]		| PIN_Y23      |
| Chen_Kevin_Segment_B3	| Output|		HEX3[1]		| PIN_AA25     |
| Chen_Kevin_Segment_C3	| Output|		HEX3[2]		| PIN_AA26     |
| Chen_Kevin_Segment_D3	| Output|		HEX3[3]		| PIN_Y26      |
| Chen_Kevin_Segment_E3	| Output|		HEX3[4]		| PIN_Y25      |
| Chen_Kevin_Segment_F3	| Output|		HEX3[5]		| PIN_U22      |
| Chen_Kevin_Segment_G3	| Output|		HEX3[6]		| PIN_W24      |
| Chen_Kevin_Segment_A4	| Output|		HEX4[0]		| PIN_U9       |
| Chen_Kevin_Segment_B4	| Output|		HEX4[1]		| PIN_U1       |
| Chen_Kevin_Segment_C4	| Output|		HEX4[2]		| PIN_U2       |
| Chen_Kevin_Segment_D4	| Output|		HEX4[3]		| PIN_T4       |
| Chen_Kevin_Segment_E4	| Output|		HEX4[4]		| PIN_R7       |
| Chen_Kevin_Segment_F4	| Output|		HEX4[5]		| PIN_R6       |
| Chen_Kevin_Segment_G4	| Output|		HEX4[6]		| PIN_T3       |
| Chen_Kevin_Segment_A5	| Output|		HEX5[0]		| PIN_T2       |
| Chen_Kevin_Segment_B5	| Output|		HEX5[1]		| PIN_P6       |
| Chen_Kevin_Segment_C5	| Output|		HEX5[2]		| PIN_P7       |
| Chen_Kevin_Segment_D5	| Output|		HEX5[3]		| PIN_T9       |
| Chen_Kevin_Segment_E5	| Output|		HEX5[4]		| PIN_R5       |
| Chen_Kevin_Segment_F5	| Output|		HEX5[5]		| PIN_R4       |
| Chen_Kevin_Segment_G5	| Output|		HEX5[6]		| PIN_R3       |
| Chen_Kevin_Segment_A6	| Output|		HEX6[0]		| PIN_R2       |
| Chen_Kevin_Segment_B6	| Output|		HEX6[1]		| PIN_P4       |
| Chen_Kevin_Segment_C6	| Output|		HEX6[2]		| PIN_P3       |
| Chen_Kevin_Segment_D6	| Output|		HEX6[3]		| PIN_M2       |
| Chen_Kevin_Segment_E6	| Output|		HEX6[4]		| PIN_M3       |
| Chen_Kevin_Segment_F6	| Output|		HEX6[5]		| PIN_M5       |
| Chen_Kevin_Segment_G6	| Output|		HEX6[6]		| PIN_M4       |
| Chen_Kevin_Segment_A7	| Output|		HEX7[0]		| PIN_L3       |
| Chen_Kevin_Segment_B7	| Output|		HEX7[1]		| PIN_L2       |
| Chen_Kevin_Segment_C7	| Output|		HEX7[2]		| PIN_L9       |
| Chen_Kevin_Segment_D7	| Output|		HEX7[3]		| PIN_L6       |
| Chen_Kevin_Segment_E7	| Output|		HEX7[4]		| PIN_L7       |
| Chen_Kevin_Segment_F7	| Output|		HEX7[5]		| PIN_P9       |
| Chen_Kevin_Segment_G7	| Output|		HEX7[6]		| PIN_N9       |
## Ask me about anything
If there are any questions, feel free to ask them [here](https://github.com/ChibiKev/SRAM/issues).