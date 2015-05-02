	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:????
	//		TaskID:HD-caihonggu-52372.s
	//
	//****************************************

function OnDead(){

	$suiji = RandomNumber ( 0, 29 )
	$ectype_id = GetEctypeID(-1 , 558)
	$dlxz1 = GetEctypeVar($ectype_id , 31)
	$dlxz2 = GetEctypeVar($ectype_id , 32)
	$dlxz3 = GetEctypeVar($ectype_id , 33)
	$dlxz4 = GetEctypeVar($ectype_id , 34)
	$dlxz5 = GetEctypeVar($ectype_id , 35)

	if $suiji <= 19
		if $dlxz1 <= 19
			$diaoluo1 = DropMonsterItems(-1, 90183 )
			if $diaoluo1 == 0
				$dlxz1 = $dlxz1 + 1
				SetEctypeVar($ectype_id , 31 , $dlxz1)
			endif
		else		
			BC("screen","player",-1,"Oh, what luck - the chest is empty! Try again next time!")
		endif
	endif
	
	if $suiji > 19
		if $suiji <= 22
			if $dlxz2 <= 2		
				$diaoluo2 = DropMonsterItems(-1, 90184 )
				if $diaoluo2 == 0
					$dlxz2 = $dlxz2 + 1
					SetEctypeVar($ectype_id , 32 , $dlxz2)
				endif
			else
			BC("screen","player",-1,"Oh, what luck - the chest is empty! Try again next time!")
			endif
		endif
	endif

	if $suiji > 22
		if $suiji <= 24
			if $dlxz3 <= 1		
				$diaoluo3 = DropMonsterItems(-1, 90185 )
				if $diaoluo3 == 0
					$dlxz3 = $dlxz3 + 1
					SetEctypeVar($ectype_id , 33 , $dlxz3)
				endif
			else
			BC("screen","player",-1,"Oh, what luck - the chest is empty! Try again next time!")
			endif
		endif
	endif
		
	if $suiji > 24
		if $suiji <= 26
			if $dlxz4 <= 1		
				$diaoluo4 = DropMonsterItems(-1, 90186 )
				if $diaoluo4 == 0
					$dlxz4 = $dlxz4 + 1
					SetEctypeVar($ectype_id , 34 , $dlxz4)
				endif
			else
			BC("screen","player",-1,"Oh, what luck - the chest is empty! Try again next time!")
			endif
		endif
	endif		

	if $suiji > 26
		if $suiji <= 29
			if $dlxz5 <= 2		
				$diaoluo5 = DropMonsterItems(-1, 90187 )
				if $diaoluo5 == 0
					$dlxz5 = $dlxz5 + 1
					SetEctypeVar($ectype_id , 35 , $dlxz5)
				endif
			else
			BC("screen","player",-1,"Oh, what luck - the chest is empty! Try again next time!")
			endif
		endif
	endif

	}