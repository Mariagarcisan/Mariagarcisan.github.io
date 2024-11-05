/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

ysp+=0.1
xsp=0

if keyboard_check(vk_left)
{
	xsp=-5
}
if keyboard_check(vk_right)
{
	xsp=+5
}

move_and_collide(xsp,ysp,oSolid)

if place_meeting(x,y+1,oSolid)
{
	ysp=0
	if keyboard_check(vk_up)
	{
		ysp=-4
	}
}



if place_meeting(x,y,oFlag)
{
	room_goto_next()
	audio_play_sound(Sound1,Real,Bool)
}

if (place_meeting(x, y, oSpikes)) {
    var control = instance_find(oControl, 0); // Encuentra la primera instancia de oControl

    if (control != noone) {
        control.vidas -= 1; // Resta una vida

        if (control.vidas <= 0) {
            room_goto(RoomFin); // Cambia a Room2 si no hay más vidas
        } else {
            room_restart(); // Reinicia la sala si aún quedan vidas
        }
    } else {
        show_debug_message("Error: oControl no existe en la sala."); // Mensaje de error
    }
}

