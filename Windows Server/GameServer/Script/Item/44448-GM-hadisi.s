	//****************************************
	//gm??
	//
	//****************************************

	function OnUseItem(){


		$time81 = GetGlobalVar(81)
		$haederid82 = GetGlobalVar(82)
		$born_time83 = GetGlobalVar(83)
		$usetime = $time81 - $born_time83

		BC("chat","player",-1,"time81=",$time81)
		BC("chat","player",-1,"haederid82=",$haederid82)
		BC("chat","player",-1,"born_time83=",$born_time83)
		BC("chat","player",-1,"usetime=",$usetime)
		if $usetime < 0
			BC("messagebox","player",-1,"An error occurred, the server has not yet started this event or not yet killed Hades!")
			return
		endif

		$use_hour = $usetime / 3600
//BC("chat","player",-1,"use_hour=",$use_hour)
		$use = $use_hour * 3600
//BC("chat","player",-1,"use=",$use)
		$usetime -= $use
//BC("chat","player",-1,"usetime=",$usetime)
		$use_minute = $usetime / 60
//BC("chat","player",-1,"use_minute=",$use_minute)
		$use = $use_minute * 60
//BC("chat","player",-1,"use=",$use)
		$use_second = $usetime - $use
//BC("chat","player",-1,"use_second=",$use_second)

		$haederid = GetGlobalVar(82)
		#name = "error"
		#name = GetPlayerInfo($haederid,"name")

		BC("messagebox", "player", -1, "This server has, in total, spent [" $use_hour "] hours, [" $use_minute "] minutes, and [" $use_second "] seconds. ID of player who killed Hades: [",$haederid,"] Name: [",#name,"]")






	}