 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: 6???? 
 //****************************  
 
function OnDead(){ 
//	367	?????
//90250	1
//90251	2~5
//90252	6~20
//90253	20+
	$ectype_id = GetCurEctypeID()
	SetEctypeVar($ectype_id,1,9)
	SetEctypeVar($ectype_id,4,47)
	SetEctypeVar($ectype_id,30,47)
	AddNpcByPos(2342,$ectype_id,164,172,7200,0)
		 
	$getvar = GetServerVar(367)
	$getvar += 1
	SetServerVar(367,$getvar)
	$head = GetTeamHeaderID(-1)
	#name = GetPlayerInfo($head,"name")
	
	if $getvar == 1
		BC("screen","server",-1,"The player, ",#name," led their Party to victory in defeating the Deity in Pursuit of Rapture first! ")
		BC("chat","server",-1,"The player, ",#name," led their Party to victory in defeating the Deity in Pursuit of Rapture first! ")
		$dropitemD = 90250
	endif
	if $getvar >= 2
		if $getvar <= 5
			BC("screen","server",-1,"The player, ",#name," led their Party to victory in defeating the Deity in Pursuit of Rapture! Their Server Ranking is ",$getvar,"! That was fast!")
			BC("chat","server",-1,"The player, ",#name," led their Party to victory in defeating the Deity in Pursuit of Rapture! Their Server Ranking is ",$getvar,"! That was fast!")
			$dropitemD = 90251
		endif
	endif
	if $getvar >= 6
		if $getvar <= 20
			BC("screen","server",-1,"The player, ",#name," led their Party to victory in defeating the Deity in Pursuit of Rapture! Their Server Ranking is ",$getvar," !")
			BC("chat","server",-1,"The player, ",#name," led their Party to victory in defeating the Deity in Pursuit of Rapture! Their Server Ranking is ",$getvar," !")
			$dropitemD = 90252
		endif
	endif
	if $getvar >= 21
		BC("screen","server",-1,"The player, ",#name," led their Party to victory in defeating the Deity in Pursuit of Rapture! ")
		BC("chat","server",-1,"The player, ",#name," led their Party to victory in defeating the Deity in Pursuit of Rapture! ")
		$dropitemD = 90253
	endif
	
		$playerID = GetPlayerID()
		
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
  				DropMonsterItems($teamplayer_id,$dropitemD)
//  				BC("chat","player",-1,"|dropitemD=",$dropitemD)
					//--------------------------------------
//					$expstage = GetEctypeVar($ectype_id,25)
//					SetEctypeVar($ectype_id,25,$stage)
//					$exptime = $stage - $expstage
					$exptime = $dice
					if $exptime > 0
						$level = GetEctypeVar($ectype_id,2)
						$fieldlevel = GetEctypeVar($ectype_id,3)
						call expclac()
						$randomexprate = RandomNumber(95,105)
			//		$expori:4000  $fexpori:2300
						$Expadd = $expori * $exptime
						$allexp = 40 * 20
						$Expadd *= $allexp
						$Expadd *= 100
						$Expadd /= $randomexprate
						AddPlayerInfo($teamplayer_id,"exp",$Expadd)
						if $fieldlevel > 0
							$FExpadd = $fexpori * $exptime
							$allFexp = 23 * 20
							$FExpadd *= $allFexp
							$FExpadd *= 100
							$FExpadd /= $randomexprate
							AddFieldExp($teamplayer_id,$FExpadd)
						endif
					endif
					//--------------------------------------
  			endif
			endif
			$Cid = $Cid + 1
		endwhile
		

} 


	function expclac(){
		
		$level = GetEctypeVar($ectype_id,2)
		$fieldlevel = GetEctypeVar($ectype_id,3)

//(1*X*X		55*X		+0		)	*320		/1000
//(1*X*X		600*X		+0		)	*13		/1000
//(1*X*X		13*X		+0		)	*85		/1000
//(1*X*X		-15*X		+0		)	*110		/1000
		$levelvv = $level * $level
		$Xmod90 = $level / 90
		$Xmod100 = $level / 100
		$Xmod111 = $level / 111
		$expX1 = $level * 55
		$expX2 = $level * 600
		$expX3 = $level * 13
		$expX4 = $level * 15
		$expn1 = $levelvv + $expX1
		$expn2 = $levelvv + $expX2
		$expn3 = $levelvv + $expX3
		$expn4 = $levelvv - $expX4
		$expn1 *= 320
		$expn2 *= 13
		$expn3 *= 85
		$expn4 *= 110
		$expn1 /= 1000
		$expn2 /= 1000
		$expn3 /= 1000
		$expn4 /= 1000
		$expn2 *= $Xmod90
		$expn3 *= $Xmod100
		$expn4 *= $Xmod111
		$expori = $expn1
		$expori += $expn2
		$expori += $expn3
		$expori += $expn4
//		BC("chat","player",-1,"level=",$level," | expori=",$expori)
		
//X^2*23+X*950+40000
		$fieldlevelvv = $fieldlevel * $fieldlevel
		$fexpn1 = $fieldlevelvv * 23
		$fexpn2 = $fieldlevel * 950
		$fexpori = $fexpn1 + $fexpn2
		$fexpori += 40000
		$fexpori /= 100
//		BC("chat","player",-1,"fieldlevel=",$fieldlevel," | fexpori=",$fexpori)
		
		
		
	}