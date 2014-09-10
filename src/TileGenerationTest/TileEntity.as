package TileGenerationTest
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Stamp;
	import net.flashpunk.Mask;
	
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	/**
	 * ...
	 * @author Connery0
	 */
	public class TileEntity extends Entity
	{
		protected var TileSprite:Tile;
		
		public function TileEntity(x:Number = 0, y:Number = 0, TileImage:Tile = null)
		{
			super(x, y);
			if (TileImage != null)
			{
				TileSprite = TileImage
				graphic = TileSprite;
			}
		}
		
		public function get size():Number
		{
			return TileSprite.size;
		}
		
		public function set size(amount:Number):void
		{
			TileSprite = new Tile(amount);
			graphic = TileSprite;
			
			//TileSprite.size=amount
		}
	
	}

}