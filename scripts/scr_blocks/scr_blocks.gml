// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_blocks(arg,material){ //arg: 0 = block spawn, 1 = inventory
	if (arg = 0) {
		blockChoice = 0; //default
		 var block;
		 var blkche;
		 var inventory;
		 k = 0;
		 life = 1;
		 level_req = 1;
		 shade = 0;
		 max_stack = 1;
		 max_inventory_slots = 10;
 
		#region assign blockstates [high,low,spawn-chance,image_index, LIVES,  Min level req, max Stack, Drop]
		//sort from highest spawn chance to lowest (Make code for it later?)
		block[0][0] = 1; //Null Block
			block[0][1] = 10000;
			block[0][2] = 100;
			block[0][3] = 0;
			block[0][4] = infinity;
			block[0][5] = infinity;
			block[0][6] = infinity;
			block[0][7] = 0;
		block[1][0] = 1; //Dirt
			 block[1][1] = 3;
			 block[1][2] = 100;
			 block[1][3] = 1;
			 block[1][4] = 2;
			 block[1][5] = 1;
			 block[1][6] = 100;
			 block[1][7] = 1;
		block[2][0] = 4; //Stone
			 block[2][1] = 7;
			 block[2][2] = 100;
			 block[2][3] = 2;
			 block[2][4] = 3;
			 block[2][5] = 1;
			 block[2][6] = 100;
			 block[2][7] = 1;
		block[3][0] = 5; //Copper
			block[3][1] = 7;
			block[3][2] = 10;
			block[3][3] = 3;
			block[3][4] = 5;
			block[3][5] = 2;
			block[3][6] = 50;
			block[3][7] = 3;
		block[4][0] = 4; //Iron
			block[4][1] = 7;
			block[4][2] = 15;
			block[4][3] = 4;
			block[4][4] = 4;
			block[4][5] = 1;
			block[4][6] = 50;
			block[4][7] = 2;
	
		#endregion

		//layer name
		function alt (gndY) { //Makes an artificial y start point for simplicity
			return gndY * 16 + 128;	 
		 }
 
		 //qualifying blocks
		for (i = 0; i < array_length(block); i++) { //repeat once for every block there is
			if (alt(block[i,0]) <= y) && alt(block[i,1]) >= y {
				blkche[k][0] = block[i][3]; //save material
				blkche[k][1] = block[i][2]; // save chances of spawning
				blkche[k][2] = block[i][4]; //save lives of block
				blkche[k][3] = block[i][5]; //save min level req
				blkche[k][4] = block[i][6]; //save Max_stack
				k++;
			}
		 }
 
		 //chance selection
		for (l = 0; l < array_length(blkche); l++) {
			if (blkche[l][1] >= irandom(99)) {
				blockChoice = blkche[l][0];
				life = blkche[l][2];
				level_req = blkche[l][3];
				max_stack = blkche[l][4];
			}
		}

		 return (blockChoice); //set type
	} else if (arg = 1) { //Inventory
		completed = false;
		#region inventory (probably testing)
		 inventory[0][0] = 0; //material
			inventory[0][1] = 1; //quantity
		inventory[1][0] = 1;
			inventory[1][1] = 0;
			#endregion
		for (i = 0;i < array_length(inventory)-1;i++) { //run for every existing inventory slot
			if (!completed) {
				if (inventory[i][0] = material) && (block[material][6] <= inventory[i][1] + block[material][7]) { //if the slot has the same material and has room,
					inventory[i][1] += block[material][7]; //add resource to slot
					completed = true;
				}
			}
		} //end for statement
		if (!completed) {
			if (array_length < max_inventory_slots) {
				array_push(inventory,array_length(inventory)+1,material);
				array_push(inventory,array_length(inventory),block[material][7]);
			} else {
				//drop sequence
			}
		} //end if non stack sequence
	} else if (arg = 2) { //end elseif 1
			for (i = 0;i < array_length(inventory) + 100;i++) {
			if (inventory[i][1] <= 0) {
				array_delete(inventory,i,1);
			}
		}
	}//end elseif 2
} //end function