//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: SlamLaser.idl
//  Source: SlamLaser.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPSLAMLASER_ICE
#define ROBOCOMPSLAMLASER_ICE

module RoboCompSlamLaser{
	["cpp:comparable"]
	struct Pose2D{
		float x;
					float z;
					float alpha;
				};
	sequence <byte> Grid;
	["cpp:comparable"]
	struct MapRect{
		float minX;
					float maxX;
					float minZ;
					float maxZ;
				};
	["cpp:comparable"]
	struct SLAMParams{
		MapRect rect;
		int width;
		int height;
		float millimetersPerCell;
				};
	["cpp:comparable"]
	struct GridMap{
		SLAMParams params;
		Grid data;
	};

	interface SlamLaser{
		idempotent 
		void  getWholeGrid(out GridMap map, out Pose2D pose);
		idempotent 
		void  getPartialGrid(MapRect rect, out GridMap map, out Pose2D pose);
		void  initializeRobotPose(Pose2D pose);
		bool saveMap(string path);
	};
};
  
#endif