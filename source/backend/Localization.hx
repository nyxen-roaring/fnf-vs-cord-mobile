package backend;

import haxe.io.Path;
import openfl.utils.Assets;

#if sys
import sys.FileSystem;
#end

class Localization
{
	static final spanishStrings:Map<String, String> = [
		'Language' => 'Idioma',
		'Language:' => 'Idioma:',
		'Choose the game language. Translated dialogue loads when a matching language file exists.' => 'Elige el idioma del juego. Los diálogos traducidos se cargan si existe un archivo correspondiente.',
		'PRESS START' => 'PULSA START',
		'TAP TO START' => 'TOCA PARA EMPEZAR',
		'Press ' => 'Pulsa ',
		' to interact' => ' para interactuar',
		'Choose Advanced Options for: Vs Cord\nUse the up and down arrow keys to move the highlight to your choice.' => 'Elige las opciones avanzadas de Vs Cord.\nUsa las flechas arriba y abajo para seleccionar.',
		'ENTER=Choose' => 'ENTER=Elegir',
		'ESC=Cancel' => 'ESC=Cancelar',
		'Description: ' => 'Descripción: ',
		'Rebinding ' => 'Reasignando ',
		"Hold ESC to Cancel\nHold Backspace to Delete" => 'Mantén ESC para cancelar\nMantén Retroceso para borrar',
		'On' => 'Sí',
		'Off' => 'No',
		'Controls' => 'Controles',
		'Change your controls.' => 'Cambia los controles.',
		'Adjust Delay and Combo' => 'Ajustar retraso y combo',
		'Adjust the delay and combo positions on your screen.' => 'Ajusta el retraso y la posición del combo en pantalla.',
		'Graphics' => 'Gráficos',
		'Change your graphic settings.' => 'Cambia los ajustes gráficos.',
		'Visuals and UI' => 'Visuales e interfaz',
		'Adjust visuals and UI.' => 'Ajusta los visuales y la interfaz.',
		'Gameplay' => 'Jugabilidad',
		'Adjust the gameplay.' => 'Ajusta la jugabilidad.',
		'Debug Test' => 'Pruebas de depuración',
		'Access developer mode features.' => 'Accede a las funciones de desarrollador.',
		'Menu Music' => 'Música del menú',
		'Change the menu music.' => 'Cambia la música del menú.',
		'Reboot Game' => 'Reiniciar el juego',
		'Restart the game without closing the application.' => 'Reinicia el juego sin cerrar la aplicación.',
		'Reset Data' => 'Borrar datos',
		'Resets your game data (WARNING: THIS CANNOT BE UNDONE)' => 'Borra los datos del juego (AVISO: NO SE PUEDE DESHACER).',
		'Graphics:' => 'Gráficos:',
		'Low Quality' => 'Baja calidad',
		'If checked, disables some background details,\ndecreases loading times and improves performance.' => 'Desactiva algunos detalles del fondo,\nreduce los tiempos de carga y mejora el rendimiento.',
		'Anti-Aliasing' => 'Antialiasing',
		'If unchecked, disables anti-aliasing, increases performance\nat the cost of sharper visuals.' => 'Desactiva el antialiasing para mejorar el rendimiento,\na costa de bordes menos suaves.',
		'Shaders' => 'Efectos de sombreado',
		"If unchecked, disables shaders.\nIt's used for some visual effects, and also CPU intensive for weaker PCs." => 'Desactiva los shaders, usados en algunos efectos visuales\nque pueden exigir mucho a equipos menos potentes.',
		'GPU Caching' => 'Caché de GPU',
		"Pretty self explanatory, isn't it?" => 'Ajusta los fotogramas por segundo.',
		'Visuals and UI:' => 'Visuales e interfaz:',
		'Note Splashes:' => 'Destellos de notas:',
		'Select your prefered Note Splash variation or turn it off.' => 'Elige el estilo de los destellos de notas o desactívalos.',
		'Note Splash Opacity' => 'Opacidad de destellos',
		'How much transparent should the Note Splashes be.' => 'Ajusta la transparencia de los destellos.',
		'Hide HUD' => 'Ocultar HUD',
		'If checked, hides most HUD elements.' => 'Oculta la mayoría de los elementos de la interfaz.',
		'Mobile Hitboxes' => 'Controles táctiles',
		'Show translucent touch controls during gameplay.' => 'Muestra los controles táctiles durante la partida.',
		'Simplified Score' => 'Puntuación simplificada',
		'Makes the score less complicated if checked.' => 'Simplifica la presentación de la puntuación.',
		'Flashing Lights' => 'Luces parpadeantes',
		"Uncheck this if you're sensitive to flashing lights!" => 'Desactívalo si eres sensible a las luces parpadeantes.',
		'Camera Zooms' => 'Zoom de cámara',
		"If unchecked, the camera won't zoom in on a beat hit." => 'Desactívalo para evitar el zoom de cámara al ritmo.',
		'Score Text Zoom on Hit' => 'Zoom de puntuación al acertar',
		'If unchecked, disables the Score text zooming\neverytime you hit a note.' => 'Desactívalo para evitar el zoom de la puntuación\nal acertar una nota.',
		'Health Bar Opacity' => 'Opacidad de la barra de salud',
		'How much transparent should the health bar and icons be.' => 'Ajusta la transparencia de la barra de salud y los iconos.',
		'Background Brightness' => 'Brillo del fondo',
		'Displays a bar behind your notes so you can see them better' => 'Muestra una franja detrás de las notas para verlas mejor.',
		'FPS Counter' => 'Contador de FPS',
		'If unchecked, hides FPS Counter.' => 'Oculta el contador de FPS.',
		'Pause Screen Song:' => 'Música de pausa:',
		"What song do you prefer for the Pause Screen?" => 'Elige la música de la pantalla de pausa.',
		'Discord Rich Presence' => 'Actividad de Discord',
		'Combo Stacking' => 'Apilar combos',
		"Streamer Mode" => 'Modo streamer',
		'Gameplay Settings:' => 'Ajustes de jugabilidad:',
		'Downscroll' => 'Notas hacia abajo',
		'If checked, notes go Down instead of Up, simple enough.' => 'Hace que las notas bajen en lugar de subir.',
		'Middlescroll' => 'Notas centradas',
		'If checked, your notes get centered.' => 'Centra tus notas en la pantalla.',
		'Opponent Notes' => 'Notas del oponente',
		'Show opponent notes and receptors. If unchecked, both are hidden in every scroll mode.' => 'Muestra las notas y los receptores del oponente. Si se desactiva, ambos se ocultan en todos los modos de desplazamiento.',
		'Ghost Tapping' => 'Pulsación fantasma',
		"If checked, you won't get misses from pressing keys\nwhile there are no notes able to be hit." => 'Evita fallos al pulsar cuando no hay notas\nque se puedan acertar.',
		'Auto Pause' => 'Pausa automática',
		"Disable Reset Button" => 'Desactivar reinicio',
		'If checked, pressing Reset won\'t do anything.' => 'Desactiva el botón de reinicio.',
		'Hitsound Volume' => 'Volumen de aciertos',
		'Rating Offset' => 'Ajuste de precisión',
		'Sick! Hit Window' => 'Ventana de acierto Sick',
		'Good Hit Window' => 'Ventana de acierto Good',
		'Bad Hit Window' => 'Ventana de acierto Bad',
		'Safe Frames' => 'Margen de fotogramas',
		'Changes how late/early you have to hit for a "Sick!"\nHigher values mean you have to hit later.' => 'Ajusta el margen para obtener "Sick".\nLos valores mayores permiten acertar más tarde.',
		'Changes the amount of time you have\nfor hitting a "Sick!" in milliseconds.' => 'Ajusta el tiempo disponible para acertar\nuna nota "Sick", en milisegundos.',
		'Changes the amount of time you have\nfor hitting a "Good" in milliseconds.' => 'Ajusta el tiempo disponible para acertar\nuna nota "Good", en milisegundos.',
		'Changes the amount of time you have\nfor hitting a "Bad" in milliseconds.' => 'Ajusta el tiempo disponible para acertar\nuna nota "Bad", en milisegundos.',
		'Changes how many frames you have for\nhitting a note earlier or late.' => 'Ajusta cuántos fotogramas tienes para\nacertar una nota antes o después.',
		'If checked, the game automatically pauses if the screen isn\'t on focus.' => 'Pausa el juego automáticamente cuando la ventana pierde el foco.',
		'Funny notes does "Tick!" when you hit them.' => 'Las notas hacen "tic" al acertarlas.',
		'If unchecked, Ratings and Combo won\'t stack, saving on System Memory and making them easier to read' => 'Desactívalo para que los rangos y combos no se acumulen y sean más fáciles de leer.',
		'If unchecked, Any instance of copyrighted material will be disabled' => 'Desactívalo para ocultar el contenido protegido por derechos de autor.'
	];

	public static function text(value:String):String
	{
		if (value == null || ClientPrefs.data.language != 'Español') return value;
		return spanishStrings.exists(value) ? spanishStrings.get(value) : value;
	}

	public static function localizedPath(path:String):String
	{
		if (path == null || ClientPrefs.data.language != 'Español') return path;

		final translatedPath = Path.join([Path.directory(path), 'es', Path.withoutDirectory(path)]);
		#if sys
		if (FileSystem.exists(translatedPath)) return translatedPath;
		#end
		if (Assets.exists(translatedPath)) return translatedPath;
		return path;
	}
}
