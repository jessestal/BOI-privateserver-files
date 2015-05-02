//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/6/28
//	--		Author:???
//	--		Class:	.lua
//	--		AIName:Monster-30240.lua
//	--		Remark:
//	----------------------------------------------------
function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
        
      a = AI:GetArray(1)
			if a == 1 then
			AI:SetArray(1,2)
			AI:SelfMurder()
			end
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	
    	--????????
    	AI:AddSeekPos( 475 , 224 , 193 )
    	AI:AddSeekPos( 475 , 224 , 226 )
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
			local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 224 ) and ( PosY == 226 )) then
        	--AI:Say("GUID:07950000000")
        	AI:SetTimer(1,5000,1)
					AI:SetArray(1,1)
        	
      end
end