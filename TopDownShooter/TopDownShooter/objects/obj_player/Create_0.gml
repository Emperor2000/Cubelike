//firing mechanics
firing_cooldown = 15; //cooldown after firing
enable_fire = true;   //boolean, is the player allowed to fire?
acceleration = 0.05;

//health 
hp = 4;


//player movement
move_speed = 4;		 //move speed
max_speed = move_speed;

hit = false;

move_horizontal = 0;
move_vertical = 0;


recoil_count = 0;
recoil_increment = 2;
recoil_decrement = 1;

#region Upgrades

upgrade_quantity = 0;
upgrade_multiplier = 1;
upgrade_toggle = -1;

// Rate of Fire
upgdrade_array[upgrades.rate_of_fire, upgrade_quantity] = 0;;
upgdrade_array[upgrades.rate_of_fire, upgrade_multiplier] = 1.15;

// Max Health
upgdrade_array[upgrades.max_health, upgrade_quantity] = 0;
upgdrade_array[upgrades.max_health, upgrade_multiplier] = 1.25;

// Movement Speed
upgdrade_array[upgrades.movement_speed, upgrade_quantity] = 0;
upgdrade_array[upgrades.movement_speed, upgrade_multiplier] = 1.1;

// Bullet Damage
upgdrade_array[upgrades.bullet_damage, upgrade_quantity] = 0;
upgdrade_array[upgrades.bullet_damage, upgrade_multiplier] = 1.3;

// Missiles
upgdrade_array[upgrades.missiles, upgrade_quantity] = 0;
upgdrade_array[upgrades.missiles, upgrade_multiplier] = upgrade_toggle;

// Boost
upgdrade_array[upgrades.boost, upgrade_quantity] = 0;
upgdrade_array[upgrades.boost, upgrade_multiplier] = upgrade_toggle;

#endregion


//blending
alpha_level = 0.5;
alpha_increment = 0.005;


hsp = 0;			 //horizontal speed
vsp = 0;		  	 //vertical speed



//score
current_run_score = 0;
current_run_credits = 300;
pressed1 = false;


trigger_death = false;