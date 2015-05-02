	//****************************************
	//gm??
	//
	//****************************************

	function OnUseItem(){
		
		
		BC("chat","player",-1,"---Demonshard Throne---")
		$getvar = GetServerVar(300)
		BC("chat","player",-1,"# of participating guilds: ",$getvar,"\")
			$key = 301
			while $key <= 320
				$getvar = GetServerVar($key)
				if $getvar > 0
					$key2 = $key + 20
					$getvar2 = GetServerVar($key2)
					$rk = $key - 300
					BC("chat","player",-1,"Rank (",$rk,") Name ID: (",$getvar,") Score: ",$getvar2)
				endif
				$key += 1
			endwhile
		
	}