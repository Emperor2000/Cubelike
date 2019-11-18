//spawn
//if (wave == 0) {
	//instance_create_layer(irandom_range(0, room_width), (irandom_range(-100, 0 
	for (var i = 0; i<wave; i++) {
	var enemy = instance_create_layer(room_width/2, room_height/2, "Instances", obj_enemy_red);
	if (!instance_exists(enemy)) {
	wave +=1;	
		}
	}
//}