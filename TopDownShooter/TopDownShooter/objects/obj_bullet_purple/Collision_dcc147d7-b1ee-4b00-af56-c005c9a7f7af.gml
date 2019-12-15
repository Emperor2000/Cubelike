other.hit = true; //toggle player hit variable.
other.hp -= id.damage; //subtract damage from player health
instance_destroy(id); //destroy bullet instance