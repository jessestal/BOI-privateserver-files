	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/01/13
	--		Author:???
	--		Class: Lua
	--		AIName:nianshou.lua
	--		Backup:???? 
	--****************************************


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
        if nIndex == 2 then
        --??? 
            r = AI:GetRand(2)
            	if r == 0 then
            		AI:PlayEffect("common\\huodong\\xinnianlipao\\tx_xinnianlipao1.ini")
            	end
            	if r == 1 then
            		AI:PlayEffect("common\\huodong\\xinnianlipao\\tx_xinnianlipao3.ini")
            	end
            	if r == 2 then
            		AI:PlayEffect("common\\huodong\\xinnianlipao\\tx_xinnianlipao4.ini")
            	end
            AI:Say("Congratulations to the open of BoI!")
            posx = AI:GetPosX()
						posy = AI:GetPosY()
						x = math.ceil(posx)
						y = math.ceil(posy)
						AI:ScreenText( "The beast Flame Kirin is wandering in Atlantis. "..tostring(x)..","..tostring(y).."coordinate placed Firecrackers" , 2 )
            
            AI:SummonMonsterByPos( 32216 , posx + 2 , posy - 2)
						AI:SummonMonsterByPos( 32216 , posx + 2 , posy + 2)
						AI:SummonMonsterByPos( 32216 , posx - 2 , posy + 2)
						AI:SummonMonsterByPos( 32216 , posx - 2 , posy - 2)
						AI:SummonMonsterByPos( 32216 , posx  , posy + 2)
						AI:SummonMonsterByPos( 32216 , posx  , posy - 2)
						AI:SummonMonsterByPos( 32216 , posx + 2 , posy )
						AI:SummonMonsterByPos( 32216 , posx - 2 , posy )
						AI:SummonMonsterByPos( 32216 , posx + 4 , posy - 4)
						AI:SummonMonsterByPos( 32216 , posx + 4 , posy + 4)
						AI:SummonMonsterByPos( 32223 , posx - 4 , posy + 4)
						AI:SummonMonsterByPos( 32223 , posx - 4 , posy - 4)
						AI:SummonMonsterByPos( 32223 , posx , posy + 4)
						AI:SummonMonsterByPos( 32223 , posx , posy - 4)
						AI:SummonMonsterByPos( 32223 , posx + 4 , posy)
						AI:SummonMonsterByPos( 32223 , posx - 4 , posy)
						AI:SummonMonsterByPos( 32223 , posx + 6 , posy - 6)
						AI:SummonMonsterByPos( 32223 , posx + 6 , posy + 6)
						AI:SummonMonsterByPos( 32223 , posx - 6 , posy + 6)
						AI:SummonMonsterByPos( 32223 , posx - 6 , posy - 6)
						AI:SummonMonsterByPos( 32224 , posx , posy + 6)
						AI:SummonMonsterByPos( 32224 , posx , posy - 6)
						AI:SummonMonsterByPos( 32224 , posx + 6 , posy)
						AI:SummonMonsterByPos( 32224 , posx - 6 , posy)
						AI:SummonMonsterByPos( 32224 , posx + 4 , posy + 2)
						AI:SummonMonsterByPos( 32224 , posx + 4 , posy - 2)
						AI:SummonMonsterByPos( 32224 , posx - 4 , posy - 2)
						AI:SummonMonsterByPos( 32224 , posx - 4 , posy + 2)
						AI:SummonMonsterByPos( 32224 , posx + 2 , posy + 4)
						AI:SummonMonsterByPos( 32224 , posx + 2 , posy - 4)
						AI:SummonMonsterByPos( 32216 , posx - 2 , posy - 4)
						AI:SummonMonsterByPos( 32216 , posx - 2 , posy + 4)
        		
        end
        if nIndex == 3 then
        --?? 
            AI:Say("I shall be back! ")
        		AI:ScreenText("The beast Flame Kirin ran away!",2)
        end   
end


function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(4)
	if a == 0 then
			AI:SetTimer(2,30000,20)
			AI:SetTimer(3,600000,1) 
  		AI:SetArray(4,1)
  end    
	
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	
    	--????????
    	AI:AddSeekPos( 2 , 149 , 256 )
    	AI:AddSeekPos( 2 , 149 , 227 )
    	AI:AddSeekPos( 2 , 149 , 205 )
    	AI:AddSeekPos( 2 , 128 , 199 )
    	AI:AddSeekPos( 2 , 124 , 215 )
    	AI:AddSeekPos( 2 , 133 , 225 )
    	AI:AddSeekPos( 2 , 130 , 236 )
    	AI:AddSeekPos( 2 , 143 , 242 )
    	AI:AddSeekPos( 2 , 149 , 241 )
    	AI:AddSeekPos( 2 , 156 , 238 )
    	AI:AddSeekPos( 2 , 164 , 238 )
    	AI:AddSeekPos( 2 , 177 , 227 )
    	AI:AddSeekPos( 2 , 177 , 215 )
    	AI:AddSeekPos( 2 , 159 , 202 )
    	AI:AddSeekPos( 2 , 179 , 202 )
    	AI:AddSeekPos( 2 , 192 , 202 )
    	AI:AddSeekPos( 2 , 192 , 195 )
    	AI:AddSeekPos( 2 , 191 , 188 )
    	AI:AddSeekPos( 2 , 149 , 188 )
    	AI:AddSeekPos( 2 , 142 , 188 )
    	AI:AddSeekPos( 2 , 142 , 208 )
    	AI:AddSeekPos( 2 , 149 , 214 )
    	AI:AddSeekPos( 2 , 149 , 237 )
    	AI:AddSeekPos( 2 , 149 , 250 )
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 149 ) and ( PosY == 227 )) then
        	--AI:Say("Congratulations to the open of BoI!")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 149 ) and ( PosY == 205 )) then
        	--AI:Say("GUID:03193000006")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 128 ) and ( PosY == 199 )) then
        	--AI:Say("Congratulations to the open of BoI!")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 149 ) and ( PosY == 241 )) then
        	--AI:Say("Congratulations to the open of BoI!")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 159 ) and ( PosY == 202 )) then
        	--AI:Say("Congratulations to the open of BoI!")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 179 ) and ( PosY == 202 )) then
        	--AI:Say("Congratulations to the open of BoI!")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 192 ) and ( PosY == 195 )) then
        	--AI:Say("Congratulations to the open of BoI!")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 149 ) and ( PosY == 188 )) then
        	--AI:Say("Congratulations to the open of BoI!")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 149 ) and ( PosY == 237 )) then
        	--AI:Say("Congratulations to the open of BoI!")
        	--AI:SummonMonster(32216, 5 )
        	AI:SetTimer( 0 , 6000 , 1 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
    	if (( PosX == 149 ) and ( PosY == 250 )) then
        	--AI:SummonMonster(32216, 5 )
        	--AI:SetTimer( 2 , 1000 , 1 )
        	AI:SetAIState( 7 )
    	end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end