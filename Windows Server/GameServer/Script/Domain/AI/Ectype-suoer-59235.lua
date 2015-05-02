        --------------------------------------------
	--
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2011/07/04
	--		Author£ºÌÆÒú 
	--		Class: Lua
	--		AIName£ºEctype-longhun-59421.lua
	--		Backup£º
	---------------------------------------------        
    
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        mapid = AI:GetMapID()
        atk = AI:GetEctypeVarShort(mapid , 80)
        posx = AI:GetPosX()
	posy = AI:GetPosY()	
        if nIndex == 0 then 
		AI:AddGuildDomainMonster( 59236 , posx , posy , 0 , 90 , 2 , 0  )
		AI:AddGuildDomainMonster( 59237 , posx , posy , 0 , 90 , 2 , 0  )
		AI:AddGuildDomainMonster( 59238 , posx , posy , 0 , 90 , 2 , 0  )
		AI:AddGuildDomainMonster( 59239 , posx , posy , 0 , 90 , 2 , 0  )
        end
        
        if nIndex == 1 then
        	if atk == 0 then
        		AI:SelfMurder()
        	end	
        end		       
    end    

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)       
        a = AI:GetArray(1)
      	if a == 0 then
      		AI:SetTimer(0 , 5000 , 65535)
      		AI:SetTimer(1 ,5000 ,65535)
      		AI:SetArray(1,1) 
       end                             
    end
  
    function Event_ReadSeekPos(nAI)
	local AI = GetMonsterAI(nAI)
    end
    
    function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
   end  
           
    function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	
    end
	
                                                                               