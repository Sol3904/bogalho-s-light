/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

randomize();


// Inherit the parent event
event_inherited();

max_vida = 5;
vida_atual = max_vida;

healthbar_width = 100;
healthbar_height = 10;
healthbar_x = (320/2) - (healthbar_width/2);

if (!variable_global_exists("initial_y")) {
    initial_y = y;
}
healthbar_y = initial_y - 100;


max_velh = 4;
max_velv = 10;
dash_vel = 7;

xscale = 1;

show_state = true;

combo = 0;
dmg = noone;
possoatk = true;
atk_mult = 1;
atk_buff = room_speed;