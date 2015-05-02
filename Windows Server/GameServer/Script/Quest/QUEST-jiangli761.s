	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/2/17
	//		Author：祁晶
	//		TaskName：QUEST-jiangli761.s
	//		TaskID：任务完成替换debuff脚本
	//
	//****************************************
	
	
	function OnTaskDone(){

		AddStatus(-1 , 10648 , 2)  
		PlayEffect(-1,"skill\pet\Dark\fire\Pet_fire_Dark.ini")
	
	}