	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/6/28
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30243.lua
	--		Remark:
	----------------------------------------------------
function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
        
      if nIndex == 0 then
        --???? 
            AI:SetAIState( 0 )
      end
      if nIndex == 1 then
        --?? 
            AI:SelfMurder()
      end
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	    	a = AI:GetArray(4)
	    	if a == 0 then
				AI:Say("For Atlantis!")
				AI:SetArray(4,1)
				end
end 
 
function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	--local Mapid = AI:GetMapID()
    	
    	--if nIndex == 1 then					    	
    	--????????
    	--AI:AddSeekPos( 475 , 223 , 194 )
    	--end
    	--if nIndex == 2 then	
    	--AI:AddSeekPos( 475 , 223 , 202 )
    	--AI:AddSeekPos( 475 , 223 , 211 )
    	AI:AddSeekPos( 475 , 225 , 224 )
    	--end
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
			local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 225 ) and ( PosY == 224 )) then
        	--AI:Say("GUID:03047000001")
        	AI:SetTimer(1,5000,1)
					AI:SetAIState( 7 )
        	
      end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end