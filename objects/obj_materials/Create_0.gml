/// @description Spawning
 
 image_speed = 0;
 blockChoice = 0;
 var block;
 var blkche;
 k = 0;
 
#region assign blockstates [image_index,high1/low2,spawn-chance]
 block[0,0] = 1;
 block[0,1] = 3;
 block[0,2] = 100;
 block[0,3] = 0;
 block[1,0] = 4;
 block[1,1] = 7;
 block[1,2] = 100;
 block[1,3] = 1
#endregion

function alt (gndY) { //Makes an artificial y start point for simplicity
	return gndY * 16 + 128;	 
 }
 
for (i = 0; i < array_length(block); i++) { //repeat once for every block there is
	if (alt(block[i,0]) <= y) && alt(block[i,1]) >= y {
		blkche[k,0] = block[i,3]; //save type
		blkche[k,1] = block[i,2]; // save chances
		k++;
	}
 }
 //for (l = 0; l < array_length(blkche); l++) {
	//if (blkche[l,1] >= irandom(99)) {
	//	blockChoice = blkche[l,0];
	//}
 //}
 image_index = blockChoice;
 image_index = blkche[0,0]; //randomize this later