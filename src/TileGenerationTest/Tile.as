package TileGenerationTest
{
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author Connery0
	 */
	public class Tile extends Image
	{
		protected var topTile:BitmapData;
		protected var middleTile:BitmapData;
		protected var bottomTile:BitmapData;
		
		protected var topHeight:Number = 48;
		protected var middleHeight:Number = 52;
		protected var botttomHeight:Number = 24;
		protected var tileWidth:Number = 90;
		
		protected var _height:Number;
		
		public function Tile(Height:Number = 0, TileAsset:Object = null)
		{
			var source:Class = TileAssets.GRASSTILE_img;
			
			if (TileAsset != null)
			{
				source = TileAsset.TileImage;
				this.topHeight = TileAsset.topHeight;
				this.middleHeight = TileAsset.middleHeight;
				this.botttomHeight = TileAsset.bottomHeight;
				this.tileWidth = TileAsset.tileWidth;
			}
			
			super(source);
			
			_height = Height;
			size = Height;
		
		}
		
		public function get clas():* {
			return _class;
		}
		
		
		public function get size():Number
		{
			return _height;
		}
		
		public function set size(height:Number):void
		{
			ChangeHeight(height);
			_height = height;
		}
		
		protected function ChangeHeight(tileHeight:Number):void
		{
			var Zero:Point = new Point();
			
			var TempBitmap:BitmapData = new BitmapData(tileWidth, topHeight);
			
			var Result:BitmapData = new BitmapData(tileWidth, topHeight + tileHeight + botttomHeight);
			
			TempBitmap.copyPixels(source, new Rectangle(0, 0, tileWidth, topHeight), Zero);
			topTile = TempBitmap;
			
			if (tileHeight > 0)
			{
				
				TempBitmap = new BitmapData(90, tileHeight);
				
				for (var TempHeight:int = tileHeight; TempHeight > 0; )
				{
					if (TempHeight > middleHeight)
					{
						TempBitmap.copyPixels(source, new Rectangle(0, topHeight, 90, middleHeight), new Point(0, tileHeight - TempHeight));
						TempHeight = TempHeight - middleHeight;
					}
					else
					{
						TempBitmap.copyPixels(source, new Rectangle(0, topHeight, 90, TempHeight), new Point(0, tileHeight - TempHeight));
						TempHeight = TempHeight - middleHeight;
						
					}
				}
				
				middleTile = TempBitmap;
				
			}
			
			TempBitmap = new BitmapData(90, 24);
			TempBitmap.copyPixels(source, new Rectangle(0, 100, 90, 24), Zero);
			bottomTile = TempBitmap;
			
			Result.copyPixels(topTile, new Rectangle(0, 0, topTile.width, topTile.height), Zero);
			
			if (tileHeight > 0)
			{
				Result.copyPixels(middleTile, new Rectangle(0, 0, middleTile.width, middleTile.height), new Point(0, topTile.height))
			}
			;
			
			Result.copyPixels(bottomTile, new Rectangle(0, 0, bottomTile.width, bottomTile.height + tileHeight), new Point(0, topTile.height + tileHeight));
			
			_source = Result;
			_sourceRect = _source.rect;
			createBuffer();
			updateBuffer();
			
			y = -tileHeight;
			}
	
	}

}