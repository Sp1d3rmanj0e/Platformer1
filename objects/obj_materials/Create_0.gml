/// @description Spawning
 randomize(); //New gen every time
 
 image_speed = 0; //No natural animation
 blockChoice = 0; //default
 var block;
 var blkche;
 k = 0;
 life = 1;
 level_req = 1;
 shade = 0;
 
#region assign blockstates [high,low,spawn-chance,image_index, LIVES,  Min level req]
//sort from highest spawn chance to lowest (Make code for it later?)
block[0,0] = 1; //Null Block
	block[0,1] = 10000;
	block[0,2] = 100;
	block[0,3] = 0;
	block[0,4] = infinity;
	block[0,5] = infinity;
block[1,0] = 1; //Dirt
	 block[1,1] = 3;
	 block[1,2] = 100;
	 block[1,3] = 1;
	 block[1,4] = 2;
	 block[1,5] = 1;
block[2,0] = 4; //Stone
	 block[2,1] = 7;
	 block[2,2] = 100;
	 block[2,3] = 2;
	 block[2,4] = 3;
	 block[2,5] = 1;
block[3,0] = 5; //Copper
	block[3,1] = 7;
	block[3,2] = 10;
	block[3,3] = 3;
	block[3,4] = 5;
	block[3,5] = 2;
block[4,0] = 4; //Iron
	block[4,1] = 7;
	block[4,2] = 15;
	block[4,3] = 4;
	block[4,4] = 4;
	block[4,5] = 1;
#endregion

//layer name
function alt (gndY) { //Makes an artificial y start point for simplicity
	return gndY * 16 + 128;	 
 }
 
 //qualifying blocks
for (i = 0; i < array_length(block); i++) { //repeat once for every block there is
	if (alt(block[i,0]) <= y) && alt(block[i,1]) >= y {
		blkche[k,0] = block[i,3]; //save material
		blkche[k,1] = block[i,2]; // save chances of spawning
		blkche[k,2] = block[i,4]; //save lives of block
		blkche[k,3] = block[i,5]; //save min level req
		k++;
	}
 }
 
 //chance selection
for (l = 0; l < array_length(blkche); l++) {
	if (blkche[l,1] >= irandom(99)) {
		blockChoice = blkche[l,0];
		life = blkche[l,2];
		level_req = blkche[l,3];
	}
}

 image_index = blockChoice; //set type