// 2011.05.04 ?? ????? ???BUFF

function OnRequest(){

	}


	function OnOption0(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 80
			BC( "dialogbox", "player", -1, "You're already a seasoned battle veteran, about to enter the realm of the gods. I have not the power to assist you further." )
			return
		endif

		AddStatus( -1, 11780, 3 )
		BC( "dialogbox", "player", -1, "Your body is pulsing with enormous energy - your decision is going to change this world!" )

	}
