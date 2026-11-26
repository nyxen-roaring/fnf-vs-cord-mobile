package backend;

import flixel.FlxCamera;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;

#if mobile
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxG;
#end

enum MobilePadLayout
{
	MENU;
	CREDITS;
}

#if mobile
private typedef MobilePadButton =
{
	var action:String;
	var sprite:FlxSprite;
	var label:FlxSprite;
}
#end

class MobileVirtualPad extends FlxTypedGroup<FlxSprite>
{
	#if mobile
	var buttons:Array<MobilePadButton> = [];
	var touchActions:Map<Int, String> = new Map<Int, String>();
	#end

	public function new(layout:MobilePadLayout, ?camera:FlxCamera)
	{
		super();
		#if mobile
		final size:Int = Std.int(Math.max(48, Math.min(80, FlxG.height * 0.13)));
		final margin:Int = 24;
		final dpadX:Int = margin;
		final bottomY:Int = FlxG.height - size - margin;

		switch (layout)
		{
			case MENU:
				addButton('ui_up', '^', dpadX + size, bottomY - size * 2, size, 0xFF486581, camera);
				addButton('ui_left', '<', dpadX, bottomY - size, size, 0xFF486581, camera);
				addButton('ui_right', '>', dpadX + size * 2, bottomY - size, size, 0xFF486581, camera);
				addButton('ui_down', 'v', dpadX + size, bottomY, size, 0xFF486581, camera);
				addButton('accept', 'A', FlxG.width - size * 2 - margin, bottomY, size, 0xFF27AE60, camera);
				addButton('back', 'B', FlxG.width - size - margin, bottomY - size, size, 0xFFE74C3C, camera);

			case CREDITS:
				addButton('ui_left', '<', dpadX, bottomY, size, 0xFF486581, camera);
				addButton('ui_right', '>', dpadX + size + 12, bottomY, size, 0xFF486581, camera);
				addButton('accept', 'A', FlxG.width - size - margin, bottomY, size, 0xFF27AE60, camera);
		}
		#end
	}

	#if mobile
	private function addButton(action:String, label:String, x:Int, y:Int, size:Int, color:Int, ?camera:FlxCamera):Void
	{
		final button = new FlxSprite(x, y).makeGraphic(size, size, color);
		button.scrollFactor.set();
		button.alpha = ClientPrefs.data.mobileHitboxes ? 0.42 : 0;
		if (camera != null) button.camera = camera;
		add(button);

		final text = new FlxText(x, y + 2, size, label, Std.int(size * 0.42));
		text.setFormat(null, Std.int(size * 0.42), FlxColor.WHITE, CENTER);
		text.scrollFactor.set();
		text.alpha = ClientPrefs.data.mobileHitboxes ? 1 : 0;
		if (camera != null) text.camera = camera;
		add(text);

		buttons.push({action: action, sprite: button, label: text});
	}

	public function updateInput():Void
	{
		if (Controls.instance == null) return;
		Controls.instance.beginMobileInputFrame();

		for (touch in FlxG.touches.list)
		{
			if (touch.justReleased)
			{
				touchActions.remove(touch.touchPointID);
			}
			else if (touch.justPressed)
			{
				final action = getButtonAt(touch.gameX, touch.gameY);
				if (action != null) touchActions.set(touch.touchPointID, action);
			}
		}

		final staleTouchIds:Array<Int> = [];
		for (touchId in touchActions.keys())
			if (FlxG.touches.getByID(touchId) == null) staleTouchIds.push(touchId);
		for (touchId in staleTouchIds) touchActions.remove(touchId);

		for (button in buttons)
		{
			var touchCount = 0;
			for (action in touchActions)
				if (action == button.action) touchCount++;

			final isHeld = touchCount > 0;
			Controls.instance.setMobilePressed(button.action, isHeld);
			button.sprite.alpha = !ClientPrefs.data.mobileHitboxes ? 0 : (isHeld ? 0.62 : 0.42);
			button.label.alpha = ClientPrefs.data.mobileHitboxes ? 1 : 0;
		}
	}

	public function clearInput():Void
	{
		touchActions = new Map<Int, String>();
		if (Controls.instance != null) Controls.instance.clearMobileInput();
	}

	private function getButtonAt(x:Float, y:Float):Null<String>
	{
		for (button in buttons)
		{
			final sprite = button.sprite;
			if (x >= sprite.x && x <= sprite.x + sprite.width && y >= sprite.y && y <= sprite.y + sprite.height)
				return button.action;
		}
		return null;
	}
	#else
	public function updateInput():Void {}
	public function clearInput():Void {}
	#end
}
