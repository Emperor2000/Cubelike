delay = 0;

xx[0] = 0;
xx[1] = room_width;
yy[0] = 0;
yy[1] = room_height;



enemies_count = 10;
level = 1;

spawn[0] =  instance_create_layer(xx[0], yy[0], "Instances", obj_spawner);
spawn[1] =  instance_create_layer(xx[1], yy[0], "Instances", obj_spawner);
spawn[2] =  instance_create_layer(xx[0], yy[1], "Instances", obj_spawner);
spawn[3] =  instance_create_layer(xx[1], yy[1], "Instances", obj_spawner);




