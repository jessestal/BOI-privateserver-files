function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
    	
    	--????TD????
    	if nIndex == 0 then
    		tdresult = AI:IsEctypeTdFailure()
    		if tdresult == true then
    			AI:Say("Hooray,  Latamantis! ")
               		AI:SelfMurder()
    		end
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
	
	--?????????????????
    	--????4????,????????
    	--??113,112  ??113,87   ??113,137   ?88,112   ??138,112

    	AI:AddSeekPos( 228 , 107 , 82 )
    	AI:AddSeekPos( 228 , 107 , 109 )

end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 107 ) and ( PosY == 109 )) then
               	AI:Say("Your death looms near!")
        	--?????
        	AI:SelfMurder()
    	end
    	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
    	
    	isArrive = AI:IsArriveLastSeekPos()
    	if isArrive == true then
    		--??????????
    		AI:IncreaseEctypeTDFailure()
    	else
    		--???????????
    		AI:IncreaseEctypeTDSuccess()
    	end
end