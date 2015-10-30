--class define--------------------------------------------------------
local C_disUIBtn=require("src.app.base.ui.disUIBtn")
local c_uibtn = class("c_uibtn",C_disUIBtn)

--ui create------------------------------------------
function c_uibtn:ctor(params_)
    c_uibtn.super.ctor(self,params_)
    self.className="uibtn"
    self.moduleName="uiBtn"
    self.layerType="btn"
end

--init data and place------------------------------------------
function c_uibtn:init(initDict_)
    c_uibtn.super.init(self,initDict_)
    -----state init----------------------------------------------------------
    self:stateChange("btnState1",true)
end

function c_uibtn:onCreate()
    c_uibtn.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_uibtn:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_uibtn.super.onDestory(self)
end

return c_uibtn