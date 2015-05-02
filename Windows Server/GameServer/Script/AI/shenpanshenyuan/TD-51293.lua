function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
    	
    	--????TD????
    	if nIndex == 0 then
    		tdresult = AI:IsEctypeTdFailure()
    		if tdresult == true then
    			AI:Say( "TD fails!" )
               		AI:ScreenText("TD failed!")
               		AI:SelfMurder()
    		endif
    	end
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	 a = AI:GetArray(1)
	 if a == 0 then
	 	--????TD??AI
	 	AI:SetTimer( 0 , 1000 , 65535 )
	 	AI:SetArray( 1 , 1 )
	 end
	 
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	
    	--????????
    	AI:AddSeekPos( 228 , 131 , 109 )
    	AI:AddSeekPos( 228 , 122 , 108 )
    	AI:AddSeekPos( 228 , 108 , 109 )
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 108 ) and ( PosY == 109 )) then
        	AI:Say("A monster reached the end!  Blood -1.")
        	AI:ScreenText("A monster reached the end!  Blood -1.")
        	--?????
        	AI:SelfMurder()
    	end
    	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
    	
    	isArrive = AI:IsArriveLastSeekPos()
    	if isArrive == true then
    		//??????????
    		AI:IncreaseEctypeTDFailure()
    	else
    		//???????????
    		AI:IncreaseEctypeTDSuccess()
    	end
end