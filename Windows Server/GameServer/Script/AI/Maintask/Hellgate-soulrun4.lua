--	//****************************************
--	//
--	//		Copyright��PERFECT WORLD
--	//		Modified��2009/11/18
--	//		Author��¬��
--	//		TaskName��Hellgate-soulrun4.lua
--	//		TaskID�������
--	//
--	//****************************************

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)									
		end
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		end


function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    			AI:AddSeekPos(217,122,136)
		end
	
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
    	local AI = GetMonsterAI(nAI)
    			if ((PosX==122) and (PosY==136)) then
						AI:Exit()				 						
 				end
 		end
 				