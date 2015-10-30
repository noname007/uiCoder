--[[
    调用方式 
        1.模块名[moduleName] + 界面类名[className] 的方式
            local _targetUi=uiControl:getInstance():jumpTo("test","state")
        2._targetUi在场景中，只有调用 init 才能用。否则只是空层
            _targetUi:init({})
]]
--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_state = class("c_state",C_disUI)

--ui create------------------------------------------
function c_state:ctor(params_)
    c_state.super.ctor(self,params_)
    self.className="state"
    self.moduleName="test"
    self.layerType="ui"
end

--init data and place------------------------------------------
function c_state:init(initDict_)
    c_state.super.init(self,initDict_)
    -----state init----------------------------------------------------------
    -----self:stateAniPreset(stateName,animationMove,lastTime,easeType)--更改动画预设
    self:stateChange(self.uiStates[1].stateName,true)
    -----ui init----------------------------------------------------------
    local _btn_state_s2_s1Dict={}
    self.btn_state_s2_s1:init(_btn_state_s2_s1Dict)
    local _btn_state_s3_s1Dict={}
    self.btn_state_s3_s1:init(_btn_state_s3_s1Dict)
    
    -----btns----------------------------------------------------------
    --self.btn_state_s2_s1
    --self.btn_state_s3_s1
    
    --btnGroup:initByBtnArr({self.btn1,self.btn2,....})--关联按钮形成按钮组
end

--ui stateChange-------------------------------------
function c_state:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_state.super.stateChange(self,stateName_,rightNow_)
end

--btn click call back---------------------------------------------------
function c_state:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_state.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
    -----check btn name----------------------------------------------------------
    if btnName_=="btn_state_s2_s1" then
    	print("Btn_pressed : "..self.className.." -> btn_state_s2_s1");----------------------------btn_state_s2_s1
    end
    if btnName_=="btn_state_s3_s1" then
    	print("Btn_pressed : "..self.className.." -> btn_state_s3_s1");----------------------------btn_state_s3_s1
    end
    if btnName_=="btn_state_s1" then
    	print("Btn_pressed : "..self.className.." -> btn_state_s1");----------------------------btn_state_s1
    end
    if btnName_=="btn_state_s2" then
    	print("Btn_pressed : "..self.className.." -> btn_state_s2");----------------------------btn_state_s2
    end
    
end

function c_state:onCreate()
    c_state.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_state:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_state.super.onDestory(self)
end

return c_state