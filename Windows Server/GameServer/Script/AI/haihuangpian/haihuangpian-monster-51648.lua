--  Copyright: PERFECT WORLD
--  Modified: 2010/3/1
--  Author: ???
--  Class: Lua
--  File Name: haihuangpian-monster-51659.lua
--  Remarks: ??


function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
       if nIndex == 0 then
	
		AI:ChangeFaction( 1 )
		AI:Say( "Are you ready to let death wash over you?" )
		AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
	end
        
        if nIndex == 1 then
        --???? 
            --AI:Say("GUID:02799000001")
            AI:AddSkill(2034,1)
            AI:UseSkill(2034,1)
            AI:SetTimer( 2 , 30000 , 1 )
        end
        
        if nIndex == 2 then
        --???? 
            --AI:Say("GUID:02799000002")
            AI:AddSkill(2035,1)
            AI:UseSkill(2035,1)
            AI:SetTimer( 1 , 30000 , 1 )
        end
        
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(1)
     	if a == 0 then
        	AI:Say( "Foolish human! You dare step foot into Poseidon's realm?!" )
        	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
        	mapid = AI:GetMapID()
        	AI:PlayGameSound( 2 , mapid , "..\\Data\\Audio\\Monster\\bosaidong_appear.wav" )
        	--AI:PlayAction( "birth" , 3000 , 0 )
                AI:SetTimer( 0 , 3000 , 1 )
                AI:SetArray(1,1)
                AI:SetTimer( 1 , 30000 , 1 )
        end
        
        v = AI:HaveAttackTarget()
        if v == false then
        	AI:SetArray(1,1)
        else
        	HP = AI:GetHP()
        	HPMAX = AI:GetHPMax()
        
        	if a == 1 then
           		if HP < HPMAX * 0.75 then
           			--?????? 
            			AI:Say("Witness the power of the God of the Sea!")
                		AI:AddStatus( -1 , 6020 , 1 )
                		AI:SetArray(1,2)
            		end
        	end
        	
        	if a == 2 then
            		if HP < HPMAX * 0.5 then
                		--?????? 
                		AI:Say("You dare challenge a god?!")
                		AI:AddStatus( -1 , 6021 , 1 )
                		AI:SetArray(1,3)
            		end
        	end
        	
        	if a == 3 then
            		if HP < HPMAX * 0.25 then
                		--?????? 
                		AI:Say("You will drown in your own arrogance!")
                		AI:AddStatus( -1 , 6022 , 1 )
                		AI:SetArray(1,4)
            		end
       		end
        
        end
        
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end  