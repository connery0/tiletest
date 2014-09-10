package TileGenerationTest
{
	
	/**
	 * ...
	 * @author Connery0
	 */
	public class TileAssets
	{
		//	[Embed(source="../../assets/gfx/longcat.png")]public static const GRASSTILE:Class;
		[Embed(source="../../assets/gfx/GrasTile.png")]
		public static const GRASSTILE_img:Class;
		public static const TESTVAR:Object = {TileImage: GRASSTILE_img, topHeight: 48, middleHeight: 52, botttomHeight: 24, tileWidth: 90};
		
		[Embed(source="../../assets/gfx/water.png")]
		public static const WATER:Class;
	}

}