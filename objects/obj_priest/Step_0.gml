/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var chao = place_meeting(x, y + 1, obj_block)


if(!chao)
{
	velv += GRAVIDADE * massa;
	
}


switch(state)
{
	case "idle":
	{
		if(sprite_index != spr_priestidle)
		{
			//reiniciar a animacao de hit
			image_index = 0;
		}
		sprite_index = spr_priestidle;
		
		//troca de estado
		
		if(position_meeting(mouse_x, mouse_y, self))
		{
			if(mouse_check_button_pressed(mb_right))
			{
				state = "hit";
			}
		}
		
		break;
	}
	
	case "hit":
	{
		if(sprite_index != spr_priesthit)
		{
			//reiniciar a animacao de hit
			image_index = 0;
		}
		sprite_index = spr_priesthit;
		velh = 0;
		
		 show_debug_message("Inimigo atingido! Vida atual: " + string(vida_atual));
		
		//sair do hit
		
		if(image_index > image_number-1)
		{
			//vida restante?
			if(vida_atual > 0)
			{
			   state = "idle";
			}
			else if(vida_atual <= 0)
			{
			   state = "dead";			
			}
			
			
		}
		break;
	}
	
	case "dead":
	{
		if(sprite_index != spr_priestkill)
		{
			//reiniciar a animacao de hit
			image_index = 0;
		}
		sprite_index = spr_priestkill;
		
		//morte real
		if(image_index > image_number-1)
		{
			image_speed = 0;
			image_alpha -= .01;
			
			if(image_alpha <= 0) instance_destroy();
		}
		break;
	}
}