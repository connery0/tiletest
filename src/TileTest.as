package  {
	import mx.core.ButtonAsset;
	import net.flashpunk.World;
	import TileGenerationTest.Tile;
	import TileGenerationTest.TileEntity;
	import TileGenerationTest.TileGrow;
	import UI.Button;
	
	/**
	 * ...
	 * @author Connery0
	 */
	public class TileTest extends World 
	{
		
		public function TileTest() 
		{
			super();
			
		}
		
		private var Tilething:TileEntity;
		override public function begin():void {
			super.begin()

			Tilething = new TileEntity(200,400,new Tile(50));
			add(Tilething);
			add (new TileGrow(350, 200, true,"",GrowTile,10));
			add(new TileGrow(350, 400, false,"",GrowTile,-10));
		
		/*	var Xpos:Number;
			var Ypox:Number;
			var Xstart:Number=200;
			var Ystart:Number = 50;
			for (var i:int = 0; i <8 ; i++) 
			{
				for (var j:int = 0; j <8 ; j++) 
				{
					var stuff:TileEntity=new TileEntity(Xstart + 45 * j - 44 * i, Ystart + 23 * j + 22 * i, new Tile((Math.random()*50)+1))
					//stuff=new TileEntity(Xstart + 45 * j - 44 * i, Ystart + 23 * j + 22 * i,new WaterTile())
					add(stuff);
				}
			}
		*/	
			
			
		}
		
		public function GrowTile(amount:Number):void {
			if(amount>0 || (Tilething.size+amount)>1){
			Tilething.size+= amount;}
		}
		
	}

}