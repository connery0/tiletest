package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import TileTest;
	
	
	/**
	 * ...
	 * @author Connery0
	 */
	public class Main extends Engine 
	{
		
		public function Main() 
		{
			super(500, 500, 60,false);
		/*everything BUT button test? */
		/*	FP.world = new MyWorld();
			FP.console.enable();
		*/
		}
		
		override public function init():void {
			//trace("\tStartup was succesfull\n------------------------------------------")
			
			/*button test*/
			//FP.world = new MyWorld();
			FP.world = new TileTest();
		}
		
		
	}
	
}