//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: CGR.idl
//  Source: CGR.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPCGR_ICE
#define ROBOCOMPCGR_ICE

module RoboCompCGR{
	
	interface CGRTopic{
		void  newCGRPose(float x, float z, float alpha);
	};
	interface CGR{
		void resetPose(float x, float z, float alpha);
	};
};
  
#endif