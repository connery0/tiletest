package TileGenerationTest
{
	import flash.geom.Rectangle;
	import net.flashpunk.graphics.Image;
	import UI.Button;
	
	/**
	 * ...
	 * @author Connery0
	 */
	public class TileGrow extends Button
	{
		
		public function TileGrow(x:Number = 0, y:Number = 0, UpArrow:Boolean = true, text:String = "", callback:Function = null, params:Object = null)
		{
			super(x, y, text, callback, params);
			[Embed(source="../../assets/gfx/Arrows.png")]
			var Test:Class;
			
			if (UpArrow)
			{
				normal = hover = down = new Image(Test, new Rectangle(0, 0, 72, 55));
			}
			else
			{
				normal = hover = down = new Image(Test, new Rectangle(0, 62, 72, 52));
			}
			
			graphic = normal;
			setHitboxTo(normal);
		}
	
	}

}