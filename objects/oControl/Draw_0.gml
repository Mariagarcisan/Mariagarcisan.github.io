/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Verifica que no esté en RoomFin antes de dibujar los corazones
if (room != RoomFin) {
    var startX = 10; // Posición X inicial
    var startY = 10; // Posición Y inicial
    var spacing = 90; // Espacio entre corazones

    // Dibuja los corazones en la pantalla según la cantidad de vidas
    for (var i = 0; i < vidas; i++) {
        draw_sprite(sHeart, 0, startX + i * spacing, startY);
    }
}
