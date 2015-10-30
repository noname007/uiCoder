local uiState=require("src.app.base.ui.uiState")
local p_uibtn = {}

function p_uibtn:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.sp9=cc.Scale9Sprite:create("btnUp.png", cc.rect(0,0,80.00,40.00), cc.rect(36.55,15.65,12.50,12.50))
	referUI_.sp9.name="sp9"
	du:placeAndAddChildToContainer(referUI_.sp9,container_,0.00,1.00,-69.95,-13.85,0,1,1,1,1)
	referUI_.sp9:setContentSize(cc.size(80.00, 107.90))
	du:setLogicParent(referUI_.sp9,referUI_)
	referUI_.sp9.isSp9=true
	du:setSp9Info(referUI_.sp9,"btnUp.png")
	referUI_.sp92=cc.Scale9Sprite:create("btnUp.png", cc.rect(0,0,80.00,40.00), cc.rect(36.55,15.65,12.50,12.50))
	referUI_.sp92.name="sp92"
	du:placeAndAddChildToContainer(referUI_.sp92,container_,0.00,1.00,-10,52.05,0,1,1,1,2)
	referUI_.sp92:setContentSize(cc.size(64.00, 104.20))
	du:setLogicParent(referUI_.sp92,referUI_)
	referUI_.sp92.isSp9=true
	du:setSp9Info(referUI_.sp92,"btnUp.png")
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------btnState1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.sp9,-37.95,53.95,1.39,2.70,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.sp92,-29.95,53.95,1.35,1.00,90.00,1.00})
    
    referUI_.btnState1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState1.stateName="btnState1"
    table.insert(referUI_.uiStates,referUI_.btnState1)
    referUI_:stateAniPreset("btnState1",true,0.3,53)
    ---------------------------------------------------------------btnState2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.sp9,-10.00,53.95,1.00,2.70,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.sp92,-9.00,52.05,1.30,1.60,90.00,1.00})
    
    referUI_.btnState2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState2.stateName="btnState2"
    table.insert(referUI_.uiStates,referUI_.btnState2)
    referUI_:stateAniPreset("btnState2",true,0.3,53)
    ---------------------------------------------------------------btnState3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.sp9,-10.00,53.95,1.00,2.70,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.sp92,-9.00,52.05,1.30,1.60,90.00,1.00})
    
    referUI_.btnState3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState3.stateName="btnState3"
    table.insert(referUI_.uiStates,referUI_.btnState3)
    referUI_:stateAniPreset("btnState3",true,0.3,53)
    

    -----rect infos----------------------------------------------------------
    table.insert(referUI_.rects,cc.rect(-69.95,52.05,139.95,105.90))
    
end

return p_uibtn