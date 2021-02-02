// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_blocks() {
	#region set variables
			blockChoice = 0; //default
		 var block;
		 var blkche;
		 k = 0;
		 life = 1;
		 level_req = 1;
		 shade = 0;
		 max_stack = 1;
		 deepest = 1;
	#endregion
	#region assign blockstates [high,low,spawn-chance,image_index, LIVES,  Min level req, max Stack, Drop, Name, Desc]
		//sort from highest spawn chance to lowest (Make code for it later?)
		block[0][0] = 1; //Null Block
			block[0][1] = 50;
			block[0][2] = 100;
			block[0][3] = 0;
			block[0][4] = infinity;
			block[0][5] = infinity;
			block[0][6] = infinity;
			block[0][7] = 0;
			block[0][8] = "Null Block";
			block[0][9] = "How do you have this?!";
		block[1][0] = 1; //Dirt
			 block[1][1] = 3;
			 block[1][2] = 100;
			 block[1][3] = 1;
			 block[1][4] = 2;
			 block[1][5] = 1;
			 block[1][6] = 100;
			 block[1][7] = 1;
			 block[1][8] = "Dirt";
			 block[1][9] = "Dirty dirt dirt";
		block[2][0] = 4; //Stone
			 block[2][1] = 14;
			 block[2][2] = 100;
			 block[2][3] = 2;
			 block[2][4] = 3;
			 block[2][5] = 1;
			 block[2][6] = 100;
			 block[2][7] = 1;
			 block[2][8] = "Stone";
			 block[2][9] = "Probably a rock";
		block[3][0] = 5; //Copper
			block[3][1] = 7;
			block[3][2] = 10;
			block[3][3] = 3;
			block[3][4] = 5;
			block[3][5] = 2;
			block[3][6] = 50;
			block[3][7] = 3;
			block[3][8] = "Copper";
			block[3][9] = "Metal go BRR?";
		block[4][0] = 4; //Iron
			block[4][1] = 7;
			block[4][2] = 15;
			block[4][3] = 4;
			block[4][4] = 4;
			block[4][5] = 1;
			block[4][6] = 50;
			block[4][7] = 2;
			block[4][8] = "Iron";
			block[4][9] = "Very useful!";
		#endregion
		function alt (gndY) { //Layer Name Makes an artificial y start point for simplicity
			return gndY * 16 + 128;	 
		 }
		for (i = 0; i < array_length(block); i++) { //Qualifying blocks: repeat once for every block there is
			if (alt(block[i,0]) <= y) && alt(block[i,1]) >= y {
				blkche[k][0] = block[i][3]; //save material
				blkche[k][1] = block[i][2]; // save chances of spawning
				blkche[k][2] = block[i][4]; //save lives of block
				blkche[k][3] = block[i][5]; //save min level req
				blkche[k][4] = block[i][6]; //save Max_stack
				blkche[k][5] = block[i][7]; //save Drop quantity
				blkche[k][6] = block[i][8]; //save Name
				blkche[k][7] = block[i][9]; //save Description
				k++;
			}
			if (block[i][1] > deepest) deepest = block[i][1]; //mark down the deepest elevation
		 }
		for (l = 0; l < array_length(blkche); l++) { //Chance Selection
			if (blkche[l][1] >= irandom(99)) {
				blockChoice = blkche[l][0];
				life = blkche[l][2];
				level_req = blkche[l][3];
				max_stack = blkche[l][4];
				drop_quantity = blkche[l][5];
				name = blkche[l][6];
				desc = blkche[l][7];
			}
		}
} //end function