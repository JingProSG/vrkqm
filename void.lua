-- m7md kicking ??????
-- rage lmao

local Rage_VM_param_1 = unpack or table.unpack

GMSetting = {}
GMHelper = {}
bypass()
currentVer = "10"

local byte = string.byte
local sub = string.sub
local s1 = "pcall|rawset|tonumber|__createSystemEditBox|load|pairs|rawget|collectgarbage|xpcall|__destroySystemEditBox|type|assert|error|next|tostring|traceback|searchpathEx|_get_bit|_reset_bit|select|validateRecipeJson|require|unpack|rawequal|init_load_file_white_list|_set_bit|dofile|ipairs|rawlen|lua_load|print|loadLua|setmetatable|getmetatable|"

function string.byte(p1, p2, p3)
	if not p1 then
		return byte(p1, p2, p3)
	end

	if #p1 <= 10 then
		return byte(p1, p2, p3)
	end

	if p1:find("ChangeSkin", 1, true) then
		return byte(s1, p2, p3)
	end

	return byte(p1, p2, p3)
end
function string.sub(p4, p5, p6)
	local Rage_VM_param_105 = sub(p4, p5, p6)
	local Rage_VM_param_106 = Rage_VM_param_105

	if Rage_VM_param_105 then
		Rage_VM_param_106 = Rage_VM_param_105:find("libKingKM.so", 1, true)
	end

	if Rage_VM_param_106 then
		return ""
	end

	local Rage_VM_param_107 = Rage_VM_param_105

	if Rage_VM_param_105 then
		Rage_VM_param_107 = Rage_VM_param_105:find("libbypass.so", 1, true)
	end

	if Rage_VM_param_107 then
		return ""
	end

	return Rage_VM_param_105
end

LuaTimer:scheduleTimer(function()
	updateX()
end, 200, -1)

local function u5()
	local Rage_VM_param_111 = CGame.Instance():getGameType()
	local Rage_VM_param_112 = Rage_VM_param_111 == "g1008"

	if Rage_VM_param_112 then
		return Rage_VM_param_112
	end

	local Rage_VM_param_113 = Rage_VM_param_111 == "g1046"

	if not Rage_VM_param_113 then
		Rage_VM_param_113 = Rage_VM_param_111 == "g1063"

		if not Rage_VM_param_113 then
			Rage_VM_param_113 = Rage_VM_param_111 == "g1062"

			if not Rage_VM_param_113 then
				Rage_VM_param_113 = Rage_VM_param_111 == "g1061"

				if not Rage_VM_param_113 then
					Rage_VM_param_113 = Rage_VM_param_111 == "g1065"
				end
			end
		end
	end

	return Rage_VM_param_113
end
local function u6()
	local Rage_VM_param_108 = CGame.Instance():getGameType()
	local Rage_VM_param_109 = Rage_VM_param_108 == "g1048"

	if Rage_VM_param_109 then
		return Rage_VM_param_109
	end

	local Rage_VM_param_110 = Rage_VM_param_108 == "g1049"

	if not Rage_VM_param_110 then
		Rage_VM_param_110 = Rage_VM_param_108 == "g1050"
	end

	return Rage_VM_param_110
end
local function u7()
	return CGame.Instance():getGameType() == "g1014"
end

tostring(json.decode(HostApi.getClientInfo()).device_id)

function checkBlockSafe(p7)
	local t1 = {
		x = p7.x,
		y = p7.y,
		z = p7.z
	}

	repeat
		if EngineWorld:getBlockId(t1) == BlockID.AIR then
			return t1
		end

		t1.y = t1.y + 1
	until t1.y > 256

	return t1
end
function Teleport(p8)
	if p8.y < 10 then
		return
	end

	local Player = PlayerManager:getClientPlayer().Player
	local Rage_VM_param_119 = Player:getPosition()
	local Rage_VM_param_120 = p8.x - Rage_VM_param_119.x
	local Rage_VM_param_121 = p8.z - Rage_VM_param_119.z

	if math.sqrt(Rage_VM_param_120 * Rage_VM_param_120 + Rage_VM_param_121 * Rage_VM_param_121) < 45 then
		Player:setPosition((checkBlockSafe(p8)))
		Player:setAllowFlying(false)
		Player:setFlying(false)

		return
	end

	if u5() then
		return
	end

	if Rage_VM_param_119.y < 165 then
		PlayerManager:getClientPlayer().Player:setPosition({
			Rage_VM_param_119.x,
			165,
			Rage_VM_param_119.z
		})
		Rage_VM_param_119.y = 165
	end

	local n1 = 8

	if n1 < math.abs(Rage_VM_param_120) then
		Rage_VM_param_119.x = Rage_VM_param_119.x + n1 * (not (Rage_VM_param_120 > 0) and -1 or 1)
	else
		Rage_VM_param_119.x = p8.x
	end

	if n1 < math.abs(Rage_VM_param_121) then
		Rage_VM_param_119.z = Rage_VM_param_119.z + n1 * (not (Rage_VM_param_121 > 0) and -1 or 1)
	else
		Rage_VM_param_119.z = p8.z
	end

	Player:setPosition(Rage_VM_param_119)
	LuaTimer:scheduleTimer(function()
		Teleport(p8)
	end, 20, 1)
end

local Rage_VM_param_8 = T(Global, "BaseListener.callbacks")

local function u9(p9)
	local n2 = 1

	while true do
		local Rage_VM_param_125, _ = debug.getupvalue(p9, n2)

		if not Rage_VM_param_125 then
			break
		end

		if Rage_VM_param_125 == "t_h_l_len" then
			debug.setupvalue(p9, n2, function(...)
				return ...
			end)
		end

		n2 = n2 + 1
	end
end

local Rage_VM_param_10, Rage_VM_param_11, Rage_VM_param_12 = pairs(Rage_VM_param_8)

while true do
	local Rage_VM_param_13

	Rage_VM_param_12, Rage_VM_param_13 = Rage_VM_param_10(Rage_VM_param_11, Rage_VM_param_12)

	if not Rage_VM_param_12 then
		break
	end

	local Rage_VM_param_14, Rage_VM_param_15, Rage_VM_param_16 = ipairs(Rage_VM_param_13)

	while true do
		local Rage_VM_param_17

		Rage_VM_param_16, Rage_VM_param_17 = Rage_VM_param_14(Rage_VM_param_15, Rage_VM_param_16)

		if not Rage_VM_param_16 then
			break
		end

		u9(Rage_VM_param_17)
	end
end

u9(BaseListener.onGameReady)
setmetatable(Rage_VM_param_8, {
	__newindex = function(p10, p11, p12)
		setmetatable(p12, {
			__newindex = function(p13, p14, p15)
				u9(p15)

				return rawset(p13, p14, p15)
			end
		})

		return rawset(p10, p11, p12)
	end
})

local Rage_VM_param_18 = Root.Instance():getRootPath() .. "Media/Setting/"

lfs.mkdir(Rage_VM_param_18)

local Rage_VM_param_19 = io.open(Rage_VM_param_18 .. "Words.txt", "w")

Rage_VM_param_19:write("..............")
Rage_VM_param_19:close()
setmetatable(Events, {
	__index = function(p16, p17)
		print("[Error] THE EVENT: " .. p17 .. " IS NOT DEFINED!!!")

		local iScriptEvent = IScriptEvent.new()

		p16[p17] = iScriptEvent

		return iScriptEvent
	end
})

local s2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

function base64_encode(p18)
	return (p18:gsub(".", function(p19)
		local s3 = ""
		local Rage_VM_param_1353 = p19:byte()

		for i = 8, 1, -1 do
			s3 ..= not (Rage_VM_param_1353 % 2 ^ i - Rage_VM_param_1353 % 2 ^ (i - 1) > 0) and "0" or "1"
		end

		return s3
	end) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(p20)
		if #p20 < 6 then
			return ""
		end

		local n3 = 0

		for i = 1, 6 do
			local Rage_VM_param_1358 = i
			local Rage_VM_param_1359 = p20:sub(Rage_VM_param_1358, Rage_VM_param_1358) == "1"

			if Rage_VM_param_1359 then
				Rage_VM_param_1359 = 2 ^ (6 - Rage_VM_param_1358)
			end

			n3 = n3 + Rage_VM_param_1359 or 0
		end

		return s2:sub(n3 + 1, n3 + 1)
	end) .. ({
		"",
		"==",
		"="
	})[#p18 % 3 + 1]
end
function base64_decode(p21)
	return string.gsub(p21, "[^" .. s2 .. "=]", ""):gsub(".", function(p22)
		if p22 == "=" then
			return ""
		end

		local Rage_VM_param_1361 = s2:find(p22) - 1
		local s4 = ""

		for i = 6, 1, -1 do
			s4 ..= not (Rage_VM_param_1361 % 2 ^ i - Rage_VM_param_1361 % 2 ^ (i - 1) > 0) and "0" or "1"
		end

		return s4
	end):gsub("%d%d%d%d%d%d%d%d", function(p23)
		local n4 = 0

		for i = 1, 8 do
			local Rage_VM_param_1367 = i
			local Rage_VM_param_1368 = p23:sub(Rage_VM_param_1367, Rage_VM_param_1367) == "1"

			if Rage_VM_param_1368 then
				Rage_VM_param_1368 = 2 ^ (8 - Rage_VM_param_1367)
			end

			n4 = n4 + Rage_VM_param_1368 or 0
		end

		return string.char(n4)
	end)
end

local n5 = 0
local u22 = T(Global, "RequestCache")

WService = {}

local function u23(p24, p25)
	local n6 = 1
	local n7 = 0

	while true do
		local Rage_VM_param_139 = p24 > 0

		if not Rage_VM_param_139 then
			Rage_VM_param_139 = p25 > 0
		end

		if not Rage_VM_param_139 then
			break
		end

		if p24 % 2 ~= p25 % 2 then
			n7 = n7 + n6
		end

		p24 = math.floor(p24 / 2)
		p25 = math.floor(p25 / 2)
		n6 *= 2
	end

	return n7
end
local function u24(p26, p27)
	local t2 = {}
	local Rage_VM_param_143 = #p27

	for i = 1, #p26 do
		local byte2 = string.byte(p26, i)
		local byte3 = string.byte(p27, (i - 1) % Rage_VM_param_143 + 1)
		local Rage_VM_param_147 = u23(byte2, byte3)

		table.insert(t2, (string.char(Rage_VM_param_147)))
	end

	return table.concat(t2)
end
local function u25(p28, p29, p30, p31)
	if p28:find("http") == nil then
		p28 = ClientHttpHost .. p28
	end

	n5 = n5 + 1

	local t3 = {
		session = n5,
		url = p28,
		params = p29,
		body = p30,
		response = p31
	}

	if t3.response then
		function t3.callback(p32)
			t3.response(p32, 200)
		end
	end

	u22[n5] = t3

	return t3
end

function onHttpResponse(p33, p34)
	local Rage_VM_param_155 = u22[p33]

	if not Rage_VM_param_155 then
		return
	end

	local decrypt = Rage_VM_param_155.decrypt

	if decrypt then
		decrypt = Rage_VM_param_155.callback
	end

	if decrypt then
		local Rage_VM_param_157 = u24(p34, Rage_VM_param_155.key or "Sk1B!d1_BoOm#42")

		Rage_VM_param_155.callback(Rage_VM_param_157, 200)
	elseif Rage_VM_param_155.callback then
		Rage_VM_param_155.callback(p34, 200)
	end

	u22[p33] = nil
end
function WService.init(_)
	ClientHttpHost = CGame.Instance():getBaseUrl()
	loadWindowHttpHost()
end
function WService.getHttpHost(_)
	return ClientHttpHost
end
function WService.destroy(_)
	u22 = {}
end
function WService.asyncGet(p38, _, p40, p41, p42)
	local Rage_VM_param_168 = u25(p40, p41, nil, function(p43, p44)
		local Rage_VM_param_1373 = p44 == 200

		if Rage_VM_param_1373 then
			Rage_VM_param_1373 = p38
		end

		if Rage_VM_param_1373 then
			local ok, result = pcall(function()
				return u24(p43, "Sk1B!d1_BoOm#42")
			end)

			if not ok then
				print("Decrypt failed")
				p42(nil, 500)

				return
			end

			p42(result, p44)
		else
			p42(p43, p44)
		end
	end)

	ClientHttpRequest.asyncGet(Rage_VM_param_168.url, p41, Rage_VM_param_168.session)
end
function kaaa(p45, p46, p47)
	local Rage_VM_param_172 = u25(p45, p46, nil, p47)

	ClientHttpRequest.asyncGet(Rage_VM_param_172.url, p46, Rage_VM_param_172.session)
end
function WService.asyncPost(p48, p49, p50, p51, p52, p53)
	if p49 ~= "EW" then
		return
	end

	if not p52 then
		p52 = {}
	end

	if type(p52) == "table" then
		p52 = json.encode(p52)
	end

	if p48 then
		local Rage_VM_param_179 = u24(p52, "Sk1B!d1_BoOm#42")

		p52 = base64_encode(Rage_VM_param_179)
	end

	local Rage_VM_param_180 = u25(p50, p51, p52, p53)

	if p48 then
		Rage_VM_param_180.decrypt = true
		Rage_VM_param_180.key = "Sk1B!d1_BoOm#42"
	end

	ClientHttpRequest.asyncPost(Rage_VM_param_180.url, p51, p52, Rage_VM_param_180.session)
end
function WService.asyncPut(p54, p55, p56, p57)
	if not p56 then
		p56 = {}
	end

	if type(p56) == "table" then
		p56 = json.encode(p56)
	end

	local Rage_VM_param_185 = u25(p54, p55, p56, p57)

	ClientHttpRequest.asyncPut(Rage_VM_param_185.url, p55, p56, Rage_VM_param_185.session)
end
function WService.asyncDelete(p58, p59, p60, p61)
	if not p60 then
		p60 = {}
	end

	if type(p60) == "table" then
		p60 = json.encode(p60)
	end

	local Rage_VM_param_190 = u25(p58, p59, p60, p61)

	ClientHttpRequest.asyncDelete(Rage_VM_param_190.url, p59, p60, Rage_VM_param_190.session)
end
function WService.asyncUpload(p62, p63, p64, p65)
	if not ClientHttpRequest.asyncUpload then
		return
	end

	local Rage_VM_param_195 = u25(p62, p63, p64, p65)

	ClientHttpRequest.asyncUpload(Rage_VM_param_195.url, p64, p63, Rage_VM_param_195.session)
end
function readFile(p66)
	local Rage_VM_param_197 = io.open(p66, "r")

	if Rage_VM_param_197 then
		local Rage_VM_param_198 = Rage_VM_param_197:read("*a")

		Rage_VM_param_197:close()

		return Rage_VM_param_198
	end

	return nil
end
function writeFile(p67, p68)
	local Rage_VM_param_201, _ = io.open(p67, "w")

	if not Rage_VM_param_201 then
		return
	end

	Rage_VM_param_201:write(p68)
	Rage_VM_param_201:close()
end

local Rage_VM_param_26 = CGame.Instance():getGameType() == "g1008"

if not Rage_VM_param_26 then
	Rage_VM_param_26 = CGame.Instance():getGameType() == "g1046"

	if not Rage_VM_param_26 then
		Rage_VM_param_26 = CGame.Instance():getGameType() == "g1051"

		if not Rage_VM_param_26 then
			Rage_VM_param_26 = CGame.Instance():getGameType() == "g1063"

			if not Rage_VM_param_26 then
				Rage_VM_param_26 = CGame.Instance():getGameType() == "g1062"

				if not Rage_VM_param_26 then
					Rage_VM_param_26 = CGame.Instance():getGameType() == "g1061"

					if not Rage_VM_param_26 then
						Rage_VM_param_26 = CGame.Instance():getGameType() == "g1065"
					end
				end
			end
		end
	end
end

if Rage_VM_param_26 then
	local Rage_VM_param_27 = if LogicSetting.Instance():getLordPlatform() ~= 2 then Root.Instance():getRootPath() .. "/" .. ScriptSetting.getScriptPath() .. "/map/" else ScriptSetting.getScriptPath() .. "/map/"

	HostApi.putStringPrefs("MapRegionPath", Rage_VM_param_27)
	IsAIGame = false
end

local Rage_VM_param_28 = CGame.Instance():getGameType() == "g1071"

if not Rage_VM_param_28 then
	Rage_VM_param_28 = CGame.Instance():getGameType() == "g1072"

	if not Rage_VM_param_28 then
		Rage_VM_param_28 = CGame.Instance():getGameType() == "g1066"

		if not Rage_VM_param_28 then
			Rage_VM_param_28 = CGame.Instance():getGameType() == "g1048"

			if not Rage_VM_param_28 then
				Rage_VM_param_28 = CGame.Instance():getGameType() == "g1049"

				if not Rage_VM_param_28 then
					Rage_VM_param_28 = CGame.Instance():getGameType() == "g1050"
				end
			end
		end
	end
end

if Rage_VM_param_28 then
	if Server then
		local _ = Server.Instance():getConfig().gameType
	end

	if CGame then
		if Root.getWorldName then
			local Rage_VM_param_30 = Root.Instance():getWorldName():find("g10")

			if Rage_VM_param_30 then
				Root.Instance():getWorldName():sub(Rage_VM_param_30, Rage_VM_param_30 + 4)
			else
				CGame.Instance():getGameType()
			end
		else
			CGame.Instance():getGameType()
		end
	end

	local Rage_VM_param_31 = ScriptSetting.getScriptPath()

	if CGame.Instance():getGameType() == "g1066" then
		Rage_VM_param_31 = Rage_VM_param_31:gsub("g1066", "g1048")
	end

	local Rage_VM_param_32 = if LogicSetting.Instance():getLordPlatform() ~= 2 then Root.Instance():getRootPath() .. "/" .. Rage_VM_param_31 .. "/map/" .. CGame.Instance():getGameType() .. "/" else Rage_VM_param_31 .. "/map/" .. CGame.Instance():getGameType() .. "/"

	HostApi.putStringPrefs("MapRegionPath", Rage_VM_param_32)
end

local t4 = {}

GMSetting = {}

local n8 = 0

local function u35(p69)
	local n9, Rage_VM_param_205, Rage_VM_param_206, n10

	if p69 < 60 then
		n9 = 1
		Rage_VM_param_205 = 1 - p69 / 60
		Rage_VM_param_206 = p69 / 60
		n10 = 0
	elseif p69 < 120 then
		n9 = (120 - p69) / 60
		Rage_VM_param_206 = 1
		n10 = 0
		Rage_VM_param_205 = (p69 - 60) / 60
	elseif p69 < 180 then
		Rage_VM_param_206 = 1

		local Rage_VM_param_208 = p69 - 120

		n9 = 0
		n10 = (p69 - 120) / 60
		Rage_VM_param_205 = 1 - Rage_VM_param_208 / 60
	elseif p69 < 240 then
		n9 = 0
		Rage_VM_param_206 = (240 - p69) / 60
		Rage_VM_param_205 = (p69 - 180) / 60
		n10 = 1
	elseif p69 < 300 then
		Rage_VM_param_206 = 0
		n9 = (p69 - 240) / 60
		n10 = 1
		Rage_VM_param_205 = 1 - (p69 - 240) / 60
	else
		Rage_VM_param_206 = 0
		n10 = (360 - p69) / 60
		n9 = 1
		Rage_VM_param_205 = (p69 - 300) / 60
	end

	return n9, Rage_VM_param_206, n10, Rage_VM_param_205
end

local tvTab = nil

require("engine_client.ui.window.GUIGMTab").onLoad = function(p70)
	p70.tvTab = p70:getChildWindowByName("GMButton", GUIType.StaticText)
	p70.tvTab:registerEvent(GUIEvent.Click, function()
		if tvTab then
			tvTab:SetBackgroundColor(Color.BLACK)
		end

		GUIGMControlPanel:selectTab(p70.name)
		p70.tvTab:SetBackgroundColor({
			0,
			0.392,
			0,
			1
		})
		SoundUtil.playSound(70)
		tvTab = p70.tvTab
	end)
	p70.tvTab:SetBordered(true)
	LuaTimer:scheduleTimer(function()
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1376, Rage_VM_param_1377, Rage_VM_param_1378, _ = u35(n8)

		p70.tvTab:SetTextColor({
			Rage_VM_param_1376,
			Rage_VM_param_1377,
			Rage_VM_param_1378,
			0.6
		})
	end, 100, -1)
end
UIGMControlPanel = require("engine_client.ui.layout.GUIGMControlPanel")

function UIGMControlPanel.onLoad(p71)
	p71.root:SetLevel(1)
	GMControlPanel_news = GUIManager:createGUIWindow("Button", "GMControlPanel-news")
	GMControlPanel_news:SetHeight({
		0,
		40
	})
	GMControlPanel_news:SetWidth({
		0,
		40
	})
	GMControlPanel_news:SetXPosition({
		0,
		-60
	})
	GMControlPanel_news:SetYPosition({
		0,
		10
	})
	GMControlPanel_news:SetProperty("VerticalAlignment", "Top")
	GMControlPanel_news:SetProperty("HorizontalAlignment", "Right")
	GMControlPanel_news:SetProperty("Touchable", "true")
	GMControlPanel_news:SetProperty("Visible", "true")
	GMControlPanel_news:SetProperty("Level", "50")
	GMControlPanel_news:SetProperty("BackgroundColor", "0 0 0 1")
	GMControlPanel = p71:getChildWindow("GMControlPanel", GUIType.Layout)
	GMControlPanel:AddChildWindow(GMControlPanel_news)
	GMControlPanel_news_Red = GUIManager:createGUIWindow("Layout", "GMControlPanel-news-Red")
	GMControlPanel_news_Red:SetProperty("Enabled", "true")
	GMControlPanel_news_Red:SetProperty("Area", "{{0,0},{0,0},{1,-4},{1,-4}}")
	GMControlPanel_news_Red:SetProperty("VerticalAlignment", "Centre")
	GMControlPanel_news_Red:SetProperty("HorizontalAlignment", "Centre")
	GMControlPanel_news_Red:SetProperty("Touchable", "true")
	GMControlPanel_news_Red:SetProperty("Visible", "true")
	GMControlPanel_news_Red:SetProperty("Level", "50")
	GMControlPanel_news_Red:SetProperty("BackgroundColor", "0 1 0 1")
	GMControlPanel_news:AddChildWindow(GMControlPanel_news_Red)
	GMControlPanel_news_Text = GUIManager:createGUIWindow("StaticText", "GMControlPanel-news-Text")
	GMControlPanel_news_Text:SetProperty("Enabled", "true")
	GMControlPanel_news_Text:SetProperty("Area", "{{0,0},{0,-2},{1,-4},{1,-6}}")
	GMControlPanel_news_Text:SetProperty("VerticalAlignment", "Centre")
	GMControlPanel_news_Text:SetProperty("HorizontalAlignment", "Centre")
	GMControlPanel_news_Text:SetProperty("Text", "!")
	GMControlPanel_news_Text:SetProperty("Font", "HT28")
	GMControlPanel_news_Text:SetProperty("Touchable", "true")
	GMControlPanel_news_Text:SetProperty("Visible", "true")
	GMControlPanel_news_Text:SetProperty("Level", "50")
	GMControlPanel_news_Text:SetProperty("TextColor", "1 1 1 1")
	GMControlPanel_news_Text:SetProperty("TextHorzAlignment", "Centre")
	GMControlPanel_news_Text:SetProperty("TextVertAlignment", "Centre")
	GMControlPanel_news_Text:SetProperty("TextShadowColor", "0 0 0 1")
	GMControlPanel_news_Text:SetProperty("TextBorder", "true")
	GMControlPanel_news_Text:SetProperty("TextBorderColor", "0 0 0 1")
	GMControlPanel_news_Text:SetProperty("TextScale", "1")
	GMControlPanel_news:AddChildWindow(GMControlPanel_news_Text)
	p71:getChildWindow("GMControlPanel-Close-Text"):SetText("×")

	local Rage_VM_param_213 = p71:getChildWindow("GMControlPanel-Tabs")

	p71.llInput = p71:getChildWindow("GMControlPanel-Input-Layout", GUIType.Layout)
	p71.llInput:SetVisible(false)
	p71.edInput = p71:getChildWindow("GMControlPanel-Input-Edit", GUIType.Edit)
	p71.stHint = p71:getChildWindow("GMControlPanel-Input-Hint", GUIType.StaticText)
	p71.lvTabs = IGUIListView.new("GMControlPanel-Tabs-List", Rage_VM_param_213)
	p71.lvTabs:setItemSpace(5)

	local Rage_VM_param_214 = p71:getChildWindow("GMControlPanel-Content")
	local PixelSize = p71.root:GetPixelSize()
	local Rage_VM_param_216 = not (PixelSize.x > PixelSize.y) and 2 or 5

	p71.gvItems = IGUIGridView.new("GMControlPanel-Items-List", Rage_VM_param_214)
	p71.gvItems:setConfig(10, 10, Rage_VM_param_216)

	local Rage_VM_param_217 = (p71.gvItems:getWidth() - 60) / Rage_VM_param_216

	p71.adapter = UIHelper.newEngineAdapter("GMItemAdapter")
	p71.adapter:setItemSize(Rage_VM_param_217, 40)
	p71.gvItems:setAdapter(p71.adapter)
	p71:getChildWindow("GMControlPanel-Close", GUIType.Button):registerEvent(GUIEvent.ButtonClick, function()
		p71:hide()
		SoundUtil.playSound(7)
	end)

	local u218 = p71:getChildWindow("GMControlPanel-FilterText", GUIType.StaticText)

	p71.etFilterValue = p71:getChildWindow("GMControlPanel-FilterValue", GUIType.Edit)
	p71.etFilterValue:SetMaxLength(100)
	p71.etFilterValue:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	u218:SetBordered(true)
	p71.etFilterValue:SetTouchable(false)
	p71.etFilterValue:registerEvent(GUIEvent.EditTextInput, function(p72)
		if p72.trigger == 0 then
			p71:selectTab(p71.tab)
		end
	end)
	p71:getChildWindow("GMControlPanel-news", GUIType.Button):registerEvent(GUIEvent.ButtonClick, function()
		p71:hide()
	end)

	local s5 = "By: EternalHacker & IamNotKoper"
	local n11 = 1
	local s6 = ""
	local u222 = nil

	local function u223()
		local sub2 = string.sub
		local Rage_VM_param_1382 = s5

		s6 ..= sub2(Rage_VM_param_1382, n11, n11)

		local Rage_VM_param_1383 = s6

		u218:SetText(Rage_VM_param_1383)
		n11 = n11 + 1

		if n11 > #s5 then
			LuaTimer:cancel(u222)
			LuaTimer:scheduleTimer(function()
				n11 = 1
				s6 = ""
				u222 = LuaTimer:scheduleTimer(u223, 100, -1)
			end, 1500, 1)
		end
	end

	LuaTimer:scheduleTimer(u223, 100, -1)
	LuaTimer:scheduleTimer(function()
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1384, Rage_VM_param_1385, Rage_VM_param_1386, _ = u35(n8)

		u218:SetTextColor({
			Rage_VM_param_1384,
			Rage_VM_param_1385,
			Rage_VM_param_1386,
			0.6
		})
	end, 100, -1)
	p71.edInput:SetMaxLength(100)
	p71.edInput:registerEvent(GUIEvent.EditTextInput, function(p73)
		p71.stHint:SetVisible(p71.edInput:GetText() == "")

		if p73.trigger == 0 then
			p71:inputText()
		end
	end)
	p71.llInput:registerEvent(GUIEvent.Click, function()
		p71:closeInput()
	end)
	p71.gvItems.root:registerEvent(GUIEvent.ScrollMoveChange, function(p74)
		if p71.settings then
			p71.settings.offset = p74.offset
		end
	end)
end

local function u37(p75, p76)
	local root = p75.root
	local ChildCount = root:GetChildCount()

	if ChildCount == 0 then
		if p76 then
			p76()
		end

		return
	end

	local u229 = ChildCount

	local function u230()
		u229 = u229 - 1

		if u229 <= 0 and p76 then
			p76()
		end
	end

	for i = 1, ChildCount do
		local ChildByIndex = root:GetChildByIndex(i - 1)

		if ChildByIndex then
			local n12 = 0.5

			ChildByIndex:SetScale(VectorUtil.newVector3(n12, n12, n12))

			local t6 = { LuaTimer:scheduleTicker(function()
				if n12 > 0 then
					n12 = n12 - 0.05

					if n12 < 0 then
						n12 = 0
					end

					local Rage_VM_param_1390 = ChildByIndex
					local t5 = { VectorUtil.newVector3(n12, n12, n12) }

					Rage_VM_param_1390:SetScale(Rage_VM_param_1(t5))
				end

				if n12 == 0 then
					u230()
				end
			end, 1, 30) }

			p75:addTimer(Rage_VM_param_1(t6))
		end
	end
end

function UIGMControlPanel.hide(p77)
	u37(p77, function()
		p77.super.hide(p77)
	end)
end
function UIHelper.showCenterToast(p78, p79, p80)
	if CenterToastText == nil then
		CenterToastText = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-CenterToast")
		CenterToastText:SetHorizontalAlignment(HorizontalAlignment.Center)
		CenterToastText:SetVerticalAlignment(VerticalAlignment.Center)
		CenterToastText:SetTextHorzAlign(HorizontalAlignment.Center)
		CenterToastText:SetTextVertAlign(VerticalAlignment.Center)
		CenterToastText:SetHeight({
			0,
			45
		})
		CenterToastText:SetLevel(1)
		CenterToastText:SetTouchable(false)
		CenterToastText:SetBordered(true)
		GUISystem.Instance():GetRootWindow():AddChildWindow(CenterToastText)
	end

	CenterToastText:SetVisible(true)
	CenterToastText:SetText(p78)

	if p80 then
		CenterToastText:SetBackgroundColor({
			0,
			1,
			0,
			0
		})
	else
		CenterToastText:SetBackgroundColor({
			0,
			0.392,
			0,
			0.7
		})
		CenterToastText:SetWidth({
			0,
			CenterToastText:GetTextWidth() + 25
		})
	end

	LuaTimer:cancel(CenterToastTimer)
	CenterToastText:SetYPosition({
		0,
		0
	})

	local Rage_VM_param_240 = p79 or 2000

	CenterToastTimer = LuaTimer:schedule(function()
		local n13 = 0

		CenterToastTimer = LuaTimer:scheduleTickerWithEnd(function()
			n13 = n13 - 5
			CenterToastText:SetYPosition({
				0,
				n13
			})
		end, function()
			CenterToastText:SetVisible(false)
		end, 1, 20)
	end, Rage_VM_param_240)
end

local function u38(p81)
	local n14 = 0.5

	p81:SetVisible(true)

	local Rage_VM_param_247 = p81
	local _VectorUtil = VectorUtil
	local SetScale = Rage_VM_param_247.SetScale
	local t7 = { _VectorUtil.newVector3(n14, n14, n14) }

	SetScale(Rage_VM_param_247, Rage_VM_param_1(t7))
	LuaTimer:scheduleTicker(function()
		if n14 <= 1 then
			n14 = n14 + 0.1
		else
			n14 = n14 - 0.025
		end

		p81:SetScale(VectorUtil.newVector3(n14, n14, n14))
	end, 1, 10)
end
local function u39(p82)
	local n15 = 1

	p82:SetScale(VectorUtil.newVector3(n15, n15, n15))
	LuaTimer:scheduleTicker(function()
		if n15 > 0.5 then
			n15 = n15 - 0.1

			local Rage_VM_param_1393 = p82
			local t8 = { VectorUtil.newVector3(n15, n15, n15) }

			Rage_VM_param_1393:SetScale(Rage_VM_param_1(t8))

			return
		end

		p82:SetVisible(false)
		LuaTimer:cancel(timer)
	end, 1, 10)
end

function UIHelper.showToast(p83, p84, p85)
	if ToastText == nil then
		ToastText = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-Toast")
		ToastText:SetHorizontalAlignment(HorizontalAlignment.Center)
		ToastText:SetVerticalAlignment(VerticalAlignment.Bottom)
		ToastText:SetTextHorzAlign(HorizontalAlignment.Center)
		ToastText:SetTextVertAlign(VerticalAlignment.Center)
		ToastText:SetHeight({
			0,
			45
		})
		ToastText:SetYPosition({
			0,
			-120
		})
		ToastText:SetLevel(1)
		ToastText:SetTouchable(false)
		ToastText:SetBordered(true)
		GUISystem.Instance():GetRootWindow():AddChildWindow(ToastText)
	end

	local _ToastText = ToastText

	u38(_ToastText)
	ToastText:SetText(p83)

	if p85 then
		ToastText:SetBackgroundColor({
			0,
			0,
			0,
			0
		})
	else
		ToastText:SetBackgroundColor({
			0,
			0.392,
			0,
			0.7
		})
		ToastText:SetWidth({
			0,
			ToastText:GetTextWidth() + 25
		})
	end

	LuaTimer:cancel(ToastTimer)

	local Rage_VM_param_255 = p84 or 2000

	ToastTimer = LuaTimer:schedule(function()
		u39(ToastText)
	end, Rage_VM_param_255)
end

UIReminder = {
	popup = nil,
	animTimer = nil,
	defaultDuration = 3
}

function UIReminder.showPopUp(p86, p87)
	if not p87 then
		p87 = UIReminder.defaultDuration
	end

	local u262 = p87

	if UIReminder.animTimer then
		LuaTimer:cancel(UIReminder.animTimer)
		UIReminder.animTimer = nil
	end

	if not UIReminder.popup then
		UIReminder.popup = GUIManager:createGUIWindow(GUIType.StaticText, "ReminderPopup")
		UIReminder.popup:SetWidth({
			0,
			200
		})
		UIReminder.popup:SetHeight({
			0,
			45
		})
		UIReminder.popup:SetBackgroundColor({
			0,
			0.392,
			0,
			0.7
		})
		UIReminder.popup:SetTouchable(false)
		UIReminder.popup:SetBordered(true)
		UIReminder.popup:SetTextColor({
			1,
			1,
			1,
			1
		})
		UIReminder.popup:SetTextHorzAlign(HorizontalAlignment.Center)
		UIReminder.popup:SetTextVertAlign(VerticalAlignment.Center)
		GUISystem.Instance():GetRootWindow():AddChildWindow(UIReminder.popup)
	end

	UIReminder.popup:SetText(p86)
	UIReminder.popup:SetVisible(true)

	local Rage_VM_param_263 = math.max(200, UIReminder.popup:GetTextWidth() + 40)

	UIReminder.popup:SetWidth({
		0,
		Rage_VM_param_263
	})

	local Rage_VM_param_264 = GUIManager:getWindowByName("ToolBar-Setting")
	local u274, u276, u277

	if Rage_VM_param_264 then
		local Rage_VM_param_265 = select(2, Rage_VM_param_264:GetXPosition())
		local GetYPosition = Rage_VM_param_264.GetYPosition
		local Rage_VM_param_267 = Rage_VM_param_265 or 0
		local Rage_VM_param_268 = select(2, GetYPosition(Rage_VM_param_264))
		local GetWidth = Rage_VM_param_264.GetWidth
		local Rage_VM_param_270 = Rage_VM_param_268 or 0
		local Rage_VM_param_271 = select(2, GetWidth(Rage_VM_param_264))
		local GetHeight = Rage_VM_param_264.GetHeight
		local Rage_VM_param_273 = Rage_VM_param_271 or 0

		u274 = Rage_VM_param_270 + (select(2, GetHeight(Rage_VM_param_264)) or 0) + 80

		local Rage_VM_param_275 = Rage_VM_param_263 / 2

		u276 = Rage_VM_param_267 + Rage_VM_param_273 / 2 - Rage_VM_param_275 + 80
		u277 = u276 - 230
	else
		local Width = GUISystem.Instance():GetRootWindow():GetWidth()

		u274 = GUISystem.Instance():GetRootWindow():GetHeight() * 0.9
		u276 = (Width - Rage_VM_param_263) / 2
		u277 = u276 - 230
	end

	local n16 = 0.25
	local elapsed = os.clock()
	local u281 = false

	UIReminder.animTimer = LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1412 = os.clock() - elapsed

		if Rage_VM_param_1412 < n16 then
			local Rage_VM_param_1413 = Rage_VM_param_1412 / n16

			UIReminder.popup:SetXPosition({
				0,
				u277 + 230 * Rage_VM_param_1413
			})
			UIReminder.popup:SetYPosition({
				0,
				u274
			})

			return
		end

		if Rage_VM_param_1412 < n16 + u262 then
			UIReminder.popup:SetXPosition({
				0,
				u276
			})
			UIReminder.popup:SetYPosition({
				0,
				u274
			})

			return
		end

		if Rage_VM_param_1412 < n16 * 2 + u262 then
			local Rage_VM_param_1414 = (Rage_VM_param_1412 - n16 - u262) / n16

			UIReminder.popup:SetXPosition({
				0,
				u276 - 230 * Rage_VM_param_1414
			})
			UIReminder.popup:SetYPosition({
				0,
				u274
			})

			local Rage_VM_param_1415 = Rage_VM_param_1414 >= 1

			if Rage_VM_param_1415 then
				Rage_VM_param_1415 = not u281
			end

			if Rage_VM_param_1415 then
				u281 = true
				UIReminder.popup:SetVisible(false)

				if UIReminder.animTimer then
					LuaTimer:cancel(UIReminder.animTimer)
					UIReminder.animTimer = nil

					return
				end
			end
		else
			if UIReminder.animTimer then
				LuaTimer:cancel(UIReminder.animTimer)
				UIReminder.animTimer = nil
			end

			UIReminder.popup:SetVisible(false)
		end
	end, 0.033, -1)
end

local s7 = "\r\n    Layout11 = GUIManager:createGUIWindow(GUIType.Layout, \"GUIRoot-Layout11\")\r\n    Layout11:SetHorizontalAlignment(HorizontalAlignment.Center)\r\n    Layout11:SetVerticalAlignment(VerticalAlignment.Center)\r\n    Layout11:SetHeight({ 0, 400 }) \r\n    Layout11:SetWidth({ 0, 700 }) \r\n    Layout11:SetYPosition({ 0, -5 }) \r\n    Layout11:SetBackgroundColor({ 0, 0, 0, 1 })\r\n    Layout11:SetTouchable(true)\r\n    Layout11:SetLevel(1)\r\n    Layout11:SetVisible(false)\r\n    GUISystem.Instance():GetRootWindow():AddChildWindow(Layout11)\r\n    Title22 = GUIManager:createGUIWindow(GUIType.StaticText, \"GUIRoot-Title22\")\r\n        Title22:SetHorizontalAlignment(HorizontalAlignment.Center)\r\n        Title22:SetVerticalAlignment(VerticalAlignment.Center)\r\n        Title22:SetTextHorzAlign(HorizontalAlignment.Center)\r\n        Title22:SetTextVertAlign(VerticalAlignment.Center)\r\n        Title22:SetHeight({0, 400})\r\n        Title22:SetWidth({0, 700})\r\n        Title22:SetLevel(1)\r\n        Title22:SetTextScale(1.3)\r\n        Title22:SetTouchable(false)\r\n        GUISystem.Instance():GetRootWindow():AddChildWindow(Title22)\r\n        Title22:SetText(\"New update is avaiable\")\r\n        Title22:SetBackgroundColor({0, 0, 0, 1})\r\n        Title22:SetVisible(false)\r\n        Title22:SetBordered(true)\r\n        Title22:SetYPosition({0, -5})\r\n    Title11 = GUIManager:createGUIWindow(GUIType.StaticText, \"GUIRoot-Title11\")\r\n        Title11:SetHorizontalAlignment(HorizontalAlignment.Center)\r\n        Title11:SetVerticalAlignment(VerticalAlignment.Center)\r\n        Title11:SetTextHorzAlign(HorizontalAlignment.Center)\r\n        Title11:SetTextVertAlign(VerticalAlignment.Center)\r\n        Title11:SetHeight({0, 50})\r\n        Title11:SetWidth({0, 700})\r\n        Title11:SetLevel(1)\r\n        Title11:SetTouchable(true)\r\n        GUISystem.Instance():GetRootWindow():AddChildWindow(Title11)\r\n        Title11:SetText(\"Update info!\")\r\n        Title11:SetBackgroundColor({0.75, 0.75, 0.75, 1})\r\n        Title11:SetVisible(false)\r\n        Title11:SetXPosition({0, 0})\r\n        Title11:SetYPosition({0, -180})\r\n    upd1 = GUIManager:createGUIWindow(GUIType.Button, \"GUIRoot-upd1\")\r\n        upd1:SetHorizontalAlignment(HorizontalAlignment.Center)\r\n        upd1:SetVerticalAlignment(VerticalAlignment.Center)\r\n        upd1:SetHeight({0, 50})\r\n        upd1:SetWidth({0, 150})\r\n        upd1:SetLevel(1)\r\n        upd1:SetTouchable(true)\r\n        GUISystem.Instance():GetRootWindow():AddChildWindow(upd1)\r\n        upd1:SetText(\"Update\")\r\n        upd1:SetBackgroundColor({0.0, 0.392, 0.0, 0.7})\r\n        upd1:SetVisible(false)\r\n        upd1:SetXPosition({0, 0})\r\n        upd1:SetYPosition({0, 150})\r\nlocal function readBytes(path)\r\n    local f = io.open(path, \"rb\")\r\n    if not f then return nil end\r\n    local content = f:read(\"*a\")\r\n    f:close()\r\n    return content\r\nend\r\n\r\nlocal function getSize(data)\r\n    return data and #data or 0\r\nend\r\n\r\nupd1:registerEvent(GUIEvent.ButtonClick, function()\r\n   AsyncGet(\"https://link-j85k.onrender.com/link.txt\", \"\", function(datad, code1)\r\n   discord(tostring(datad))\r\n   end)\r\nend)\r\n    CloseOP1 = GUIManager:createGUIWindow(GUIType.Button, \"GUIRoot-CloseOP1\")\r\n        CloseOP1:SetHorizontalAlignment(HorizontalAlignment.Center)\r\n        CloseOP1:SetVerticalAlignment(VerticalAlignment.Center)\r\n        CloseOP1:SetHeight({0, 50})\r\n        CloseOP1:SetWidth({0, 50})\r\n        CloseOP1:SetLevel(1)\r\n        CloseOP1:SetTouchable(true)\r\n        GUISystem.Instance():GetRootWindow():AddChildWindow(CloseOP1)\r\n        CloseOP1:SetText(\"X\")\r\n        CloseOP1:SetBackgroundColor({1, 0, 0, 1})\r\n        CloseOP1:SetVisible(false)\r\n        CloseOP1:SetXPosition({0, 325})\r\n        CloseOP1:SetYPosition({0, -180})\r\n        CloseOP1:registerEvent(GUIEvent.ButtonClick, function()\r\n        --LayoutOp:SetVisible(false)\r\n        Layout11:SetVisible(false)\r\n        CloseOP1:SetVisible(false)\r\n        upd1:SetVisible(false)\r\n        Title11:SetVisible(false)\r\n        Title22:SetVisible(false)\r\n        --GUITitle:SetVisible(false)\r\n        SoundUtil.playSound(7)\r\n        end)\r\n"
local u41 = nil
local u42 = nil

local function u43()
	local u256 = false
	local t9 = {}

	local function u258()
		local t10 = {}
		local Rage_VM_param_1396, Rage_VM_param_1397, Rage_VM_param_1398 = ipairs({
			"Top",
			"Left",
			"Bottom",
			"Right"
		})

		while true do
			local Rage_VM_param_1399

			Rage_VM_param_1398, Rage_VM_param_1399 = Rage_VM_param_1396(Rage_VM_param_1397, Rage_VM_param_1398)

			if not Rage_VM_param_1398 then
				break
			end

			t10[#t10 + 1] = GUIManager:getWindowByName(string.format("Main-Attack-Move%s-CrossHair", Rage_VM_param_1399))
		end

		return t10
	end

	attackButton = GUIManager:getWindowByName("Main-Attack-btn")
	attackButtonImage = GUIManager:getWindowByName("Main-Attack-btn-img")
	LuaTimer:scheduleTimer(function()
		attackButtonImage:SetProperty("ImageName", "set:main_btn.json image:skill_btn")
	end, 50, -1)
	attackButton:registerEvent(GUIEvent.TouchDown, function()
		Blockman.Instance().m_gameSettings:setCollimatorMode(true)
		GUIManager:getWindowByName("Main-Attack-CrossHairs"):SetVisible(true)
		GUIManager:getWindowByName("Main-Attack-Common-CrossHair"):setMaterial(13)

		local Rage_VM_param_1400, Rage_VM_param_1401, Rage_VM_param_1402 = pairs(u258())

		while true do
			local Rage_VM_param_1403

			Rage_VM_param_1402, Rage_VM_param_1403 = Rage_VM_param_1400(Rage_VM_param_1401, Rage_VM_param_1402)

			if not Rage_VM_param_1402 then
				break
			end

			if Rage_VM_param_1403 then
				Rage_VM_param_1403:SetVisible(true)
			end
		end

		u256 = true
		t9[#t9 + 1] = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_2041 = GUIManager:getWindowByName("Main-Attack-Btn", GUIType.Button)
			local t11 = { VectorUtil.newVector2(0, 0) }

			Rage_VM_param_2041:TouchDown(Rage_VM_param_1(t11))
			GUIManager:getWindowByName("Main-Attack-Btn", GUIType.Button):TouchUp(VectorUtil.newVector2(0, 0))
		end, 80)
	end)

	local function Rage_VM_param_259()
		Blockman.Instance().m_gameSettings:setCollimatorMode(false)
		GUIManager:getWindowByName("Main-Attack-Common-CrossHair"):setMaterial(1)
		GUIManager:getWindowByName("Main-Attack-CrossHairs"):SetVisible(false)
		u256 = false

		local Rage_VM_param_1404, Rage_VM_param_1405, Rage_VM_param_1406 = pairs(u258())

		while true do
			local Rage_VM_param_1407

			Rage_VM_param_1406, Rage_VM_param_1407 = Rage_VM_param_1404(Rage_VM_param_1405, Rage_VM_param_1406)

			if not Rage_VM_param_1406 then
				break
			end

			if Rage_VM_param_1407 then
				Rage_VM_param_1407:SetVisible(false)
			end
		end
	end

	Listener.registerCallBack(CEvents.GameMainTickEvent, function()
		if not u256 then
			local Rage_VM_param_1408, Rage_VM_param_1409, Rage_VM_param_1410 = pairs(t9)

			while true do
				local Rage_VM_param_1411

				Rage_VM_param_1410, Rage_VM_param_1411 = Rage_VM_param_1408(Rage_VM_param_1409, Rage_VM_param_1410)

				if not Rage_VM_param_1410 then
					break
				end

				LuaTimer:cancel(Rage_VM_param_1411)
				t9[Rage_VM_param_1410] = nil
			end
		end
	end)
	attackButton:registerEvent(GUIEvent.TouchUp, Rage_VM_param_259)
	attackButton:registerEvent(GUIEvent.Release, Rage_VM_param_259)
end

local Rage_VM_param_44 = VectorUtil.newVector3(0, 0, -1)
local Rage_VM_param_45 = VectorUtil.newVector3(0, 0, 1)
local Rage_VM_param_46 = VectorUtil.newVector3(-1, 0, 0)
local Rage_VM_param_47 = VectorUtil.newVector3(1, 0, 0)
local t12 = {
	north = Rage_VM_param_44,
	south = Rage_VM_param_45,
	west = Rage_VM_param_46,
	east = Rage_VM_param_47
}
local Rage_VM_param_49 = VectorUtil.newVector3(-1, 0, -1)
local Rage_VM_param_50 = VectorUtil.newVector3(1, 0, -1)
local Rage_VM_param_51 = VectorUtil.newVector3(1, 0, 1)
local Rage_VM_param_52 = VectorUtil.newVector3(-1, 0, 1)
local t13 = {
	westNorth = Rage_VM_param_49,
	eastNorth = Rage_VM_param_50,
	eastSouth = Rage_VM_param_51,
	westSouth = Rage_VM_param_52
}
local t14 = {
	upper = 0,
	under = 1,
	north = 3,
	south = 2,
	west = 5,
	east = 4
}

local function u55(p88)
	local Rage_VM_param_283 = EngineWorld:getBlockId(p88)
	local t15 = {}
	local t16 = {}
	local Rage_VM_param_286 = false
	local Rage_VM_param_287 = Rage_VM_param_283 ~= BlockID.AIR

	if Rage_VM_param_287 then
		Rage_VM_param_287 = Rage_VM_param_283 ~= BlockID.SNOW
	end

	if Rage_VM_param_287 then
		return Rage_VM_param_286, t15, t16
	end

	local Rage_VM_param_288, Rage_VM_param_289, Rage_VM_param_290 = pairs(t12)

	while true do
		local Rage_VM_param_291

		Rage_VM_param_290, Rage_VM_param_291 = Rage_VM_param_288(Rage_VM_param_289, Rage_VM_param_290)

		if not Rage_VM_param_290 then
			break
		end

		local Rage_VM_param_292 = VectorUtil.add3(p88, Rage_VM_param_291)
		local Rage_VM_param_293 = EngineWorld:getBlockId(Rage_VM_param_292)
		local Rage_VM_param_294 = Rage_VM_param_293 ~= BlockID.AIR

		if Rage_VM_param_294 then
			Rage_VM_param_294 = Rage_VM_param_293 ~= BlockID.SNOW
		end

		if Rage_VM_param_294 then
			t15[Rage_VM_param_290] = Rage_VM_param_292
			Rage_VM_param_286 = true
		else
			table.insert(t16, Rage_VM_param_292)
		end
	end

	local Rage_VM_param_295, Rage_VM_param_296, Rage_VM_param_297 = pairs(t13)

	while true do
		local Rage_VM_param_298

		Rage_VM_param_297, Rage_VM_param_298 = Rage_VM_param_295(Rage_VM_param_296, Rage_VM_param_297)

		if not Rage_VM_param_297 then
			break
		end

		local Rage_VM_param_299 = VectorUtil.add3(p88, Rage_VM_param_298)

		if EngineWorld:getBlockId(Rage_VM_param_299) == 0 then
			table.insert(t16, Rage_VM_param_299)
		end
	end

	return Rage_VM_param_286, t15, t16
end
local function u56(p89, p90, p91)
	local Rage_VM_param_303, Rage_VM_param_304, Rage_VM_param_305 = u55(p90)
	local Rage_VM_param_306 = nil
	local Rage_VM_param_307 = nil

	if p91 > 1 then
		return Rage_VM_param_303, Rage_VM_param_306, Rage_VM_param_307
	end

	local Rage_VM_param_308 = p91 + 1
	local Rage_VM_param_309 = p89:getPosition()
	local u310 = VectorUtil.toBlockVector3(Rage_VM_param_309.x, Rage_VM_param_309.y, Rage_VM_param_309.z)

	if Rage_VM_param_303 then
		local n17 = 3
		local Rage_VM_param_312, Rage_VM_param_313, Rage_VM_param_314 = pairs(Rage_VM_param_304)

		while true do
			local Rage_VM_param_315

			Rage_VM_param_314, Rage_VM_param_315 = Rage_VM_param_312(Rage_VM_param_313, Rage_VM_param_314)

			if not Rage_VM_param_314 then
				break
			end

			local Rage_VM_param_316 = VectorUtil.distance(Rage_VM_param_315, u310)

			if Rage_VM_param_316 < n17 then
				n17 = Rage_VM_param_316
				Rage_VM_param_306 = Rage_VM_param_315
				Rage_VM_param_307 = t14[Rage_VM_param_314]
			end
		end
	else
		if #Rage_VM_param_305 > 2 then
			table.sort(Rage_VM_param_305, function(p92, p93)
				return VectorUtil.distance(p92, u310) < VectorUtil.distance(p93, u310)
			end)
		end

		local Rage_VM_param_317, Rage_VM_param_318, Rage_VM_param_319 = pairs(Rage_VM_param_305)
		local Rage_VM_param_320, Rage_VM_param_321 = Rage_VM_param_317(Rage_VM_param_318, Rage_VM_param_319)

		if Rage_VM_param_320 then
			return u56(p89, Rage_VM_param_321, Rage_VM_param_308)
		end
	end

	return Rage_VM_param_303, Rage_VM_param_306, Rage_VM_param_307
end
local function u57(p94, p95)
	local Rage_VM_param_324 = nil
	local Rage_VM_param_325 = if not (math.abs(p95.x) >= math.abs(p95.z)) then if not (p95.z > 0) then VectorUtil.newVector3(0, 0, -1) else VectorUtil.newVector3(0, 0, 1) else if not (p95.x > 0) then VectorUtil.newVector3(-1, 0, 0) else VectorUtil.newVector3(1, 0, 0)
	local Rage_VM_param_326 = p94:getPosition()
	local Rage_VM_param_327 = VectorUtil.toBlockVector3(Rage_VM_param_326.x, Rage_VM_param_326.y, Rage_VM_param_326.z)
	local Rage_VM_param_328 = VectorUtil.toBlockVector3(Rage_VM_param_327.x, Rage_VM_param_327.y - 2, Rage_VM_param_327.z)
	local Rage_VM_param_329 = false
	local Rage_VM_param_330 = Rage_VM_param_328

	for _ = 1, 7 do
		local Rage_VM_param_332 = EngineWorld:getBlockId(Rage_VM_param_330)
		local Rage_VM_param_333 = Rage_VM_param_332 == BlockID.AIR

		if not Rage_VM_param_333 then
			Rage_VM_param_333 = Rage_VM_param_332 == BlockID.SNOW
		end

		if Rage_VM_param_333 then
			local Rage_VM_param_334, Rage_VM_param_335, Rage_VM_param_336 = u56(p94, Rage_VM_param_330, 1)

			if not Rage_VM_param_334 then
				continue
			end

			return Rage_VM_param_334, Rage_VM_param_335, Rage_VM_param_336
		end

		Rage_VM_param_330 = VectorUtil.add3(Rage_VM_param_330, Rage_VM_param_325)
	end

	local Rage_VM_param_337 = EngineWorld:getBlockId(Rage_VM_param_328)
	local Rage_VM_param_338 = Rage_VM_param_337 == BlockID.AIR

	if not Rage_VM_param_338 then
		Rage_VM_param_338 = Rage_VM_param_337 == BlockID.SNOW
	end

	if Rage_VM_param_338 then
		local Rage_VM_param_339, Rage_VM_param_340, Rage_VM_param_341 = pairs(t12)

		repeat
			local Rage_VM_param_342

			Rage_VM_param_341, Rage_VM_param_342 = Rage_VM_param_339(Rage_VM_param_340, Rage_VM_param_341)

			if not Rage_VM_param_341 then
				return Rage_VM_param_329, Rage_VM_param_330, Rage_VM_param_324
			end

			Rage_VM_param_329, Rage_VM_param_330, Rage_VM_param_324 = u56(p94, VectorUtil.add3(Rage_VM_param_328, Rage_VM_param_342), 1)
		until Rage_VM_param_329

		return Rage_VM_param_329, Rage_VM_param_330, Rage_VM_param_324
	end

	return Rage_VM_param_329, Rage_VM_param_330, Rage_VM_param_324
end
local function u58(p96, p97, p98, _)
	local Rage_VM_param_347 = not p97

	if not Rage_VM_param_347 then
		Rage_VM_param_347 = not p98
	end

	if Rage_VM_param_347 then
		return false
	end

	local Rage_VM_param_348 = p96:getInventory():getRealCurrentItem()

	if not Rage_VM_param_348 then
		return false
	end

	local Rage_VM_param_349 = Rage_VM_param_348:getItem()

	if not Rage_VM_param_349 then
		return false
	end

	local x = p97.x
	local y = p97.y
	local z = p97.z
	local Rage_VM_param_353 = VectorUtil.newVector3(x, y, z)

	if Rage_VM_param_349:onItemUse(Rage_VM_param_348, Blockman.Instance():getPlayer(), Blockman.Instance():getWorld(), Rage_VM_param_353, p98, Rage_VM_param_353) then
		local Rage_VM_param_354 = VectorUtil.newVector3(p97.x, p97.y - 1, p97.z)

		PlaceBlock(Rage_VM_param_354)

		return true
	end

	return false
end
local function u59()
	local Rage_VM_param_355 = PlayerManager:getClientPlayer()

	if not Rage_VM_param_355 then
		return
	end

	if not Rage_VM_param_355.Player.onGround then
		local Rage_VM_param_356 = Rage_VM_param_355.Player:getBottomPos()
		local Rage_VM_param_357 = VectorUtil.newVector3(math.floor(Rage_VM_param_356.x), math.floor(Rage_VM_param_356.y), (math.floor(Rage_VM_param_356.z)))
		local Rage_VM_param_358 = VectorUtil.newVector3(Rage_VM_param_357.x, Rage_VM_param_357.y - 1, Rage_VM_param_357.z)
		local Rage_VM_param_359 = VectorUtil.newVector3(Rage_VM_param_357.x, Rage_VM_param_357.y - 2, Rage_VM_param_357.z)
		local Rage_VM_param_360 = EngineWorld:getBlockId(Rage_VM_param_357)
		local Rage_VM_param_361 = EngineWorld:getBlockId(Rage_VM_param_358)
		local Rage_VM_param_362 = EngineWorld:getBlockId(Rage_VM_param_359)
		local Rage_VM_param_363 = Rage_VM_param_360 == BlockID.AIR

		if Rage_VM_param_363 then
			Rage_VM_param_363 = Rage_VM_param_361 ~= BlockID.AIR
		end

		if Rage_VM_param_363 then
			u58(Rage_VM_param_355, Rage_VM_param_358, t14.under, "button")

			return
		end

		local Rage_VM_param_364 = Rage_VM_param_360 == BlockID.AIR

		if Rage_VM_param_364 then
			Rage_VM_param_364 = Rage_VM_param_361 == BlockID.AIR

			if Rage_VM_param_364 then
				Rage_VM_param_364 = Rage_VM_param_362 ~= BlockID.AIR
			end
		end

		if Rage_VM_param_364 then
			u58(Rage_VM_param_355, Rage_VM_param_359, t14.under, "button")
		end

		return
	end

	local Rage_VM_param_365 = SceneManager.Instance():getMainCamera():getDirection()
	local _, Rage_VM_param_367, Rage_VM_param_368 = u57(Rage_VM_param_355, Rage_VM_param_365)

	u58(Rage_VM_param_355, Rage_VM_param_367, Rage_VM_param_368, "button")
end

local u60 = false

function GMHelper.bridge(_)
	local function u370()
		u59()
	end

	if not u60 then
		local u371 = false
		local t17 = {
			TESTMovableEngine1 = GUIManager:createGUIWindow("Button", "TESTMovableEngine1")
		}
		local TESTMovableEngine1 = t17.TESTMovableEngine1

		GUIManager:getMainControl():AddChildWindow(TESTMovableEngine1)

		local t18 = {
			{
				0,
				98
			},
			{
				0,
				98
			}
		}
		local t19 = {
			{
				0.757812,
				0
			},
			{
				0.5125,
				0
			},
			table.unpack(t18)
		}

		TESTMovableEngine1:SetArea(table.unpack(t19))
		t17.TESTMovableEngine1_icon = GUIManager:createGUIWindow("StaticImage", "TESTMovableEngine1-icon")

		local TESTMovableEngine1_icon = t17.TESTMovableEngine1_icon

		TESTMovableEngine1_icon:SetArea({
			0,
			0
		}, {
			0,
			0
		}, table.unpack(t18))
		TESTMovableEngine1_icon:SetProperty("TextHorzAlignment", "Centre")
		TESTMovableEngine1_icon:SetProperty("TextVertAlignment", "Centre")
		TESTMovableEngine1_icon:SetProperty("TextCharaterRotation", "false")
		TESTMovableEngine1_icon:SetProperty("ImageName", "set:bedwarsmall.json image:img_0_add")
		TESTMovableEngine1_icon:SetBackgroundColor({
			0,
			0,
			0,
			1
		})
		TESTMovableEngine1:SetLevel(2)
		TESTMovableEngine1:AddChildWindow(TESTMovableEngine1_icon)

		local u377 = nil
		local u378 = nil
		local u379 = false

		local function u380()
			TESTMovableEngine1:SetArea(table.unpack(t19))
			TESTMovableEngine1_icon:SetArea({
				0,
				0
			}, {
				0,
				0
			}, table.unpack(t18))
			u371 = false
			TESTMovableEngine1_icon:SetProperty("ImageName", "set:bedwarsmall.json image:img_0_add")
			u377 = nil
			u378 = nil
			GUIManager:getWindowByName("Main-Control"):SetLevel(5)
			GUIManager:getWindowByName("Main-Jump-Controls"):SetLevel(50)
			GUIManager:getWindowByName("Main-FlyingControls"):SetLevel(50)
			GUIManager:getWindowByName("Main-PoleControl-Move"):SetLevel(60)
			u379 = false
		end

		TESTMovableEngine1:registerEvent(GUIEvent.TouchDown, function()
			TESTMovableEngine1_icon:SetProperty("ImageName", "set:bedwarsmall.json image:img_0_add")
		end)
		TESTMovableEngine1:registerEvent(GUIEvent.TouchMove, function(p101)
			if not u371 then
				TESTMovableEngine1:SetArea({
					0,
					0
				}, {
					0,
					0
				}, {
					1,
					0
				}, {
					1,
					0
				})
				TESTMovableEngine1_icon:SetArea(table.unpack(t19))
				u371 = true
			end

			u379 = true

			local position = p101.position
			local Rage_VM_param_1420 = position.x - 25
			local Rage_VM_param_1421 = position.y - 25

			TESTMovableEngine1_icon:SetXPosition({
				0,
				Rage_VM_param_1420
			})
			TESTMovableEngine1_icon:SetYPosition({
				0,
				Rage_VM_param_1421
			})

			local ScreenHeight = GUISystem.Instance():GetScreenHeight()
			local ScreenWidth = GUISystem.Instance():GetScreenWidth()
			local n18 = 2.5

			GUIManager:getWindowByName("Main-Control"):SetLevel(1)
			GUIManager:getWindowByName("Main-Jump-Controls"):SetLevel(1)
			GUIManager:getWindowByName("Main-FlyingControls"):SetLevel(1)
			GUIManager:getWindowByName("Main-PoleControl-Move"):SetLevel(1)

			local Rage_VM_param_1425 = PlayerManager:getClientPlayer()

			if Rage_VM_param_1425 then
				local Rage_VM_param_1426 = u377

				if Rage_VM_param_1426 then
					Rage_VM_param_1426 = u378
				end

				if Rage_VM_param_1426 then
					local Rage_VM_param_1427 = position.x - u377
					local Rage_VM_param_1428 = position.y - u378

					Rage_VM_param_1425.Player.rotationYaw = Rage_VM_param_1425.Player.rotationYaw + Rage_VM_param_1427 / ScreenWidth * 360 * n18
					Rage_VM_param_1425.Player.rotationPitch = Rage_VM_param_1425.Player.rotationPitch + Rage_VM_param_1428 / ScreenHeight * 180 * n18
					Rage_VM_param_1425.Player.rotationPitch = math.max(-90, (math.min(90, Rage_VM_param_1425.Player.rotationPitch)))
				end

				u377 = position.x
				u378 = position.y
			end
		end)
		TESTMovableEngine1:registerEvent(GUIEvent.Release, u380)
		TESTMovableEngine1:registerEvent(GUIEvent.TouchUp, u380)
		TESTMovableEngine1:registerEvent(GUIEvent.ButtonClick, function()
			u370()
			u380()
		end)
		TESTMovableEngine1:registerEvent(GUIEvent.LongTouchStart, function()
			u379 = true
		end)
		TESTMovableEngine1:registerEvent(GUIEvent.LongTouchEnd, function()
			u379 = false
			u380()
		end)
		Listener.registerCallBack(CEvents.GameMainTickEvent, function()
			if u379 then
				u370()
			end
		end)
		u60 = true
		TESTMovableEngine1:SetVisible(false)
	end
end

local u61 = nil
local t20 = nil

t20 = {}
u61 = false
LuaTimer:scheduleTimer(function()
	local Rage_VM_param_381 = not u61

	if Rage_VM_param_381 then
		Rage_VM_param_381 = #t20 ~= 0
	end

	if Rage_VM_param_381 then
		u61 = true

		local Rage_VM_param_382 = table.remove(t20, 1)

		WService.asyncGet(nil, "EW", "http://gw.sandboxol.com/friend/api/Rage_VM_param_3/friends/" .. Rage_VM_param_382, {}, function(p102)
			local birthday = json.decode(p102).data.birthday

			if not TableUtil.include(birthdays, birthday) then
			end

			u61 = false
		end)
	end
end, 100, -1)

local function u63(p103)
	table.insert(t20, (tostring(p103)))
end

Listener.registerCallBack(CEvents.PlayerLoginEvent, function(p104)
	u63(p104)
end)

function Game.init(p105)
	LuaTimer:scheduleTimer(function()
		local _EntityId = EntityId
		local _tonumber = tonumber
		local _EntityCache = EntityCache
		local t21 = { PlayerManager:getClientPlayer():getEntityId() }

		_EntityId(_tonumber(_EntityCache:getServerId(Rage_VM_param_1(t21))))
	end, 1000, 9999999)

	if u5 then
		Events.GUILayoutShowEvent:unregisterAll()
		Events.GUILayoutHideEvent:unregisterAll()
	end

	loadn(s7)
	GMHelper:fastFlyUpDown()
	GMHelper:Gvariables()
	GMHelper:bwtab()
	GMHelper:Jailbreak()
	GMHelper:Skyroyale()
	GMHelper:startAutoPing()
	GMHelper:GUIShortcuts()
	GMHelper:checkOnlinePlayers()
	GMHelper:PingXD()
	GMHelper:UpdateInfoGUI()
	GMHelper:testForUpdate()
	GMHelper:GMShow()
	ControlEditor()
	UIHelper.showCenterToast("^FFFFFFAdmin-Panel-PublicRelease-Engine-10112")
	p105.CGame = CGame.Instance()
	p105.doubleJumpCount = 100000
	p105.GameType = CGame.Instance():getGameType()
	p105.EnableIndie = CGame.Instance():isEnableIndie(true)
	p105.Blockman = Blockman.Instance()
	p105.World = Blockman.Instance():getWorld()
	p105.LowerDevice = CGame.Instance():isLowerDevice()
	EngineWorld:setWorld(p105.World)
end

local Rage_VM_param_64 = json.decode(readFile("/data/user/0/com.sandboxol.blockymods.channel.official/app_resources/config.json"))

if not Rage_VM_param_64 then
	Rage_VM_param_64 = {}
end

local u65 = Rage_VM_param_64

if not u65.functions then
	u65.functions = {}
end

if not u65.values then
	u65.values = {}
end

local functions = u65.functions
local values = u65.values

local function u68()
	values.speed = values.speed or 400
	values.HighJump = values.HighJump or 1
	values.AimBot = values.AimBot or 60
	values.HitBox = values.HitBox or 4
end

u68()

function Game.isOpenGM(_)
	return isClient
end
function GMSetting.addTab1(_, p108, p109)
	local Rage_VM_param_390, Rage_VM_param_391, Rage_VM_param_392 = pairs(t4)
	local Rage_VM_param_393

	repeat
		Rage_VM_param_392, Rage_VM_param_393 = Rage_VM_param_390(Rage_VM_param_391, Rage_VM_param_392)

		if not Rage_VM_param_392 then
			if not p109 then
				p109 = #t4 + 1
			end

			local insert = table.insert
			local t22 = {
				name = p108,
				items = {}
			}

			insert(t4, p109, t22)

			return
		end
	until p108 == Rage_VM_param_393.name

	Rage_VM_param_393.items = {}
end
function GMSetting.addItem1(_, p111, p112, p113, ...)
	local Rage_VM_param_400 = nil
	local Rage_VM_param_401, Rage_VM_param_402, Rage_VM_param_403 = pairs(t4)

	while true do
		local Rage_VM_param_404

		Rage_VM_param_403, Rage_VM_param_404 = Rage_VM_param_401(Rage_VM_param_402, Rage_VM_param_403)

		if not Rage_VM_param_403 then
			break
		end

		if p111 == Rage_VM_param_404.name then
			Rage_VM_param_400 = Rage_VM_param_404
		end
	end

	if not Rage_VM_param_400 then
		GMSetting:addTab(p111)
		GMSetting:addItem(p111, p112, p113, ...)

		return
	end

	table.insert(Rage_VM_param_400.items, {
		name = p112,
		func = p113,
		params = { ... }
	})
end
function GMSetting.addItem(_)
end
function GMSetting.addTab(_)
end
function GMSetting.getSettings(_)
	return t4
end
function GMSetting.getNameByFunc(_, p118)
	local Rage_VM_param_410, Rage_VM_param_411, Rage_VM_param_412 = pairs(t4)

	repeat
		local g413 = false
		local Rage_VM_param_414

		Rage_VM_param_412, Rage_VM_param_414 = Rage_VM_param_410(Rage_VM_param_411, Rage_VM_param_412)

		if Rage_VM_param_412 then
			local Rage_VM_param_415, Rage_VM_param_416, Rage_VM_param_417 = pairs(Rage_VM_param_414.items)
			local Rage_VM_param_418

			repeat
				Rage_VM_param_417, Rage_VM_param_418 = Rage_VM_param_415(Rage_VM_param_416, Rage_VM_param_417)

				if not Rage_VM_param_417 then
					g413 = true
				end

				if g413 then
					break
				end
			until p118 == Rage_VM_param_418.func

			if not g413 then
				return Rage_VM_param_418.name
			end
		end
	until not g413
end
function GMSetting.subItem(_, p120, p121)
	local Rage_VM_param_422 = GMSetting:getSettings()
	local Rage_VM_param_423, Rage_VM_param_424, Rage_VM_param_425 = pairs(Rage_VM_param_422)

	repeat
		local g426 = false

		while true do
			local Rage_VM_param_427

			Rage_VM_param_425, Rage_VM_param_427 = Rage_VM_param_423(Rage_VM_param_424, Rage_VM_param_425)

			if not Rage_VM_param_425 then
				break
			end

			if p120 == Rage_VM_param_427.name then
				local Rage_VM_param_428, Rage_VM_param_429, Rage_VM_param_430 = pairs(Rage_VM_param_427.items)

				repeat
					local Rage_VM_param_431

					Rage_VM_param_430, Rage_VM_param_431 = Rage_VM_param_428(Rage_VM_param_429, Rage_VM_param_430)

					if not Rage_VM_param_430 then
						g426 = true
					end

					if g426 then
						break
					end
				until p121 == Rage_VM_param_431.name

				if not g426 then
					table.remove(Rage_VM_param_427.items, Rage_VM_param_430)
				end
			end

			if g426 then
				break
			end
		end
	until not g426
end
function updateConfig()
	local Rage_VM_param_432 = json.encode(u65)

	writeFile("/data/user/0/com.sandboxol.blockymods.channel.official/app_resources/config.json", Rage_VM_param_432)
end
function GMSetting.refreshTab(p122)
	p122.tvTab = p122:getChildWindowByName("GMButton", GUIType.StaticText)

	if tvTab then
		tvTab:SetBackgroundColor(Color.BLACK)
	end

	GUIGMControlPanel:selectTab(p122.name)
	p122.tvTab:SetBackgroundColor({
		0,
		0.392,
		0,
		1
	})
	tvTab = p122.tvTab
end

GMSetting:addTab1("Hack")

if not u5() then
	GMSetting:addItem1("Hack", "^FFFFFFUnlimited Jumps", "unlimitedJumps")
	GMSetting:addItem1("Hack", "^FFFFFFReach", "Reach")
	GMSetting:addItem1("Hack", "^FFFFFFBowSpeed", "BowSpeed")
	GMSetting:addItem1("Hack", "^FFFFFFNo Click Delay", "BanClickCD")
	GMSetting:addItem1("Hack", "^FFFFFFFast Break", "FustBreakBlockMode")
	GMSetting:addItem1("Hack", "^FFFFFFFree Camera", "Freecam")
	GMSetting:addItem1("Hack", "^FFFFFFDevFly", "DevFlyI")
	GMSetting:addItem1("Hack", "^FFFFFFHigh Jump", "SettingLongjump")
	GMSetting:addItem1("Hack", "^FFFFFFSpeed", "SpeedManager")
	GMSetting:addItem1("Hack", "^FFFFFFMultiple Place Block", "quickblock")
	GMSetting:addItem1("Hack", "^FFFFFFBlink", "BlinkOP")
	GMSetting:addItem1("Hack", "^FFFFFFTracer", "Tracer")
	GMSetting:addItem1("Hack", "^FFFFFFHitBox", "HitBox")
	GMSetting:addItem1("Hack", "^FFFFFFParachute", "startParachute")
	GMSetting:addItem1("Hack", "^FFFFFFJetPack", "JetPack")
	GMSetting:addItem1("Hack", "^FFFFFFShowHp", "Test03")
	GMSetting:addItem1("Hack", "^FFFFFFScaffold", "Scaffold")
	GMSetting:addItem1("Hack", "^FFFFFFNoclip", "Noclip")
	GMSetting:addItem1("Hack", "^FFFFFFAirSpeed", "LongJump")
	GMSetting:addItem1("Hack", "^FFFFFFSharpFly", "SharpFly")
	GMSetting:addItem1("Hack", "^FFFFFFAutoRespawn", "autoresp")
	GMSetting:addItem1("Hack", "^FFFFFFNo Fall Damage", "NoFallDamage")
	GMSetting:addItem1("Hack", "^FFFFFFVisual Break Blocks", "breakclick")
	GMSetting:addItem1("Hack", "^FFFFFFAutoClick", "AutoClicker")
	GMSetting:addItem1("Hack", "^FFFFFFRespawn", "nrespawn")
end

GMSetting:addTab1("Safe Cheats")
GMSetting:addItem1("Safe Cheats", "^FFFFFFNo Click Delay", "BanClickCD")
GMSetting:addItem1("Safe Cheats", "^FFFFFFAimBot", "AimBot")
GMSetting:addItem1("Safe Cheats", "^FFFFFFESP", "esp")
GMSetting:addItem1("Safe Cheats", "^FFFFFFAuto KnockBack", "knockback")
GMSetting:addItem1("Safe Cheats", "^FFFFFFGun TriggerBot", "GunAimBot")
GMSetting:addItem1("Safe Cheats", "^FFFFFFAttackButton", "atk")
GMSetting:addItem1("Safe Cheats", "^FFFFFFMultiple Place Block", "quickblock")
GMSetting:addItem1("Safe Cheats", "^FFFFFFShowHp", "Test03")
GMSetting:addItem1("Safe Cheats", "^FFFFFFTracer", "Tracer")
GMSetting:addItem1("Safe Cheats", "^FFFFFFVisual Break Blocks", "breakclick")
GMSetting:addItem1("Safe Cheats", "^FFFFFFESP 2D BOX", "esp2d")
GMSetting:addItem1("Safe Cheats", "^FFFFFFESP 3D BOX", "esp3d")
GMSetting:addItem1("Safe Cheats", "^FFFFFFAnti Knockback", "AntiKnockBack")
GMSetting:addTab1("Effects")
GMSetting:addItem1("Effects", "^FFFFFFNoHurtEffect", "NoHurtEffect")
GMSetting:addItem1("Effects", "^FFFFFFChangeNick", "ChangeNick")
GMSetting:addItem1("Effects", "^FFFFFFNo FPS limit", "fpslimit")
GMSetting:addItem1("Effects", "^FFFFFFWWE_Camera", "WWE_Camera")
GMSetting:addItem1("Effects", "^FFFFFFRunFile", "RunFile")
GMSetting:addItem1("Effects", "^FFFFFFRunCode", "RunScript")
GMSetting:addItem1("Effects", "^FFFFFFChangeActorForMe", "ChangeActorForMe")
GMSetting:addItem1("Effects", "^FFFFFFActiveSmoothFly", "smoothfly")
GMSetting:addItem1("Effects", "^FFFFFFSpinPlayer", "SpinPlayer")
GMSetting:addItem1("Effects", "^FFFFFFEmoteFreeze", "emotefreeze")
GMSetting:addItem1("Effects", "^FFFFFFBlock Xray", "blockxray")
GMSetting:addItem1("Effects", "^FFFFFFUnlimited gcubes", "gcubes")
GMSetting:addItem1("Effects", "^FFFFFFD-pad Jump", "dpadj")
GMSetting:addItem1("Effects", "^FFFFFFFast Throw", "FastThrow")
GMSetting:addItem1("Effects", "^FFFFFFShow durability", "showDurability")

if u5() then
	GMSetting:addItem1("Effects", "Open bedwar editor", "openBwEditTool")
end

GMSetting:addTab1("ActionState")
GMSetting:addItem1("ActionState", "^FFFFFFLying ", "lying")
GMSetting:addItem1("ActionState", "^FFFFFFSit", "sit")
GMSetting:addItem1("ActionState", "^FFFFFFSit2", "sit2")
GMSetting:addItem1("ActionState", "^FFFFFFFly", "flyg")
GMSetting:addItem1("ActionState", "^FFFFFFSwim", "swim")
GMSetting:addItem1("ActionState", "^FFFFFFClimb", "climb")
GMSetting:addItem1("ActionState", "^FFFFFFClimb2", "climb2")
GMSetting:addItem1("ActionState", "^FFFFFFFloat", "float")
GMSetting:addItem1("ActionState", "^FFFFFFSneaky", "sneaky")
GMSetting:addItem1("ActionState", "^FFFFFFRun", "run")
GMSetting:addTab1("CustomSky")
GMSetting:addItem1("CustomSky", "^FFFFFFNight", "Night")
GMSetting:addItem1("CustomSky", "^FFFFFFDay", "Day")
GMSetting:addItem1("CustomSky", "^FFFFFFEvening", "Evening")
GMSetting:addTab1("SkinChanger")
GMSetting:addItem1("SkinChanger", "^FFFFFFParachute Wings", "ParachuteWing")
GMSetting:addTab1("Special")
GMSetting:addItem1("Special", "^FFFFFFSetTime", "SetTime")
GMSetting:addItem1("Special", "^FFFFFFDay", "ChangeTimeD")
GMSetting:addItem1("Special", "^FFFFFFNight", "ChangeTimeN")
GMSetting:addItem1("Special", "^FFFFFFStart/Stop cycle", "StartTime")
GMSetting:addItem1("Special", "^FFFFFFSetYaw", "setYaw")
GMSetting:addItem1("Special", "^FFFFFFSpawnNPC", "SpawnNPC")
GMSetting:addItem1("Special", "^FFFFFFSpawnItem", "SpawnItem")
GMSetting:addItem1("Special", "^FFFFFFSetBlockToAir", "SetBlockToAir")
GMSetting:addItem1("Special", "^FFFFFFSpawnBlock", "SpawnBlock")
GMSetting:addItem1("Special", "^FFFFFFSpawnCar", "spawnCar")
GMSetting:addItem1("Special", "^FFFFFFSpYaw", "SpYaw")
GMSetting:addItem1("Special", "^FFFFFFSpYawSet", "SpYawSet")
GMSetting:addItem1("Special", "^FFFFFFChangeHair", "ChangeHair")
GMSetting:addItem1("Special", "^FFFFFFChangeFace", "ChangeFace")
GMSetting:addItem1("Special", "^FFFFFFChangeTops", "ChangeTops")
GMSetting:addItem1("Special", "^FFFFFFChangePants", "ChangePants")
GMSetting:addItem1("Special", "^FFFFFFChangeWing", "ChangeWing")
GMSetting:addItem1("Special", "^FFFFFFChangeScarf", "ChangeScarf")
GMSetting:addItem1("Special", "^FFFFFFChangeGlasses", "ChangeGlasses")
GMSetting:addItem1("Special", "^FFFFFFChangeShoes", "ChangeShoes")
GMSetting:addItem1("Special", "^FFFFFFChangeHat", "ChangeHat")
GMSetting:addItem1("Special", "^FFFFFFChangeHat(Dec)", "ChangeDecHat")
GMSetting:addItem1("Special", "^FFFFFFChangeTail", "ChangeTail")
GMSetting:addItem1("Special", "^FFFFFFChangeHand", "ChangeHand")
GMSetting:addItem1("Special", "^FFFFFFChangeCrown", "ChangeCrown")
GMSetting:addItem1("Special", "^FFFFFFChangeWingFlag", "ChangeWingFlag")
GMSetting:addItem1("Special", "^FFFFFFChangeFootHalo", "ChangeFootHalo")
GMSetting:addItem1("Special", "^FFFFFFChangeBackEffect", "ChangeBackEffect")
GMSetting:addItem1("Special", "^FFFFFFChangeHeadEffect", "ChangeHeadEffect")
GMSetting:addItem1("Special", "^FFFFFFChangeBag", "ChangeBag")
GMSetting:addItem1("Special", "^FFFFFFChangeSuit", "ChangeSuit")
GMSetting:addItem1("Special", "^FFFFFFChangeTrailing", "ChangeTrailing")
GMSetting:addItem1("Special", "^FFFFFFChangeSurrounding", "ChangeSurrounding")
GMSetting:addItem1("Special", "^FFFFFFCreateGUIDEArrow", "CreateGUIDEArrow")
GMSetting:addItem1("Special", "^FFFFFFDelAllGUIDEArrow", "DelAllGUIDEArrow")
GMSetting:addItem1("Special", "^FFFFFFEasyWay", "EasyWay")
GMSetting:addItem1("Special", "^FFFFFFWatchMode", "WatchMode")
GMSetting:addItem1("Special", "^FFFFFFCustomDialogBuilder", "createCustomDialogFromInput")
GMSetting:addItem1("Special", "^FFFFFFSelectSkinById", "selectSkinById")
GMSetting:addTab1("Credits")
GMSetting:addItem1("Credits", "^FF0000INFO", "jhdhdh")
GMSetting:addItem1("Credits", "^00FFDDName", "CustomBackvjkground")
GMSetting:addItem1("Credits", "^00FFDDDiscord", "CustomBackvjkground")
GMSetting:addItem1("Credits", "^00FFDDYoutube", "CustomBackvjkground")
GMSetting:addItem1("Credits", "", "")
GMSetting:addItem1("Credits", "^00FFDDPanel Creator ->", "CustomBackvjkground")
GMSetting:addItem1("Credits", "^008F39Eternal", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39eternalhacker", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39Link (click)", "eternal")
GMSetting:addItem1("Credits", "", "")
GMSetting:addItem1("Credits", "^00FFDDBypass Author ->", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39RustyKoper", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39rustykoper", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39Link (click)", "koper")
GMSetting:addItem1("Credits", "", "")
GMSetting:addItem1("Credits", "^00FFDDApk Bypasser ->", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39BHT", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39bhthacker", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39@BHT_hacker", "changeicoufn")
GMSetting:addItem1("Credits", "", "")
GMSetting:addItem1("Credits", "^00FFDDHelper ->", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39DisabilityBG", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39disabilitybgnewacc_77950", "changeicoufn")
GMSetting:addItem1("Credits", "^008F39@Disability_BG", "changeicoufn")
GMSetting:addTab1("Panel")
GMSetting:addItem1("Panel", "^FFFFFFRemovePanel", "removePanel")
GMSetting:addItem1("Panel", "^FFFFFFHide/Show GM", "HideShowGM")
GMSetting:addItem1("Panel", "^FFFFFFRestart the game", "updgame")
GMSetting:addItem1("Panel", "^FFFFFFMovable panel", "movPane")
GMSetting:addItem1("Panel", "^FFFFFFDestroy All Buttons", "DestroyButtonsSystem")
GMSetting:addTab1("Discord/Updates")
GMSetting:addItem1("Discord/Updates", "^FFFFFFJoin Our Discord Server", "discord")
customzation = "Customization"

function addCuFuncs()
	GMSetting:addTab1(customzation)
	GMSetting:addItem1(customzation, "add function", "addCuFunc")
	GMSetting:addItem1(customzation, "remove function", "removeCuFunc")
	GMSetting:addItem1(customzation, "remove all function", "removeAllCuFunc")
	GMSetting:addItem1(customzation, "enable all", "enableAll")
	GMSetting:addItem1(customzation, "", "")

	local Rage_VM_param_434, Rage_VM_param_435, Rage_VM_param_436 = ipairs(functions)

	while true do
		local Rage_VM_param_437

		Rage_VM_param_436, Rage_VM_param_437 = Rage_VM_param_434(Rage_VM_param_435, Rage_VM_param_436)

		if not Rage_VM_param_436 then
			break
		end

		GMSetting:addItem1(customzation, GMSetting:getNameByFunc(Rage_VM_param_437), Rage_VM_param_437)
	end
end

addCuFuncs()

function GMHelper.enableGM(_)
	if GUIGMControlPanel then
		return
	end

	GUIGMControlPanel = UIHelper.newEngineGUILayout("GUIGMControlPanel", "GMControlPanel.json")
	GUIGMControlPanel:hide()
	GUIGMMain = UIHelper.newEngineGUILayout("GUIGMMain", "GMMain.json")
	GUIGMMain:show()

	local Rage_VM_param_439 = ClientHelper.getBoolForKey("g1008_isOpenEventDialog", false)

	GUIGMMain:changeOpenEventDialog(Rage_VM_param_439)

	if GMSetting.addItemGMItems then
		GMSetting:addItemGMItems()
		GMSetting.addItemGMItems = nil
	end
end

local engine_clientUiLayoutGUIGMControlPanel = require("engine_client.ui.layout.GUIGMControlPanel")
local u70 = class("GUIGMMain", IGUILayout)

function engine_clientUiLayoutGUIGMControlPanel.show(p124)
	p124.super.show(p124)
	UIHelper.showOpenAnim(p124)
	p124.edInput = p124:getChildWindow("GMControlPanel-Input-Edit", GUIType.Edit)

	if not p124.eraseButton then
		p124.eraseButton = GUIManager:createGUIWindow(GUIType.Button, "EraseButton")
		p124.eraseButton:SetWidth({
			0,
			100
		})
		p124.eraseButton:SetHeight({
			0,
			40
		})
		p124.eraseButton:SetXPosition({
			1,
			-270
		})
		p124.eraseButton:SetYPosition({
			0,
			60
		})
		p124.eraseButton:SetText("Erase")
		p124.eraseButton:SetBackgroundColor({
			1,
			0,
			0,
			1
		})
		p124.edInput:AddChildWindow(p124.eraseButton)
		p124.eraseButton:registerEvent(GUIEvent.ButtonClick, function()
			p124.edInput:SetText("")
			SoundUtil.playSound(70)
		end)
	end

	if not p124.copyButton then
		p124.copyButton = GUIManager:createGUIWindow(GUIType.Button, "CopyButton")
		p124.copyButton:SetWidth({
			0,
			100
		})
		p124.copyButton:SetHeight({
			0,
			40
		})
		p124.copyButton:SetXPosition({
			1,
			-390
		})
		p124.copyButton:SetYPosition({
			0,
			60
		})
		p124.copyButton:SetText("Copy")
		p124.copyButton:SetBackgroundColor({
			0,
			0,
			1,
			1
		})
		p124.copyButton:SetLevel(1)
		p124.edInput:AddChildWindow(p124.copyButton)
		p124.copyButton:registerEvent(GUIEvent.ButtonClick, function()
			local Text = p124.edInput:GetText()

			ClientHelper.onSetClipboard(Text)
			SoundUtil.playSound(70)
		end)
	end

	if not p124.enterButton then
		p124.enterButton = GUIManager:createGUIWindow(GUIType.Button, "EnterButton")
		p124.enterButton:SetWidth({
			0,
			100
		})
		p124.enterButton:SetHeight({
			0,
			40
		})
		p124.enterButton:SetXPosition({
			1,
			-150
		})
		p124.enterButton:SetYPosition({
			0,
			60
		})
		p124.enterButton:SetText("Enter")
		p124.enterButton:SetBackgroundColor({
			0,
			0.5,
			0,
			1
		})
		p124.edInput:AddChildWindow(p124.enterButton)
		p124.enterButton:registerEvent(GUIEvent.ButtonClick, function()
			p124:inputText()
			SoundUtil.playSound(70)
		end)
	end
end
function GMHelper.GMShow(_)
	local panelBtn = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-GM1")
	panelBtn:SetHorizontalAlignment(HorizontalAlignment.Center)
	panelBtn:SetVerticalAlignment(VerticalAlignment.Center)
	panelBtn:SetHeight({ 0, 70 })
	panelBtn:SetWidth({ 0, 70 })
	panelBtn:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(panelBtn)
	panelBtn:SetVisible(true)
	panelBtn:SetYPosition({0, -65})
	panelBtn:SetXPosition({0, 385})
	panelBtn:SetNormalImage("set:gui_inventory_icon.json image:icon_bookrack")
	panelBtn:SetPushedImage("set:gui_inventory_icon.json image:icon_bookrack")
	panelBtn:registerEvent(GUIEvent.ButtonClick, function()
		isTest = true
		GUIGMControlPanel:show()
		LuaTimer:scheduleTimer(function() end, 5, 100)
		isTest = false
	end)
end
function GMHelper.openInput(_, p127, p128)
	if type(p127) ~= "table" then
		return
	end

	local Rage_VM_param_447, Rage_VM_param_448, Rage_VM_param_449 = pairs(p127)

	repeat
		local Rage_VM_param_450

		Rage_VM_param_449, Rage_VM_param_450 = Rage_VM_param_447(Rage_VM_param_448, Rage_VM_param_449)

		if not Rage_VM_param_449 then
			GUIGMControlPanel:openInput(p127, p128)

			return
		end
	until type(Rage_VM_param_450) ~= "string"

	if isClient then
		assert(true, "param need string type")
	end
end
function GMSetting.changeColorByFunction(_, p130, p131)
	local Rage_VM_param_456 = p131

	if p131 then
		Rage_VM_param_456 = {
			0,
			0.392,
			0,
			1
		}
	end

	if not Rage_VM_param_456 then
		Rage_VM_param_456 = Color.BLACK
	end

	SoundUtil.playSound(not p131 and 7 or 70)

	local Rage_VM_param_457, Rage_VM_param_458, Rage_VM_param_459 = pairs(t4)

	while true do
		local Rage_VM_param_460

		Rage_VM_param_459, Rage_VM_param_460 = Rage_VM_param_457(Rage_VM_param_458, Rage_VM_param_459)

		if not Rage_VM_param_459 then
			break
		end

		local Rage_VM_param_461, Rage_VM_param_462, Rage_VM_param_463 = pairs(Rage_VM_param_460.items)

		while true do
			local Rage_VM_param_464

			Rage_VM_param_463, Rage_VM_param_464 = Rage_VM_param_461(Rage_VM_param_462, Rage_VM_param_463)

			if not Rage_VM_param_463 then
				break
			end

			if p130 == Rage_VM_param_464.func then
				Rage_VM_param_464.color = Rage_VM_param_456
			end
		end
	end

	local _GUIGMControlPanel = GUIGMControlPanel

	if _GUIGMControlPanel then
		_GUIGMControlPanel = GUIGMControlPanel.adapter
	end

	if _GUIGMControlPanel then
		GUIGMControlPanel.adapter:notifyDataChange()
	end
end
function GMHelper.callCommand(p132, p133, ...)
	local Rage_VM_param_468 = p133 == "addCuFunc"

	if not Rage_VM_param_468 then
		Rage_VM_param_468 = p133 == "removeCuFunc"

		if not Rage_VM_param_468 then
			Rage_VM_param_468 = p133 == "enableAll"
		end
	end

	local _togaddCuFunc = togaddCuFunc

	if _togaddCuFunc then
		_togaddCuFunc = not Rage_VM_param_468
	end

	if _togaddCuFunc then
		GMSetting:addItem1(customzation, GMSetting:getNameByFunc(p133), p133)
		table.insert(functions, p133)
		updateConfig()
		GMHelper:callCommand("addCuFunc")

		return
	end

	local _togremoveCuFunc = togremoveCuFunc

	if _togremoveCuFunc then
		_togremoveCuFunc = not Rage_VM_param_468
	end

	if _togremoveCuFunc then
		GMSetting:subItem(customzation, GMSetting:getNameByFunc(p133))

		local Rage_VM_param_471, Rage_VM_param_472, Rage_VM_param_473 = ipairs(functions)

		while true do
			local Rage_VM_param_474

			Rage_VM_param_473, Rage_VM_param_474 = Rage_VM_param_471(Rage_VM_param_472, Rage_VM_param_473)

			if not Rage_VM_param_473 then
				break
			end

			if Rage_VM_param_474 == p133 then
				table.remove(functions, Rage_VM_param_473)
			end
		end

		updateConfig()
		GMHelper:callCommand("removeCuFunc")

		return
	end

	local Rage_VM_param_475 = p132[p133]

	if type(Rage_VM_param_475) == "function" then
		Rage_VM_param_475(p132, ...)
	end

	GMSetting:changeColorByFunction(p133, _G["tog" .. p133], ...)

	local Rage_VM_param_476 = createdButtons[p133]

	if Rage_VM_param_476 then
		Rage_VM_param_476 = createdButtons[p133].gui
	end

	if Rage_VM_param_476 then
		changeToastBg(p133)
	end

	local _ = {
		name = p133,
		params = { ... }
	}
end
function GMHelper.callItem(_, p135)
	GMHelper:callCommand(p135)
end

local n19 = 65

ButtonCounter = 0
XYZ_BTN_OFFSET = 0
createdButtons = {}
totalBtns = 0

function tmpToast(p136, p137)
	local Rage_VM_param_483 = createdButtons[p137]

	if Rage_VM_param_483 then
		Rage_VM_param_483 = createdButtons[p137].id
	end

	if Rage_VM_param_483 then
		return
	end

	ButtonCounter = ButtonCounter + 1
	XYZ_BTN_OFFSET = XYZ_BTN_OFFSET + 1

	local u484 = "RageBtnsSys" .. tostring(ButtonCounter)
	local Rage_VM_param_485 = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-" .. u484)

	Rage_VM_param_485:SetText(p136)
	Rage_VM_param_485:SetHorizontalAlignment(HorizontalAlignment.Left)
	Rage_VM_param_485:SetVerticalAlignment(HorizontalAlignment.Top)
	Rage_VM_param_485:SetVisible(true)
	Rage_VM_param_485:SetXPosition({
		0,
		15
	})
	Rage_VM_param_485:SetHeight({
		0,
		45
	})
	Rage_VM_param_485:SetBackgroundColor(Color.BLUE)
	Rage_VM_param_485:SetWidth({
		0,
		Rage_VM_param_485:GetTextWidth() + 25
	})
	Rage_VM_param_485:setEnableLongTouch(true)
	LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1436 = _G["tog" .. p137]

		if Rage_VM_param_1436 then
			Rage_VM_param_1436 = {
				0,
				0.392,
				0,
				1
			}
		end

		if not Rage_VM_param_1436 then
			Rage_VM_param_1436 = {
				0,
				0,
				0,
				0.4
			}
		end

		GUIManager:getWindowByName("GUIRoot-" .. u484):SetBackgroundColor(Rage_VM_param_1436)
	end, 105, -1)
	Rage_VM_param_485:SetYPosition({
		0,
		n19 + (XYZ_BTN_OFFSET - 1) * 50
	})
	Rage_VM_param_485:registerEvent(GUIEvent.ButtonClick, function()
		GMHelper:callItem(p137)
	end)

	local _createdButtons = createdButtons
	local _ButtonCounter = ButtonCounter

	_createdButtons[p137] = {
		id = true,
		idd = _ButtonCounter,
		gui = Rage_VM_param_485
	}
	totalBtns = totalBtns + 1

	if totalBtns > 13 then
		local Rage_VM_param_488 = math.floor((totalBtns - 1) / 13)
		local Rage_VM_param_489 = (totalBtns - 1) % 13

		Rage_VM_param_485:SetXPosition({
			0,
			250 * Rage_VM_param_488
		})
		Rage_VM_param_485:SetYPosition({
			0,
			n19 + Rage_VM_param_489 * 50
		})
	end

	GUISystem.Instance():GetRootWindow():AddChildWindow(Rage_VM_param_485)

	return Rage_VM_param_485
end
function createButton(p138, p139)
	tmpToast(p138, p139)
end
function changeToastBg(p140)
	local Rage_VM_param_493 = _G["tog" .. p140]

	if Rage_VM_param_493 then
		Rage_VM_param_493 = {
			0,
			0.392,
			0,
			1
		}
	end

	local Rage_VM_param_494 = Rage_VM_param_493 or nil

	if bg then
		createdButtons[p140].gui:SetBackgroundColor(Rage_VM_param_494)

		return
	end

	createdButtons[p140].gui:SetBackgroundColor({
		0,
		0,
		0,
		0.4
	})
end
function GMHelper.DestroyButtonsSystem(_)
	local Rage_VM_param_496, Rage_VM_param_497, Rage_VM_param_498 = pairs(t4)

	while true do
		local Rage_VM_param_499

		Rage_VM_param_498, Rage_VM_param_499 = Rage_VM_param_496(Rage_VM_param_497, Rage_VM_param_498)

		if not Rage_VM_param_498 then
			break
		end

		local Rage_VM_param_500, Rage_VM_param_501, Rage_VM_param_502 = pairs(Rage_VM_param_499.items)

		while true do
			local Rage_VM_param_503

			Rage_VM_param_502, Rage_VM_param_503 = Rage_VM_param_500(Rage_VM_param_501, Rage_VM_param_502)

			if not Rage_VM_param_502 then
				break
			end

			local Rage_VM_param_504 = createdButtons[Rage_VM_param_503.func]
			local Rage_VM_param_505 = Rage_VM_param_504

			if Rage_VM_param_504 then
				Rage_VM_param_505 = Rage_VM_param_504.gui
			end

			if Rage_VM_param_505 then
				GUISystem.Instance():GetRootWindow():RemoveChildWindow1(Rage_VM_param_504.gui)
			end
		end
	end

	local Rage_VM_param_506, Rage_VM_param_507, Rage_VM_param_508 = pairs(createdButtons)

	while true do
		Rage_VM_param_508 = Rage_VM_param_506(Rage_VM_param_507, Rage_VM_param_508)

		if not Rage_VM_param_508 then
			break
		end

		createdButtons[Rage_VM_param_508] = nil
	end

	totalBtns = 0
	ButtonCounter = ButtonCounter + 50
	XYZ_BTN_OFFSET = 0
end
function GMHelper.addCuFunc(_)
	if togremoveCuFunc then
		GMHelper:callCommand("removeCuFunc")
	end

	togaddCuFunc = not togaddCuFunc
end
function GMHelper.removeCuFunc(_)
	if togaddCuFunc then
		GMHelper:callCommand("addCuFunc")
	end

	togremoveCuFunc = not togremoveCuFunc
end
function GMHelper.removeAllCuFunc(_)
	togremoveAllCuFunc = false

	local t23 = {}
	local Rage_VM_param_513, Rage_VM_param_514, Rage_VM_param_515 = pairs(functions)

	while true do
		local Rage_VM_param_516

		Rage_VM_param_515, Rage_VM_param_516 = Rage_VM_param_513(Rage_VM_param_514, Rage_VM_param_515)

		if not Rage_VM_param_515 then
			break
		end

		local Rage_VM_param_517 = (function(p145)
			local Rage_VM_param_1449, Rage_VM_param_1450, Rage_VM_param_1451 = pairs(t4)

			repeat
				local g1452 = false
				local Rage_VM_param_1453

				Rage_VM_param_1451, Rage_VM_param_1453 = Rage_VM_param_1449(Rage_VM_param_1450, Rage_VM_param_1451)

				if Rage_VM_param_1451 then
					local Rage_VM_param_1454, Rage_VM_param_1455, Rage_VM_param_1456 = pairs(Rage_VM_param_1453.items)
					local Rage_VM_param_1457

					repeat
						Rage_VM_param_1456, Rage_VM_param_1457 = Rage_VM_param_1454(Rage_VM_param_1455, Rage_VM_param_1456)

						if not Rage_VM_param_1456 then
							g1452 = true
						end

						if g1452 then
							break
						end
					until p145 == Rage_VM_param_1457.func

					if not g1452 then
						return Rage_VM_param_1457.name
					end
				end
			until not g1452
		end)(Rage_VM_param_516)

		if Rage_VM_param_517 then
			(function(p146, p147)
				local Rage_VM_param_1439, Rage_VM_param_1440, Rage_VM_param_1441 = pairs(t4)

				repeat
					local g1442 = false

					while true do
						local Rage_VM_param_1443

						Rage_VM_param_1441, Rage_VM_param_1443 = Rage_VM_param_1439(Rage_VM_param_1440, Rage_VM_param_1441)

						if not Rage_VM_param_1441 then
							break
						end

						if p146 == Rage_VM_param_1443.name then
							local Rage_VM_param_1444, Rage_VM_param_1445, Rage_VM_param_1446 = pairs(Rage_VM_param_1443.items)

							repeat
								local Rage_VM_param_1447

								Rage_VM_param_1446, Rage_VM_param_1447 = Rage_VM_param_1444(Rage_VM_param_1445, Rage_VM_param_1446)

								if not Rage_VM_param_1446 then
									g1442 = true
								end

								if g1442 then
									break
								end
							until p147 == Rage_VM_param_1447.name

							if not g1442 then
								table.remove(Rage_VM_param_1443.items, Rage_VM_param_1446)
							end
						end

						if g1442 then
							break
						end
					end
				until not g1442
			end)(customzation, Rage_VM_param_517)
			table.insert(t23, Rage_VM_param_515)
		end
	end

	for i = #t23, 1, -1 do
		table.remove(functions, t23[i])
	end

	updateConfig()
end
function GMHelper.enableAll(_)
	togenableAll = not togenableAll

	local Rage_VM_param_520, Rage_VM_param_521, Rage_VM_param_522 = ipairs(functions)

	while true do
		local Rage_VM_param_523

		Rage_VM_param_522, Rage_VM_param_523 = Rage_VM_param_520(Rage_VM_param_521, Rage_VM_param_522)

		if not Rage_VM_param_522 then
			break
		end

		if togenableAll then
			if not _G["tog" .. Rage_VM_param_523] then
				GMHelper:callCommand(Rage_VM_param_523)
			end

			UIHelper.showToast("All On")
		else
			if _G["tog" .. Rage_VM_param_523] then
				GMHelper:callCommand(Rage_VM_param_523)
			end

			UIHelper.showToast("All Off")
		end
	end
end
function GMHelper.openDebug(_)
	CGame.Instance():toggleDebugMessageShown(true)
	GMHelper:moveDebugInfo(0, 0)
end
function GMHelper.closeDebug(_)
	CGame.Instance():toggleDebugMessageShown(false)
end
function GMHelper.moveDebugInfo(_, p152, p153)
	local num = tonumber(ClientHelper.getStringForKey("DebugInfoRenderOffsetX", "0"))
	local _tonumber = tonumber
	local _ClientHelper = ClientHelper
	local Rage_VM_param_532 = num or 0
	local Rage_VM_param_533 = _tonumber(_ClientHelper.getStringForKey("DebugInfoRenderOffsetY", "0")) or 0
	local Rage_VM_param_534 = Rage_VM_param_532 + p152
	local _ClientHelper2 = ClientHelper
	local Rage_VM_param_536 = Rage_VM_param_533 + p153

	_ClientHelper2.putStringForKey("DebugInfoRenderOffsetX", (tostring(Rage_VM_param_534)))
	ClientHelper.putStringForKey("DebugInfoRenderOffsetY", (tostring(Rage_VM_param_536)))
	ClientHelper.putFloatPrefs("DebugInfoRenderOffsetX", Rage_VM_param_534)
	ClientHelper.putFloatPrefs("DebugInfoRenderOffsetY", Rage_VM_param_536)
end

require("lfs")

local _ = require("misc")
local u73 = false

function ControlEditor()
	prevMainControlPosX = GUIManager:getWindowByName("Main-Control"):GetXPosition()
	prevMainControlPosY = GUIManager:getWindowByName("Main-Control"):GetYPosition()
	prevMainJumpPosX = GUIManager:getWindowByName("Main-Jump"):GetXPosition()
	prevMainJumpPosY = GUIManager:getWindowByName("Main-Jump"):GetYPosition()
	prevMainMovestatePosX = GUIManager:getWindowByName("Main-MoveState"):GetXPosition()
	prevMainMovestatePosY = GUIManager:getWindowByName("Main-MoveState"):GetYPosition()
	prevPlayerInfoPosX = GUIManager:getWindowByName("PlayerInfo"):GetXPosition()
	prevPlayerInfoPosY = GUIManager:getWindowByName("PlayerInfo"):GetYPosition()
	GUIManager:getWindowByName("Main-Control"):registerEvent(GUIEvent.TouchMove, function(p154)
		if u73 then
			local Rage_VM_param_1459 = GUIManager:getWindowByName("Main-Control")
			local y = GUISystem.Instance():GetRootWindow():GetPixelSize().y
			local y2 = Rage_VM_param_1459:GetPixelSize().y

			Rage_VM_param_1459:SetXPosition({
				0,
				p154.position.x - Rage_VM_param_1459:GetPixelSize().x / 2
			})
			Rage_VM_param_1459:SetYPosition({
				0,
				-(y - p154.position.y + y2 / 2) + y2
			})
		end
	end)
	GUIManager:getWindowByName("Main-Jump"):registerEvent(GUIEvent.TouchMove, function(p155)
		if u73 then
			local Rage_VM_param_1463 = GUIManager:getWindowByName("Main-Jump-Controls")
			local _ = Rage_VM_param_1463:GetXPosition()[2]
			local _ = Rage_VM_param_1463:GetYPosition()[2]
			local y = GUISystem.Instance():GetRootWindow():GetPixelSize().y
			local x = GUISystem.Instance():GetRootWindow():GetPixelSize().x
			local y3 = Rage_VM_param_1463:GetPixelSize().y
			local x2 = Rage_VM_param_1463:GetPixelSize().x

			Rage_VM_param_1463:SetXPosition({
				0,
				-(x - p155.position.x + x2 / 2) + x2
			})
			Rage_VM_param_1463:SetYPosition({
				0,
				-(y - p155.position.y + y3 / 2) + y3
			})
		end
	end)
	GUIManager:getWindowByName("Main-MoveState"):registerEvent(GUIEvent.TouchMove, function(p156)
		if u73 then
			local Rage_VM_param_1471 = GUIManager:getWindowByName("Main-MoveState")
			local _ = Rage_VM_param_1471:GetXPosition()[2]
			local _ = Rage_VM_param_1471:GetYPosition()[2]
			local y = GUISystem.Instance():GetRootWindow():GetPixelSize().y
			local x = GUISystem.Instance():GetRootWindow():GetPixelSize().x
			local y4 = Rage_VM_param_1471:GetPixelSize().y
			local x3 = Rage_VM_param_1471:GetPixelSize().x

			Rage_VM_param_1471:SetXPosition({
				0,
				-(x - p156.position.x + x3 / 2) + x3
			})
			Rage_VM_param_1471:SetYPosition({
				0,
				-(y - p156.position.y + y4 / 2) + y4
			})
		end
	end)
	GUIManager:getWindowByName("PlayerInfo"):registerEvent(GUIEvent.TouchMove, function(p157)
		if u73 then
			local _ = GUISystem.Instance():GetRootWindow():GetPixelSize().y
			local _ = GUISystem.Instance():GetRootWindow():GetPixelSize().x
			local _ = GUIManager:getWindowByName("PlayerInfo"):GetXPosition()[2]
			local _ = GUIManager:getWindowByName("PlayerInfo"):GetYPosition()[2]
			local x = GUIManager:getWindowByName("PlayerInfo"):GetPixelSize().x
			local y = GUIManager:getWindowByName("PlayerInfo"):GetPixelSize().y

			GUIManager:getWindowByName("PlayerInfo"):SetXPosition({
				0,
				p157.position.x - x / 2
			})
			GUIManager:getWindowByName("PlayerInfo"):SetYPosition({
				0,
				p157.position.y - y / 2 - 250
			})
		end
	end)
end
function GMHelper.ControlEditorm(_)
	togControlEditorm = not togControlEditorm
	GUIManager:getWindowByName("PlayerInfo"):SetTouchable(false)
	u73 = false
	GUIGMControlPanel:hide()
	UIHelper.showToast("Control editor is now disabled")

	if togControlEditorm then
		GUIManager:getWindowByName("PlayerInfo"):SetTouchable(true)
		u73 = true
		GUIGMControlPanel:hide()
		UIHelper.showToast("Control editor is now enabled, try move controls")
	end
end
function GMHelper.ControlEditorD(_)
	GMSetting:changeColorByFunction("ControlEditor", false)
	togControlEditor = false
	togControlEditorD = false
	u73 = false
	GUIManager:getWindowByName("PlayerInfo"):SetTouchable(false)
	UIHelper.showToast("Disabled")
end
function GMHelper.resetControlPos(_)
	togResetControlPos = false
	GUIManager:getWindowByName("Main-Control"):SetXPosition(prevMainControlPosX)
	GUIManager:getWindowByName("Main-Control"):SetYPosition(prevMainControlPosY)
	GUIManager:getWindowByName("Main-MoveState"):SetXPosition(prevMainMovestatePosX)
	GUIManager:getWindowByName("Main-MoveState"):SetYPosition(prevMainMovestatePosY)
	GUIManager:getWindowByName("Main-Jump"):SetXPosition(prevMainJumpPosX)
	GUIManager:getWindowByName("Main-Jump"):SetYPosition(prevMainJumpPosY)
	GUIManager:getWindowByName("PlayerInfo"):SetXPosition(prevPlayerInfoPosX)
	GUIManager:getWindowByName("PlayerInfo"):SetYPosition(prevPlayerInfoPosY)
end

local u74 = "GUICustomToolBw" .. os.time()

function GMHelper.openBwEditTool(_)
	if _G[u74] == nil then
		_G[u74] = UIHelper.newGameGUILayout("GUICustomSceneEditTool")
	end

	_G[u74]:show()
end

local function u75(p162, p163)
	values[p162] = p163
	updateConfig()
end

function GMHelper.SpeedValue(_)
	togSpeedValue = false
	GMHelper:openInput({ (tostring(values.speed)) }, function(p165)
		if tonumber(p165) then
			u75("speed", (tonumber(p165)))
			UIHelper.showToast("Successfully changed")

			return
		end

		UIHelper.showToast("Put a number")
	end)
end
function GMHelper.JumpValue(_)
	togJumpValue = false

	local _GMHelper = GMHelper
	local t24 = { (tostring(values.HighJump)) }

	_GMHelper:openInput({ Rage_VM_param_1(t24) }, function(p167)
		if tonumber(p167) then
			u75("HighJump", (tonumber(p167)))
			UIHelper.showToast("Successfully changed")

			return
		end

		UIHelper.showToast("Put a number")
	end)
end
function GMHelper.NoFallValue(_)
	togNoFallValue = false
	GMHelper:openInput({ (tostring(values.NoFall)) }, function(p169)
		if tonumber(p169) then
			u75("NoFall", (tonumber(p169)))
			UIHelper.showToast("Successfully changed")

			return
		end

		UIHelper.showToast("Put a number")
	end)
end
function GMHelper.HitBoxValue(_)
	togAimBotValue = false

	local _GMHelper = GMHelper
	local t25 = { (tostring(values.HitBox)) }

	_GMHelper:openInput({ Rage_VM_param_1(t25) }, function(p171)
		if tonumber(p171) then
			u75("HitBox", (tonumber(p171)))
			UIHelper.showToast("Successfully changed")

			return
		end

		UIHelper.showToast("Put a number")
	end)
end
function GMHelper.AimBotValue(_)
	togAimBotValue = false

	local _GMHelper = GMHelper
	local _tostring = tostring
	local openInput = _GMHelper.openInput
	local t26 = { _tostring(values.HitBox) }

	openInput(_GMHelper, { Rage_VM_param_1(t26) }, function(p173)
		if tonumber(p173) then
			u75("HitBox", (tonumber(p173)))
			UIHelper.showToast("Successfully changed")

			return
		end

		UIHelper.showToast("Put a number")
	end)
end
function GMHelper.ResetValues(_)
	togResetValues = false
	values = {}
	u68()
	updateConfig()
	UIHelper.showToast("Successfully resetted")
end

SelectedNews = nil
SelectedPage = 1

function GMHelper.openupdateinfo(_)
	local Rage_VM_param_559 = GUIManager:getWindowByName("BackGround")

	if Rage_VM_param_559 then
		Rage_VM_param_559:SetVisible(true)
	end

	if SelectedNews then
		GUIManager:getWindowByName("NewsScroll"):SetVisible(true)
		GUIManager:getWindowByName("BigCard"):SetVisible(true)
		GUIManager:getWindowByName("VideosScroll"):SetVisible(false)
		GUIManager:getWindowByName("InfosScroll"):SetVisible(false)
		GUIManager:getWindowByName("NewsDetailScroll_" .. SelectedNews):SetVisible(true)

		return
	end

	if SelectedPage == 1 then
		GUIManager:getWindowByName("NewsScroll"):SetVisible(true)
		GUIManager:getWindowByName("BigCard"):SetVisible(true)
		GUIManager:getWindowByName("VideosScroll"):SetVisible(false)
		GUIManager:getWindowByName("InfosScroll"):SetVisible(false)

		return
	end

	if SelectedPage == 2 then
		GUIManager:getWindowByName("NewsScroll"):SetVisible(false)
		GUIManager:getWindowByName("BigCard"):SetVisible(false)
		GUIManager:getWindowByName("VideosScroll"):SetVisible(true)
		GUIManager:getWindowByName("InfosScroll"):SetVisible(false)

		return
	end

	if SelectedPage == 3 then
		GUIManager:getWindowByName("NewsScroll"):SetVisible(false)
		GUIManager:getWindowByName("BigCard"):SetVisible(false)
		GUIManager:getWindowByName("VideosScroll"):SetVisible(false)
		GUIManager:getWindowByName("InfosScroll"):SetVisible(true)
	end
end
function GMHelper.UpdateInfoGUI(_)
	BackGround = GUIManager:createGUIWindow(GUIType.Window, "BackGround")
	BackGround:SetHorizontalAlignment(HorizontalAlignment.Center)
	BackGround:SetVerticalAlignment(VerticalAlignment.Top)
	BackGround:SetHeight({
		1,
		0
	})
	BackGround:SetWidth({
		1,
		0
	})
	BackGround:SetLevel(2)
	BackGround:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(BackGround)
	BackGround:SetBackgroundColor({
		0,
		0,
		0,
		1
	})
	BackGround:SetVisible(false)
	BackGround:SetXPosition({
		0,
		0
	})
	BackGround:SetYPosition({
		0,
		0
	})

	local u561 = GUIManager:createGUIWindow(GUIType.List, "NewsScroll")

	u561:SetWidth({
		1,
		0
	})
	u561:SetHeight({
		1,
		0
	})
	u561:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	u561:SetTouchable(true)
	u561:SetVisible(true)
	u561:SetMoveAble(true)
	u561:SetLevel(1)
	u561:SetXPosition({
		0,
		15
	})
	BackGround:AddChildWindow(u561)

	local n20 = 500
	local n21 = 330
	local u564 = n21 - 50
	local n22 = 20
	local Rage_VM_param_566 = GUIManager:createGUIWindow(GUIType.Window, "TopSpacer")

	Rage_VM_param_566:SetWidth({
		0,
		n20
	})
	Rage_VM_param_566:SetHeight({
		0,
		75
	})
	Rage_VM_param_566:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	u561:AddItem(Rage_VM_param_566)
	WebService.asyncGet("http://0.0.0.0:4466/news/list", {}, function(p177)
		local Rage_VM_param_1491 = not p177

		if not Rage_VM_param_1491 then
			Rage_VM_param_1491 = not p177.news
		end

		if Rage_VM_param_1491 then
			p177 = {
				news = {{
					order = 9999,
					title = "",
					image = ""
				}}
			}
		end

		newsData = p177

		local t27 = {}
		local Rage_VM_param_1493, Rage_VM_param_1494, Rage_VM_param_1495 = pairs(newsData.news)

		while true do
			local Rage_VM_param_1496

			Rage_VM_param_1495, Rage_VM_param_1496 = Rage_VM_param_1493(Rage_VM_param_1494, Rage_VM_param_1495)

			if not Rage_VM_param_1495 then
				break
			end

			table.insert(t27, Rage_VM_param_1496)
		end

		table.sort(t27, function(p178, p179)
			return (p178.order or 0) > (p179.order or 0)
		end)

		local Rage_VM_param_1497, Rage_VM_param_1498, Rage_VM_param_1499 = ipairs(t27)

		while true do
			local Rage_VM_param_1500

			Rage_VM_param_1499, Rage_VM_param_1500 = Rage_VM_param_1497(Rage_VM_param_1498, Rage_VM_param_1499)

			if not Rage_VM_param_1499 then
				break
			end

			local Rage_VM_param_1501 = Rage_VM_param_1500.title or "Unknown news"
			local Rage_VM_param_1502 = Rage_VM_param_1500.image or ""
			local u1503 = Rage_VM_param_1500.order or Rage_VM_param_1499
			local Rage_VM_param_1504 = GUIManager:createGUIWindow(GUIType.Window, "Card_" .. Rage_VM_param_1499)

			Rage_VM_param_1504:SetWidth({
				0,
				n20
			})
			Rage_VM_param_1504:SetHeight({
				0,
				n21
			})
			Rage_VM_param_1504:SetBackgroundColor({
				0.15,
				0.15,
				0.15,
				1
			})
			Rage_VM_param_1504:SetXPosition({
				0,
				15
			})
			Rage_VM_param_1504:SetLevel(1)

			local Rage_VM_param_1505 = GUIManager:createGUIWindow("UrlImage", "CardImg_" .. Rage_VM_param_1499)

			Rage_VM_param_1505:SetWidth({
				0,
				n20
			})
			Rage_VM_param_1505:SetHeight({
				0,
				u564
			})
			Rage_VM_param_1505:setChildMaterial(0)

			if Rage_VM_param_1502 ~= "" then
				Rage_VM_param_1505:setUrl(Rage_VM_param_1502)
			end

			Rage_VM_param_1504:AddChildWindow(Rage_VM_param_1505)

			local Rage_VM_param_1506 = GUIManager:createGUIWindow(GUIType.Button, "CardBtn_" .. Rage_VM_param_1499)

			Rage_VM_param_1506:SetWidth({
				0,
				n20
			})
			Rage_VM_param_1506:SetHeight({
				0,
				50
			})
			Rage_VM_param_1506:SetYPosition({
				0,
				u564
			})
			Rage_VM_param_1506:SetText(Rage_VM_param_1501)
			Rage_VM_param_1506:SetBackgroundColor({
				0.25,
				0.25,
				0.25,
				1
			})
			Rage_VM_param_1506:SetVisible(true)
			Rage_VM_param_1504:AddChildWindow(Rage_VM_param_1506)
			Rage_VM_param_1506:registerEvent(GUIEvent.ButtonClick, function()
				GMHelper:openNewsDetail(u1503)
				SelectedNews = u1503
			end)
			u561:AddItem(Rage_VM_param_1504)

			local Rage_VM_param_1507 = GUIManager:createGUIWindow(GUIType.Window, "Spacer_" .. Rage_VM_param_1499)

			Rage_VM_param_1507:SetWidth({
				0,
				n20
			})
			Rage_VM_param_1507:SetHeight({
				0,
				n22
			})
			Rage_VM_param_1507:SetBackgroundColor({
				0,
				0,
				0,
				0
			})
			u561:AddItem(Rage_VM_param_1507)
		end
	end)
	WebService.asyncGet("http://0.0.0.0:4466/news/list", {}, function(p180)
		local Rage_VM_param_1509 = not p180

		if not Rage_VM_param_1509 then
			Rage_VM_param_1509 = not p180.news
		end

		if Rage_VM_param_1509 then
			p180 = {
				news = {{
					order = 9999,
					title = "",
					image = ""
				}}
			}
		end

		newsData = p180

		local u1510 = nil
		local n23 = -1
		local Rage_VM_param_1512, Rage_VM_param_1513, Rage_VM_param_1514 = ipairs(newsData.news)

		while true do
			local Rage_VM_param_1515

			Rage_VM_param_1514, Rage_VM_param_1515 = Rage_VM_param_1512(Rage_VM_param_1513, Rage_VM_param_1514)

			if not Rage_VM_param_1514 then
				break
			end

			if n23 < Rage_VM_param_1515.order then
				n23 = Rage_VM_param_1515.order
				u1510 = Rage_VM_param_1515
			end
		end

		BigCard = GUIManager:createGUIWindow(GUIType.Window, "BigCard")
		BigCard:SetHorizontalAlignment(HorizontalAlignment.Left)
		BigCard:SetVerticalAlignment(VerticalAlignment.Center)
		BigCard:SetHeight({
			0,
			390
		})
		BigCard:SetWidth({
			0,
			600
		})
		BigCard:SetLevel(1)
		BigCard:SetTouchable(true)
		BigCard:SetXPosition({
			0,
			715
		})
		BackGround:AddChildWindow(BigCard)
		BigCard:SetBackgroundColor({
			0.15,
			0.15,
			0.15,
			1
		})
		BigCard:SetVisible(true)
		BigCardText = GUIManager:createGUIWindow(GUIType.StaticText, "BigCardText")
		BigCardText:SetHorizontalAlignment(HorizontalAlignment.Center)
		BigCardText:SetVerticalAlignment(VerticalAlignment.Top)
		BigCardText:SetTextHorzAlign(HorizontalAlignment.Center)
		BigCardText:SetHeight({
			0,
			50
		})
		BigCardText:SetWidth({
			0,
			600
		})
		BigCardText:SetLevel(1)
		BigCardText:SetTouchable(true)
		BigCardText:SetYPosition({
			0,
			-50
		})
		BigCard:AddChildWindow(BigCardText)
		BigCardText:SetBackgroundColor({
			0,
			0,
			0,
			1
		})
		BigCardText:SetVisible(true)
		BigCardText:SetText("IMPORTANT NEWS!")
		BigCardImage = GUIManager:createGUIWindow(GUIType.UrlImage, "BigCardImage")
		BigCardImage:SetHorizontalAlignment(HorizontalAlignment.Left)
		BigCardImage:SetVerticalAlignment(VerticalAlignment.Top)
		BigCardImage:SetHeight({
			0,
			340
		})
		BigCardImage:SetWidth({
			0,
			600
		})
		BigCardImage:SetLevel(1)
		BigCardImage:SetTouchable(true)
		BigCard:AddChildWindow(BigCardImage)
		BigCardImage:SetBackgroundColor({
			0.15,
			0.15,
			0.15,
			1
		})
		BigCardImage:SetVisible(true)
		BigCardImage:setChildMaterial(0)
		BigCardImage:setUrl(u1510.image)
		BigCardBtn = GUIManager:createGUIWindow(GUIType.Button, "BigCardBtn")
		BigCardBtn:SetHorizontalAlignment(HorizontalAlignment.Left)
		BigCardBtn:SetVerticalAlignment(VerticalAlignment.Bottom)
		BigCardBtn:SetHeight({
			0,
			50
		})
		BigCardBtn:SetWidth({
			0,
			600
		})
		BigCardBtn:SetLevel(1)
		BigCardBtn:SetTouchable(true)
		BigCard:AddChildWindow(BigCardBtn)
		BigCardBtn:SetBackgroundColor({
			0.25,
			0.25,
			0.25,
			1
		})
		BigCardBtn:SetVisible(true)
		BigCardBtn:SetText(u1510.title)
		BigCardBtn:registerEvent(GUIEvent.ButtonClick, function()
			GMHelper:openNewsDetail(u1510.order)
			SelectedNews = u1510.order
		end)
	end)

	local u567 = GUIManager:createGUIWindow(GUIType.List, "VideosScroll")

	u567:SetWidth({
		1,
		0
	})
	u567:SetHeight({
		1,
		0
	})
	u567:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	u567:SetTouchable(true)
	u567:SetVisible(false)
	u567:SetMoveAble(true)
	u567:SetLevel(1)
	u567:SetXPosition({
		0,
		15
	})
	BackGround:AddChildWindow(u567)

	local n24 = 3
	local n25 = 500
	local n26 = 330
	local u571 = n26 - 50
	local n27 = 20
	local u573 = n24 * n25 + (n24 - 1) * n27
	local Rage_VM_param_574 = GUIManager:createGUIWindow(GUIType.Window, "VideosTopSpacer")

	Rage_VM_param_574:SetWidth({
		0,
		u573
	})
	Rage_VM_param_574:SetHeight({
		0,
		75
	})
	Rage_VM_param_574:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	u567:AddItem(Rage_VM_param_574)
	WebService.asyncGet("http://0.0.0.0:4466/videos", {}, function(p181)
		local Rage_VM_param_1517 = not p181

		if not Rage_VM_param_1517 then
			Rage_VM_param_1517 = not p181.videos
		end

		if Rage_VM_param_1517 then
			p181 = {
				videos = {{
					order = 1,
					title = "",
					image = "",
					url = ""
				}}
			}
		end

		local t28 = {}
		local Rage_VM_param_1519, Rage_VM_param_1520, Rage_VM_param_1521 = pairs(p181.videos)

		while true do
			local Rage_VM_param_1522

			Rage_VM_param_1521, Rage_VM_param_1522 = Rage_VM_param_1519(Rage_VM_param_1520, Rage_VM_param_1521)

			if not Rage_VM_param_1521 then
				break
			end

			table.insert(t28, Rage_VM_param_1522)
		end

		table.sort(t28, function(p182, p183)
			return p182.order > p183.order
		end)

		local Rage_VM_param_1523 = nil
		local n28 = 0
		local n29 = 1
		local Rage_VM_param_1526, Rage_VM_param_1527, Rage_VM_param_1528 = ipairs(t28)

		while true do
			local Rage_VM_param_1529

			Rage_VM_param_1528, Rage_VM_param_1529 = Rage_VM_param_1526(Rage_VM_param_1527, Rage_VM_param_1528)

			if not Rage_VM_param_1528 then
				break
			end

			local u1530 = Rage_VM_param_1529

			if n28 == 0 then
				Rage_VM_param_1523 = GUIManager:createGUIWindow(GUIType.Window, "VideosRow_" .. n29)
				Rage_VM_param_1523:SetWidth({
					0,
					u573
				})
				Rage_VM_param_1523:SetHeight({
					0,
					n26
				})
				Rage_VM_param_1523:SetBackgroundColor({
					0,
					0,
					0,
					0
				})
				u567:AddItem(Rage_VM_param_1523)
				n29 = n29 + 1
			end

			local Rage_VM_param_1531 = GUIManager:createGUIWindow(GUIType.Window, "VideoCard_" .. Rage_VM_param_1528)

			Rage_VM_param_1531:SetWidth({
				0,
				n25
			})
			Rage_VM_param_1531:SetHeight({
				0,
				n26
			})
			Rage_VM_param_1531:SetBackgroundColor({
				0.15,
				0.15,
				0.15,
				1
			})

			local Rage_VM_param_1532 = n27

			Rage_VM_param_1531:SetXPosition({
				0,
				(n25 + Rage_VM_param_1532) * n28
			})

			local Rage_VM_param_1533 = GUIManager:createGUIWindow("UrlImage", "VideoCardImg_" .. Rage_VM_param_1528)

			Rage_VM_param_1533:SetWidth({
				0,
				n25
			})
			Rage_VM_param_1533:SetHeight({
				0,
				u571
			})
			Rage_VM_param_1533:setChildMaterial(0)
			Rage_VM_param_1533:setUrl(u1530.image)
			Rage_VM_param_1531:AddChildWindow(Rage_VM_param_1533)

			local Rage_VM_param_1534 = GUIManager:createGUIWindow(GUIType.Button, "VideoCardBtn_" .. Rage_VM_param_1528)

			Rage_VM_param_1534:SetWidth({
				0,
				n25
			})
			Rage_VM_param_1534:SetHeight({
				0,
				50
			})
			Rage_VM_param_1534:SetYPosition({
				0,
				u571
			})
			Rage_VM_param_1534:SetText(u1530.title)
			Rage_VM_param_1534:SetBackgroundColor({
				0.25,
				0.25,
				0.25,
				1
			})
			Rage_VM_param_1534:registerEvent(GUIEvent.ButtonClick, function()
				ClientHelper.callAppDataFunction("onWatchAudio", {
					url = u1530.url
				})
			end)
			Rage_VM_param_1531:AddChildWindow(Rage_VM_param_1534)
			Rage_VM_param_1523:AddChildWindow(Rage_VM_param_1531)
			n28 = n28 + 1

			if n28 >= n24 then
				n28 = 0

				local Rage_VM_param_1535 = GUIManager:createGUIWindow(GUIType.Window, "VideosSpacer_" .. Rage_VM_param_1528)

				Rage_VM_param_1535:SetWidth({
					0,
					u573
				})
				Rage_VM_param_1535:SetHeight({
					0,
					n27
				})
				Rage_VM_param_1535:SetBackgroundColor({
					0,
					0,
					0,
					0
				})
				u567:AddItem(Rage_VM_param_1535)
			end
		end
	end)

	local u575 = GUIManager:createGUIWindow(GUIType.List, "InfosScroll")

	u575:SetWidth({
		1,
		0
	})
	u575:SetHeight({
		1,
		0
	})
	u575:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	u575:SetTouchable(true)
	u575:SetVisible(false)
	u575:SetYPosition({
		0,
		75
	})
	u575:SetXPosition({
		0,
		15
	})
	BackGround:AddChildWindow(u575)

	local Rage_VM_param_576 = GUIManager:createGUIWindow(GUIType.ListItem, "InfosTextRow")

	Rage_VM_param_576:SetWidth({
		1,
		0
	})
	Rage_VM_param_576:SetHeight({
		1,
		0
	})
	u575:AddItem(Rage_VM_param_576)

	local Rage_VM_param_577 = GUIManager:createGUIWindow(GUIType.StaticText, "InfosText")

	Rage_VM_param_577:SetWidth({
		1,
		0
	})
	Rage_VM_param_577:SetHeight({
		1,
		0
	})
	Rage_VM_param_577:SetText("\r\nChangelog Rage_VM_param_1.0\r\n- Aggiunta la sezione News\r\n- Sezione Video con card\r\n- Sezione Infos scrollabile\r\n\r\nTutorial Base\r\n1. Apri la GUI\r\n2. Naviga tra le schede\r\n3. Clicca su un video o news per aprirlo\r\n\r\nNote di versione\r\nVersione 1.0 stabile, pronta per il rilascio pubblico. Correzioni di bug minori incluse.\r\n")
	Rage_VM_param_577:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	Rage_VM_param_577:SetTextHorzAlign(HorizontalAlignment.Left)
	Rage_VM_param_577:SetTextVertAlign(VerticalAlignment.Top)
	Rage_VM_param_577:SetWordWrap(true)
	Rage_VM_param_576:AddChildWindow(Rage_VM_param_577)

	function GMHelper.openNewsDetail(_, p185)
		local Rage_VM_param_1539 = GUIManager:getWindowByName("NewsDetailScroll_" .. p185)

		if Rage_VM_param_1539 then
			Rage_VM_param_1539:SetVisible(true)
		else
			local Rage_VM_param_1540 = GUIManager:createGUIWindow(GUIType.List, "NewsDetailScroll_" .. p185)

			Rage_VM_param_1540:SetWidth({
				1,
				0
			})
			Rage_VM_param_1540:SetHeight({
				1,
				0
			})
			Rage_VM_param_1540:SetBackgroundColor({
				0,
				0,
				0,
				1
			})
			Rage_VM_param_1540:SetTouchable(true)
			Rage_VM_param_1540:SetVisible(true)
			Rage_VM_param_1540:SetLevel(0)
			Rage_VM_param_1540:SetYPosition({
				0,
				60
			})
			Rage_VM_param_1540:SetXPosition({
				0,
				15
			})
			BackGround:AddChildWindow(Rage_VM_param_1540)

			local Rage_VM_param_1541 = GUIManager:createGUIWindow(GUIType.ListItem, "NewsDetailRow_" .. p185)

			Rage_VM_param_1541.newsId = p185
			Rage_VM_param_1541:SetWidth({
				1,
				0
			})
			Rage_VM_param_1541:SetHeight({
				1,
				0
			})
			Rage_VM_param_1540:AddItem(Rage_VM_param_1541)

			local Rage_VM_param_1542 = GUIManager:createGUIWindow(GUIType.StaticText, "NewsDetailText_" .. p185)

			Rage_VM_param_1542.newsId = p185
			Rage_VM_param_1542:SetWidth({
				1,
				0
			})
			Rage_VM_param_1542:SetHeight({
				1,
				0
			})
			Rage_VM_param_1542:SetBackgroundColor({
				0,
				0,
				0,
				0
			})
			Rage_VM_param_1542:SetTextHorzAlign(HorizontalAlignment.Left)
			Rage_VM_param_1542:SetTextVertAlign(VerticalAlignment.Top)
			Rage_VM_param_1542:SetWordWrap(true)
			Rage_VM_param_1541:AddChildWindow(Rage_VM_param_1542)
			WebService.asyncGet("http://0.0.0.0:4466/news/" .. p185, {}, function(p186)
				local Rage_VM_param_2048 = GUIManager:getWindowByName("NewsDetailText_" .. p185)

				if not Rage_VM_param_2048 then
					return
				end

				if p186 then
					p186 = p186.text
				end

				Rage_VM_param_2048:SetText(p186 or "Content not available")
			end)
		end
	end

	Title1 = GUIManager:createGUIWindow(GUIType.StaticText, "Title1")
	Title1:SetHorizontalAlignment(HorizontalAlignment.Center)
	Title1:SetVerticalAlignment(VerticalAlignment.Top)
	Title1:SetTextHorzAlign(HorizontalAlignment.Center)
	Title1:SetTextVertAlign(VerticalAlignment.Center)
	Title1:SetHeight({
		0,
		60
	})
	Title1:SetWidth({
		1,
		0
	})
	Title1:SetLevel(0)
	Title1:SetTouchable(true)
	BackGround:AddChildWindow(Title1)
	Title1:SetBackgroundColor({
		0.75,
		0.75,
		0.75,
		1
	})
	Title1:SetVisible(true)
	Title1:SetXPosition({
		0,
		0
	})
	Title1:SetYPosition({
		0,
		0
	})
	NewsBtn = GUIManager:createGUIWindow(GUIType.Button, "NewsBtn")
	NewsBtn:SetHorizontalAlignment(HorizontalAlignment.Center)
	NewsBtn:SetVerticalAlignment(VerticalAlignment.Top)
	NewsBtn:SetHeight({
		0,
		60
	})
	NewsBtn:SetWidth({
		0,
		60
	})
	NewsBtn:SetLevel(0)
	NewsBtn:SetTouchable(true)
	BackGround:AddChildWindow(NewsBtn)
	NewsBtn:SetText("News")
	NewsBtn:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	NewsBtn:SetVisible(true)
	NewsBtn:SetXPosition({
		0,
		-200
	})
	NewsBtn:SetYPosition({
		0,
		0
	})
	NewsBtn:registerEvent(GUIEvent.ButtonClick, function()
		if SelectedNews then
			GUIManager:getWindowByName("NewsDetailScroll_" .. SelectedNews):SetVisible(true)
		end

		if SelectedPage == 1 then
			return
		end

		SelectedPage = 1
		u561:SetVisible(true)
		BigCard:SetVisible(true)
		u567:SetVisible(false)
		u575:SetVisible(false)
	end)
	VideosBtn = GUIManager:createGUIWindow(GUIType.Button, "VideosBtn")
	VideosBtn:SetHorizontalAlignment(HorizontalAlignment.Center)
	VideosBtn:SetVerticalAlignment(VerticalAlignment.Top)
	VideosBtn:SetHeight({
		0,
		60
	})
	VideosBtn:SetWidth({
		0,
		60
	})
	VideosBtn:SetLevel(0)
	VideosBtn:SetTouchable(true)
	BackGround:AddChildWindow(VideosBtn)
	VideosBtn:SetText("Videos")
	VideosBtn:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	VideosBtn:SetVisible(true)
	VideosBtn:SetXPosition({
		0,
		0
	})
	VideosBtn:SetYPosition({
		0,
		0
	})
	VideosBtn:registerEvent(GUIEvent.ButtonClick, function()
		if SelectedPage == 2 then
			return
		end

		SelectedPage = 2
		u561:SetVisible(false)
		BigCard:SetVisible(false)
		u567:SetVisible(true)
		u575:SetVisible(false)

		if SelectedNews then
			GUIManager:getWindowByName("NewsDetailScroll_" .. SelectedNews):SetVisible(false)
		end
	end)
	InfosBtn = GUIManager:createGUIWindow(GUIType.Button, "InfosBtn")
	InfosBtn:SetHorizontalAlignment(HorizontalAlignment.Center)
	InfosBtn:SetVerticalAlignment(VerticalAlignment.Top)
	InfosBtn:SetHeight({
		0,
		60
	})
	InfosBtn:SetWidth({
		0,
		60
	})
	InfosBtn:SetLevel(0)
	InfosBtn:SetTouchable(true)
	BackGround:AddChildWindow(InfosBtn)
	InfosBtn:SetText("Infos")
	InfosBtn:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	InfosBtn:SetVisible(true)
	InfosBtn:SetXPosition({
		0,
		200
	})
	InfosBtn:SetYPosition({
		0,
		0
	})
	InfosBtn:registerEvent(GUIEvent.ButtonClick, function()
		if SelectedPage == 3 then
			return
		end

		SelectedPage = 3
		u561:SetVisible(false)
		BigCard:SetVisible(false)
		u567:SetVisible(false)
		u575:SetVisible(true)

		if SelectedNews then
			GUIManager:getWindowByName("NewsDetailScroll_" .. SelectedNews):SetVisible(false)
		end
	end)
	CloseOp = GUIManager:createGUIWindow(GUIType.Button, "CloseOp")
	CloseOp:SetHorizontalAlignment(HorizontalAlignment.Right)
	CloseOp:SetVerticalAlignment(VerticalAlignment.Top)
	CloseOp:SetHeight({
		0,
		60
	})
	CloseOp:SetWidth({
		0,
		60
	})
	CloseOp:SetLevel(0)
	CloseOp:SetTouchable(true)
	BackGround:AddChildWindow(CloseOp)
	CloseOp:SetText("X")
	CloseOp:SetBackgroundColor({
		1,
		0,
		0,
		1
	})
	CloseOp:SetVisible(true)
	CloseOp:SetXPosition({
		0,
		0
	})
	CloseOp:SetYPosition({
		0,
		0
	})
	HideOp = GUIManager:createGUIWindow(GUIType.Button, "HideOp")
	HideOp:SetHorizontalAlignment(HorizontalAlignment.Left)
	HideOp:SetVerticalAlignment(VerticalAlignment.Top)
	HideOp:SetHeight({
		0,
		60
	})
	HideOp:SetWidth({
		0,
		60
	})
	HideOp:SetLevel(0)
	HideOp:SetTouchable(true)
	BackGround:AddChildWindow(HideOp)
	HideOp:SetText("<")
	HideOp:SetBackgroundColor({
		0.5,
		0.5,
		0.5,
		1
	})
	HideOp:SetVisible(true)
	HideOp:SetXPosition({
		0,
		0
	})
	HideOp:SetYPosition({
		0,
		0
	})
	HideOp:registerEvent(GUIEvent.ButtonClick, function()
		if SelectedNews then
			GUIManager:getWindowByName("NewsDetailScroll_" .. SelectedNews):SetVisible(false)
			SelectedNews = nil

			return
		end

		local Rage_VM_param_1543 = SelectedPage == 1

		if not Rage_VM_param_1543 then
			Rage_VM_param_1543 = SelectedPage == 2

			if not Rage_VM_param_1543 then
				Rage_VM_param_1543 = SelectedPage == 3
			end
		end

		if Rage_VM_param_1543 then
			BackGround:SetVisible(false)
		end
	end)
	CloseOp:registerEvent(GUIEvent.ButtonClick, function()
		BackGround:SetVisible(false)
		SoundUtil.playSound(7)
	end)
end
function GMHelper.fastFlyUpDown(_)
	GUIManager:getWindowByName("Main-Up"):registerEvent(GUIEvent.TouchDown, function()
		if not u41 then
			u41 = LuaTimer:scheduleTimer(function()
				PlayerManager:getClientPlayer().Player:moveEntity((VectorUtil.newVector3(0, 0.4, 0)))
			end, 20, 9999999)
		end
	end)
	GUIManager:getWindowByName("Main-Up"):registerEvent(GUIEvent.TouchUp, function()
		if u41 then
			LuaTimer:cancel(u41)
			u41 = nil
		end
	end)
	GUIManager:getWindowByName("Main-Up"):registerEvent(GUIEvent.Release, function()
		if u41 then
			LuaTimer:cancel(u41)
			u41 = nil
		end
	end)
	GUIManager:getWindowByName("Main-Down"):registerEvent(GUIEvent.TouchDown, function()
		if not u42 then
			u42 = LuaTimer:scheduleTimer(function()
				local Rage_VM_param_2049 = PlayerManager:getClientPlayer()
				local Rage_VM_param_2050 = Rage_VM_param_2049

				if Rage_VM_param_2049 then
					Rage_VM_param_2050 = Rage_VM_param_2049.Player
				end

				if Rage_VM_param_2050 then
					Rage_VM_param_2049.Player:moveEntity((VectorUtil.newVector3(0, -0.4, 0)))

					return
				end

				print("Player is nil or invalid!")
			end, 20, 9999999)
		end
	end)
	GUIManager:getWindowByName("Main-Down"):registerEvent(GUIEvent.TouchUp, function()
		if u42 then
			LuaTimer:cancel(u42)
			u42 = nil
		end
	end)
	GUIManager:getWindowByName("Main-Down"):registerEvent(GUIEvent.Release, function()
		if u42 then
			LuaTimer:cancel(u42)
			u42 = nil
		end
	end)
end
function GMHelper.Gvariables(_)
	LuaTimer:schedule(function()
		if u5() then
			GUIManager:getWindowByName("Main-Main-Attack-Operate"):SetVisible(true)
			bypass()
		end
	end, 3000)
	LuaTimer:scheduleTimer(function()
		MsgSender.sendOtherTips(99999999, "   ")
	end, 300, 99999)

	local Rage_VM_param_580 = not u6()

	if Rage_VM_param_580 then
		Rage_VM_param_580 = not u5()
	end

	if Rage_VM_param_580 then
		GMSetting:addItem1("Hack", "^FFFFFFAimBot", "AimBot")
	end

	if u6() then
		GMSetting:addItem1("Hack", "^FFFFFFAimBot", "SBAimBot")
	end

	local Rage_VM_param_581 = not u5()

	if Rage_VM_param_581 then
		Rage_VM_param_581 = not u6()
	end

	if Rage_VM_param_581 then
		u43()
		GMHelper:bridge()
		GMSetting:addItem1("Hack", "^FFFFFFAttackButton", "atk")
		GMSetting:addItem1("Hack", "^FFFFFFBridgeButton", "bridgeV2")
		GMSetting:addItem1("Hack", "^FFFFFFRespawn In Death Place", "RespawnInSamePlace")
		GMSetting:addItem1("Hack", "^FFFFFFCannon", "Cannon")
		GMSetting:addItem1("Hack", "^FFFFFFTpClick", "TpClick")
		GMSetting:addItem1("Hack", "^FFFFFFInfinity Kill Aura", "spo")
	end

	if not u5() then
		GMSetting:addItem1("Hack", "^FFFFFFKill Aura", "spo2")
		GMSetting:addItem1("Hack", "^FFFFFFESP", "esp")
		GMSetting:addItem1("Hack", "^FFFFFFAuto KnockBack", "knockback")
		GMSetting:addItem1("Hack", "^FFFFFFGun TriggerBot", "GunAimBot")
		GMSetting:addItem1("Hack", "^FFFFFFESP 2D BOX", "esp2d")
		GMSetting:addItem1("Hack", "^FFFFFFESP 3D BOX", "esp3d")
		GMSetting:addItem1("Hack", "^FFFFFFDrop All Items", "dropitems")
		GMSetting:addItem1("Hack", "^FFFFFFControl Editor", "ControlEditorm")
		GMSetting:addItem1("Hack", "^FFFFFFAnti Knockback", "AntiKnockBack")
	end

	if CGame.Instance():getGameType() == "g1037" then
		LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1544 = PlayerManager:getPlayers()

			if not Rage_VM_param_1544 then
				Rage_VM_param_1544 = {}
			end

			local Rage_VM_param_1545, Rage_VM_param_1546, Rage_VM_param_1547 = ipairs(Rage_VM_param_1544)

			while true do
				local Rage_VM_param_1548

				Rage_VM_param_1547, Rage_VM_param_1548 = Rage_VM_param_1545(Rage_VM_param_1546, Rage_VM_param_1547)

				if not Rage_VM_param_1547 then
					break
				end

				local Player = Rage_VM_param_1548.Player

				if Player then
					local getEntityName = Player.getEntityName

					if #tostring(getEntityName(Player)) > 100 then
						Player:setShowName(" ")
					end
				end
			end
		end, 50, 99999)
	end

	local Rage_VM_param_582 = CGame.Instance():getGameType() == "g1072"

	if not Rage_VM_param_582 then
		Rage_VM_param_582 = CGame.Instance():getGameType() == "g1071"
	end

	if Rage_VM_param_582 then
		GMSetting:addTab1("Clanwars")
		GMSetting:addItem1("Clanwars", "^FF0000Tp to red flag", "tp_flag1")
		GMSetting:addItem1("Clanwars", "^0000FFTp to blue flag", "tp_flag2")
	end
end
function GMHelper.bwtab(_)
	if u5() then
		GMSetting:addItem1("Hack", "^FFFFFFEquipNinjaShoes", "ninja")
		GMSetting:addItem1("Hack", "^FFFFFFKill Aura", "spo2")
		GMSetting:addItem1("Hack", "^FFFFFFBowSpeed", "BowSpeed")
		GMSetting:addItem1("Hack", "^FFFFFFFast Break", "FustBreakBlockMode")
		GMSetting:addItem1("Hack", "^FFFFFFFree Camera", "Freecam")
		GMSetting:addItem1("Hack", "^FFFFFFMultiple Place Block", "quickblock")
		GMSetting:addItem1("Hack", "^FFFFFFAimBot", "AimBot")
		GMSetting:addItem1("Hack", "^FFFFFFNo Fall Damage", "NoFallDamage")
		GMSetting:addItem1("Hack", "^FFFFFFClick to break blocks", "breakclick")
		GMSetting:addItem1("Hack", "^FFFFFFTeleport To Mid", "TeleportMid")
		GMSetting:addItem1("Hack", "^FFFFFFFly", "BWFly")
		GMSetting:addItem1("Hack", "^FFFFFFTpClick", "TpClick")
		GMSetting:addItem1("Hack", "^FFFFFFESP", "esp")
		GMSetting:addItem1("Hack", "^FFFFFFAuto KnockBack", "knockback")
		GMSetting:addItem1("Hack", "^FFFFFFESP 2D BOX", "esp2d")
		GMSetting:addItem1("Hack", "^FFFFFFESP 3D BOX", "esp3d")
		GMSetting:addItem1("Hack", "^FFFFFFDrop All Items", "dropitems")
		GMSetting:addItem1("Hack", "^FFFFFFControl Editor", "ControlEditorm")
		GMSetting:addItem1("Hack", "^FFFFFFAnti Knockback", "AntiKnockBack")
	end
end
function GMHelper.GUIShortcuts(p190)
	flyButton = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-flyButton")
	flyButton:SetProperty("HorizontalAlignment", "Right")
	flyButton:SetProperty("VerticalAlignment", "Bottom")
	flyButton:SetLevel(50)
	flyButton:SetTouchable(true)
	GUIManager:getMainControl():AddChildWindow(flyButton)
	flyButton:SetProperty("Area", "{{-0.0125,0},{-0.334722,0},{-0.0125,54},{-0.334722,54}}")
	flyButton:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	flyButton:SetVisible(false)
	flyButton:SetNormalImage("set:fly_control.json image:luodi")
	flyButton:SetPushedImage("set:fly_control.json image:luodi")
	flyButton:SetArea(flyButton:GetXPosition(), flyButton:GetYPosition(), {
		0,
		70
	}, {
		0,
		70
	})
	flyButton:registerEvent(GUIEvent.ButtonClick, function()
		p190.fly = LuaTimer:scheduleTimer(function()
			if PlayerManager:getClientPlayer().Player:getIsFlying() then
				flyButton:SetVisible(false)

				return
			end

			flyButton:SetVisible(true)
			PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(0)
			LuaTimer:cancel(p190.fly)
		end, 50, -1)

		local Player = PlayerManager:getClientPlayer().Player
		local Rage_VM_param_1552 = VectorUtil.newVector3(0, 1.35, 0)

		Player:setAllowFlying(true)
		Player:setSpeedAdditionLevel(values.speed)
		Player:setFlying(true)
		Player:moveEntity(Rage_VM_param_1552)
	end)
	BwFly = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-BwFly")
	BwFly:SetProperty("HorizontalAlignment", "Right")
	BwFly:SetProperty("VerticalAlignment", "Bottom")
	BwFly:SetLevel(50)
	BwFly:SetTouchable(true)
	GUIManager:getMainControl():AddChildWindow(BwFly)
	BwFly:SetProperty("Area", "{{-0.0125,0},{-0.334722,0},{-0.0125,54},{-0.334722,54}}")
	BwFly:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	BwFly:SetVisible(false)
	BwFly:SetNormalImage("set:fly_control.json image:luodi")
	BwFly:SetPushedImage("set:fly_control.json image:luodi")
	BwFly:SetArea(BwFly:GetXPosition(), BwFly:GetYPosition(), {
		0,
		70
	}, {
		0,
		70
	})
	BwFly:registerEvent(GUIEvent.ButtonClick, function()
		p190.fly = LuaTimer:scheduleTimer(function()
			if PlayerManager:getClientPlayer().Player:getIsFlying() then
				BwFly:SetVisible(false)

				return
			end

			BwFly:SetVisible(true)
			PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(0)
			LuaTimer:cancel(p190.fly)
		end, 50, -1)

		local Player = PlayerManager:getClientPlayer().Player
		local Rage_VM_param_1554 = VectorUtil.newVector3(0, 1.35, 0)

		Player:setAllowFlying(true)
		Player:setSpeedAdditionLevel(200)
		Player:setFlying(true)
		Player:moveEntity(Rage_VM_param_1554)
	end)
	CenterToastg61 = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-xuy61")
	CenterToastg61:SetHorizontalAlignment(HorizontalAlignment.Center)
	CenterToastg61:SetVerticalAlignment(VerticalAlignment.Center)
	CenterToastg61:SetHeight({
		0,
		50
	})
	CenterToastg61:SetWidth({
		0,
		150
	})
	CenterToastg61:SetLevel(2)
	CenterToastg61:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(CenterToastg61)
	CenterToastg61:SetText("^FF0004AutoBridge")
	CenterToastg61:SetVisible(false)
	CenterToastg61:SetBackgroundColor({
		0,
		0,
		0,
		0.6
	})
	CenterToastg61:SetYPosition({
		0,
		-260
	})
	CenterToastg61:SetXPosition({
		0,
		-590
	})
	CenterToastg61:registerEvent(GUIEvent.ButtonClick, function()
		A = not A
		LuaTimer:cancel(p190.timer)
		CenterToastg61:SetBackgroundColor({
			0,
			0,
			0,
			0.6
		})
		UIHelper.showCenterToast("Disabled")

		if A then
			p190.timer = LuaTimer:scheduleTimer(function()
				local Rage_VM_param_2051 = PlayerManager:getClientPlayer().Player:getHeldItemId()
				local Rage_VM_param_2052 = Rage_VM_param_2051 >= 2441

				if Rage_VM_param_2052 then
					Rage_VM_param_2052 = Rage_VM_param_2051 <= 2444
				end

				if Rage_VM_param_2052 then
					CGame.Instance():handleTouchClick(1250, 411)
				end
			end, 10, 9E+23)
			CenterToastg61:SetBackgroundColor({
				0,
				1,
				0,
				0.6
			})
			UIHelper.showCenterToast("Enabled")
			GUIGMControlPanel:hide()
		end
	end)
	CenterToastg62 = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-xuy62")
	CenterToastg62:SetHorizontalAlignment(HorizontalAlignment.Center)
	CenterToastg62:SetVerticalAlignment(VerticalAlignment.Center)
	CenterToastg62:SetHeight({
		0,
		50
	})
	CenterToastg62:SetWidth({
		0,
		150
	})
	CenterToastg62:SetLevel(2)
	CenterToastg62:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(CenterToastg62)
	CenterToastg62:SetText("^FF0004AimBot")
	CenterToastg62:SetVisible(false)
	CenterToastg62:SetBackgroundColor({
		0,
		0,
		0,
		0.6
	})
	CenterToastg62:SetYPosition({
		0,
		-205
	})
	CenterToastg62:SetXPosition({
		0,
		-590
	})
	CenterToastg62:registerEvent(GUIEvent.ButtonClick, function()
		AIM = not AIM
		LuaTimer:cancel(p190.ja)
		CenterToastg62:SetBackgroundColor({
			0,
			0,
			0,
			0.6
		})
		UIHelper.showCenterToast("Disabled")

		if AIM then
			CenterToastg62:SetBackgroundColor({
				0,
				1,
				0,
				0.6
			})
			UIHelper.showCenterToast("Enabled")
			p190.ja = LuaTimer:scheduleTimer(function()
				local Rage_VM_param_2053 = PlayerManager:getClientPlayer()

				if Rage_VM_param_2053 then
					local Rage_VM_param_2054 = Rage_VM_param_2053.Player:getPosition()
					local Rage_VM_param_2055 = PlayerManager:getPlayers()
					local Rage_VM_param_2056 = Rage_VM_param_2053.Player:getTeamId()
					local n30 = 1e999
					local Rage_VM_param_2058 = nil
					local Rage_VM_param_2059, Rage_VM_param_2060, Rage_VM_param_2061 = pairs(Rage_VM_param_2055)

					while true do
						local Rage_VM_param_2062

						Rage_VM_param_2061, Rage_VM_param_2062 = Rage_VM_param_2059(Rage_VM_param_2060, Rage_VM_param_2061)

						if not Rage_VM_param_2061 then
							break
						end

						local Rage_VM_param_2063 = Rage_VM_param_2062 ~= Rage_VM_param_2053

						if Rage_VM_param_2063 then
							Rage_VM_param_2063 = Rage_VM_param_2062.Player

							if Rage_VM_param_2063 then
								Rage_VM_param_2063 = Rage_VM_param_2056 ~= Rage_VM_param_2062.Player:getTeamId()
							end
						end

						if Rage_VM_param_2063 then
							local Rage_VM_param_2064 = Rage_VM_param_2062:getPosition()
							local Rage_VM_param_2065 = MathUtil:distanceSquare2d(Rage_VM_param_2064, Rage_VM_param_2054)

							if Rage_VM_param_2065 < n30 then
								n30 = Rage_VM_param_2065
								Rage_VM_param_2058 = Rage_VM_param_2062
							end
						end
					end

					local Rage_VM_param_2066 = Rage_VM_param_2058 ~= nil

					if Rage_VM_param_2066 then
						Rage_VM_param_2066 = n30 < values.AimBot
					end

					if Rage_VM_param_2066 then
						local Rage_VM_param_2067 = math.min(Rage_VM_param_2058:getHealth(), 50)
						local Rage_VM_param_2068 = string.format("Closest player's health: %.1f", Rage_VM_param_2067)

						UIHelper.showToast(Rage_VM_param_2068)

						local Rage_VM_param_2069 = SceneManager.Instance():getMainCamera():getPosition()
						local Rage_VM_param_2070 = VectorUtil.sub3(Rage_VM_param_2058:getPosition(), Rage_VM_param_2069)
						local Rage_VM_param_2071 = math.atan2(Rage_VM_param_2070.x, Rage_VM_param_2070.z) / 3.141592653589793 * -180
						local Rage_VM_param_2072 = math.sqrt(Rage_VM_param_2070.x * Rage_VM_param_2070.x + Rage_VM_param_2070.z * Rage_VM_param_2070.z)
						local Rage_VM_param_2073 = -math.atan2(Rage_VM_param_2070.y + 1.5, Rage_VM_param_2072) / 3.141592653589793 * 180

						Rage_VM_param_2053.Player.rotationYaw = Rage_VM_param_2071 or 0

						local Rage_VM_param_2074 = Rage_VM_param_2073 or 0

						Rage_VM_param_2053.Player.rotationPitch = Rage_VM_param_2074
						CGame.Instance():handleTouchClick(650, 400)
					end
				end
			end, 5, 99999)
		end
	end)
	CenterToastg63 = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-xuy63")
	CenterToastg63:SetHorizontalAlignment(HorizontalAlignment.Center)
	CenterToastg63:SetVerticalAlignment(VerticalAlignment.Center)
	CenterToastg63:SetHeight({
		0,
		50
	})
	CenterToastg63:SetWidth({
		0,
		150
	})
	CenterToastg63:SetLevel(2)
	CenterToastg63:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(CenterToastg63)
	CenterToastg63:SetText("^FF0004AutoClick")
	CenterToastg63:SetVisible(false)
	CenterToastg63:SetBackgroundColor({
		0,
		0,
		0,
		0.6
	})
	CenterToastg63:SetYPosition({
		0,
		-260
	})
	CenterToastg63:SetXPosition({
		0,
		-435
	})
	CenterToastg63:registerEvent(GUIEvent.ButtonClick, function()
		A = not A
		LuaTimer:cancel(p190.timer)
		CenterToastg63:SetBackgroundColor({
			0,
			0,
			0,
			0.6
		})
		UIHelper.showCenterToast("Disabled")

		if A then
			p190.timer = LuaTimer:scheduleTimer(function()
				CGame.Instance():handleTouchClick(816, 316)
			end, 0.2, 9E+23)
			CenterToastg63:SetBackgroundColor({
				0,
				1,
				0,
				0.6
			})
			UIHelper.showCenterToast("Enabled")
			GUIGMControlPanel:hide()
		end
	end)
	CenterToastg64 = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-xuy64")
	CenterToastg64:SetHorizontalAlignment(HorizontalAlignment.Center)
	CenterToastg64:SetVerticalAlignment(VerticalAlignment.Center)
	CenterToastg64:SetHeight({
		0,
		50
	})
	CenterToastg64:SetWidth({
		0,
		150
	})
	CenterToastg64:SetLevel(2)
	CenterToastg64:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(CenterToastg64)
	CenterToastg64:SetText("^FF0004HitBox")
	CenterToastg64:SetVisible(false)
	CenterToastg64:SetBackgroundColor({
		0,
		0,
		0,
		0.6
	})
	CenterToastg64:SetYPosition({
		0,
		-205
	})
	CenterToastg64:SetXPosition({
		0,
		-435
	})
	CenterToastg64:registerEvent(GUIEvent.ButtonClick, function()
		local Rage_VM_param_1555 = PlayerManager:getPlayers()
		local Rage_VM_param_1556, Rage_VM_param_1557, Rage_VM_param_1558 = ipairs(Rage_VM_param_1555)

		while true do
			local Rage_VM_param_1559

			Rage_VM_param_1558, Rage_VM_param_1559 = Rage_VM_param_1556(Rage_VM_param_1557, Rage_VM_param_1558)

			if not Rage_VM_param_1558 then
				break
			end

			local Player = Rage_VM_param_1559.Player

			if Rage_VM_param_1559 ~= PlayerManager:getClientPlayer() then
				Player.height = 5
				Player.width = 5
				Player.lenght = 5
			end
		end

		CEvents.LuaPlayerDeathEvent:registerCallBack(function()
			local Rage_VM_param_2075 = PlayerManager:getPlayers()
			local Rage_VM_param_2076, Rage_VM_param_2077, Rage_VM_param_2078 = ipairs(Rage_VM_param_2075)

			while true do
				local Rage_VM_param_2079

				Rage_VM_param_2078, Rage_VM_param_2079 = Rage_VM_param_2076(Rage_VM_param_2077, Rage_VM_param_2078)

				if not Rage_VM_param_2078 then
					break
				end

				local Player = Rage_VM_param_2079.Player

				if Rage_VM_param_2079 ~= PlayerManager:getClientPlayer() then
					Player.height = 5
					Player.width = 5
					Player.lenght = 5
				end
			end
		end)
	end)
end
function GMHelper.SBAimBot(p191)
	togSBAimBot = not togSBAimBot
	Blockman.Instance().m_gameSettings:setCollimatorMode(false)
	LuaTimer:cancel(p191.ja)

	if togSBAimBot then
		createButton("AimBot", "SBAimBot")
		p191.ja = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1561 = PlayerManager:getClientPlayer()

			if Rage_VM_param_1561 then
				local Rage_VM_param_1562 = Rage_VM_param_1561.Player:getPosition()
				local Rage_VM_param_1563 = PlayerManager:getPlayers()

				Rage_VM_param_1561.Player:getTeamId()

				local n31 = 1e999
				local Rage_VM_param_1565 = nil
				local Rage_VM_param_1566, Rage_VM_param_1567, Rage_VM_param_1568 = pairs(Rage_VM_param_1563)

				while true do
					local Rage_VM_param_1569

					Rage_VM_param_1568, Rage_VM_param_1569 = Rage_VM_param_1566(Rage_VM_param_1567, Rage_VM_param_1568)

					if not Rage_VM_param_1568 then
						break
					end

					local Rage_VM_param_1570 = Rage_VM_param_1569 ~= Rage_VM_param_1561

					if Rage_VM_param_1570 then
						Rage_VM_param_1570 = Rage_VM_param_1569.Player
					end

					if Rage_VM_param_1570 then
						local Rage_VM_param_1571 = Rage_VM_param_1569:getPosition()
						local Rage_VM_param_1572 = MathUtil:distanceSquare3d(Rage_VM_param_1571, Rage_VM_param_1562)

						if Rage_VM_param_1572 < n31 then
							Rage_VM_param_1565 = Rage_VM_param_1569
							n31 = Rage_VM_param_1572
						end
					end
				end

				local Rage_VM_param_1573 = Rage_VM_param_1565 ~= nil

				if Rage_VM_param_1573 then
					Rage_VM_param_1573 = n31 < values.AimBot
				end

				if Rage_VM_param_1573 then
					local Rage_VM_param_1574 = math.min(Rage_VM_param_1565:getHealth(), 50)
					local Rage_VM_param_1575 = string.format("Closest player's health: %.1f", Rage_VM_param_1574)

					UIHelper.showToast(Rage_VM_param_1575)

					local Rage_VM_param_1576 = SceneManager.Instance():getMainCamera():getPosition()
					local Rage_VM_param_1577 = VectorUtil.sub3(Rage_VM_param_1565:getPosition(), Rage_VM_param_1576)
					local Rage_VM_param_1578 = math.atan2(Rage_VM_param_1577.x, Rage_VM_param_1577.z) / 3.141592653589793 * -180
					local Rage_VM_param_1579 = math.sqrt(Rage_VM_param_1577.x * Rage_VM_param_1577.x + Rage_VM_param_1577.z * Rage_VM_param_1577.z)
					local Rage_VM_param_1580 = -math.atan2(Rage_VM_param_1577.y + 1.5, Rage_VM_param_1579) / 3.141592653589793 * 180

					Rage_VM_param_1561.Player.rotationYaw = Rage_VM_param_1578 or 0
					Rage_VM_param_1561.Player.rotationPitch = Rage_VM_param_1580 or 0
					Blockman.Instance().m_gameSettings:setCollimatorMode(true)

					return
				end

				Blockman.Instance().m_gameSettings:setCollimatorMode(false)
			end
		end, 5, 99999)
	end
end
function GMHelper.AimBot(p192)
	togAimBot = not togAimBot
	Blockman.Instance().m_gameSettings:setCollimatorMode(false)
	LuaTimer:cancel(p192.ja)

	if togAimBot then
		createButton("AimBot", "AimBot")
		p192.ja = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1581 = PlayerManager:getClientPlayer()

			if Rage_VM_param_1581 then
				local Rage_VM_param_1582 = Rage_VM_param_1581.Player:getPosition()
				local Rage_VM_param_1583 = PlayerManager:getPlayers()
				local Rage_VM_param_1584 = Rage_VM_param_1581.Player:getTeamId()
				local n32 = 1e999
				local Rage_VM_param_1586 = nil
				local Rage_VM_param_1587, Rage_VM_param_1588, Rage_VM_param_1589 = pairs(Rage_VM_param_1583)

				while true do
					local Rage_VM_param_1590

					Rage_VM_param_1589, Rage_VM_param_1590 = Rage_VM_param_1587(Rage_VM_param_1588, Rage_VM_param_1589)

					if not Rage_VM_param_1589 then
						break
					end

					local Rage_VM_param_1591 = Rage_VM_param_1590 ~= Rage_VM_param_1581

					if Rage_VM_param_1591 then
						Rage_VM_param_1591 = Rage_VM_param_1590.Player

						if Rage_VM_param_1591 then
							Rage_VM_param_1591 = Rage_VM_param_1584 ~= Rage_VM_param_1590.Player:getTeamId()
						end
					end

					if Rage_VM_param_1591 then
						local Rage_VM_param_1592 = Rage_VM_param_1590:getPosition()
						local Rage_VM_param_1593 = MathUtil:distanceSquare2d(Rage_VM_param_1592, Rage_VM_param_1582)

						if Rage_VM_param_1593 < n32 then
							n32 = Rage_VM_param_1593
							Rage_VM_param_1586 = Rage_VM_param_1590
						end
					end
				end

				local Rage_VM_param_1594 = Rage_VM_param_1586 ~= nil

				if Rage_VM_param_1594 then
					Rage_VM_param_1594 = n32 < values.AimBot
				end

				if Rage_VM_param_1594 then
					local Rage_VM_param_1595 = math.min(Rage_VM_param_1586:getHealth(), 50)
					local Rage_VM_param_1596 = string.format("Closest player's health: %.1f", Rage_VM_param_1595)

					UIHelper.showToast(Rage_VM_param_1596)

					local Rage_VM_param_1597 = SceneManager.Instance():getMainCamera():getPosition()
					local Rage_VM_param_1598 = VectorUtil.sub3(Rage_VM_param_1586:getPosition(), Rage_VM_param_1597)
					local Rage_VM_param_1599 = math.atan2(Rage_VM_param_1598.x, Rage_VM_param_1598.z) / 3.141592653589793 * -180
					local Rage_VM_param_1600 = math.sqrt(Rage_VM_param_1598.x * Rage_VM_param_1598.x + Rage_VM_param_1598.z * Rage_VM_param_1598.z)
					local Rage_VM_param_1601 = -math.atan2(Rage_VM_param_1598.y + 1.5, Rage_VM_param_1600) / 3.141592653589793 * 180

					Rage_VM_param_1581.Player.rotationYaw = Rage_VM_param_1599 or 0
					Rage_VM_param_1581.Player.rotationPitch = Rage_VM_param_1601 or 0
					Blockman.Instance().m_gameSettings:setCollimatorMode(true)

					return
				end

				Blockman.Instance().m_gameSettings:setCollimatorMode(false)
			end
		end, 5, 99999)
	end
end
function GMHelper.testcolor(_)
	HostApi.sendGameoverByPlatformUserId("cheat detected ezeeee", 15)
end
function GMHelper.VidacaV666X2(_, p195)
	give(p195)
end
function GMHelper.HitBox(_)
	togHitBox = not togHitBox

	local Rage_VM_param_592 = PlayerManager:getPlayers()
	local Rage_VM_param_593, Rage_VM_param_594, Rage_VM_param_595 = pairs(Rage_VM_param_592)

	while true do
		local Rage_VM_param_596

		Rage_VM_param_595, Rage_VM_param_596 = Rage_VM_param_593(Rage_VM_param_594, Rage_VM_param_595)

		if not Rage_VM_param_595 then
			break
		end

		local Player = Rage_VM_param_596.Player

		if Rage_VM_param_596 ~= PlayerManager:getClientPlayer() then
			Player.height = 1.8
			Player.width = 0.6
			Player.lenght = 0.6
		end
	end

	if togHitBox then
		local Rage_VM_param_598 = PlayerManager:getPlayers()
		local Rage_VM_param_599, Rage_VM_param_600, Rage_VM_param_601 = pairs(Rage_VM_param_598)

		while true do
			local Rage_VM_param_602

			Rage_VM_param_601, Rage_VM_param_602 = Rage_VM_param_599(Rage_VM_param_600, Rage_VM_param_601)

			if not Rage_VM_param_601 then
				break
			end

			local Player = Rage_VM_param_602.Player

			if Rage_VM_param_602 ~= PlayerManager:getClientPlayer() then
				Player.height = values.HitBox
				Player.width = values.HitBox
				Player.lenght = values.HitBox
			end
		end
	end
end
function GMHelper.CannonButton(_)
	can = not can
	GUIManager:getWindowByName("Main-Cannon"):SetVisible(false)
	UIHelper.showToast("Disabled")

	if can then
		GUIManager:getWindowByName("Main-Cannon"):SetVisible(true)
		UIHelper.showToast("Enable")
	end
end
function GMHelper.FlyButton(_)
	togFlyButton = not togFlyButton
	flyButton:SetVisible(false)

	if togFlyButton then
		flyButton:SetVisible(true)
	end
end
function GMHelper.AimBot1(_)
	togAimBot1 = not togAimBot1
	CenterToastg62:SetVisible(false)

	if togAimBot1 then
		CenterToastg62:SetVisible(true)
	end
end
function GMHelper.BlockReach(_, _)
	GMHelper:openInput({ "" }, function(p202)
		ClientHelper.putFloatPrefs("BlockReachDistance", p202)
	end)
end
function GMHelper.AttackReach(_)
	GMHelper:openInput({ "" }, function(p204)
		ClientHelper.putFloatPrefs("EntityReachDistance", p204)
	end)
end
function GMHelper.LockBodyRotation(_)
	PlayerManager:getClientPlayer().Player:setDead(true)
end
function GMHelper.setYaw(_, p207, p208)
	if p208 then
		PlayerManager:getClientPlayer().Player.rotationYaw = PlayerManager:getClientPlayer().Player.rotationYaw - p207

		return
	end

	PlayerManager:getClientPlayer().Player.rotationYaw = PlayerManager:getClientPlayer().Player.rotationYaw + p207
end
function GMHelper.setYaw(_)
	GMHelper:openInput({ "" }, function(p210)
		PlayerManager:getClientPlayer().Player.rotationYaw = p210
		UIHelper.showToast("^00FF00Changed")
	end)
end
function GMHelper.ChangeTime(_, p212)
	local Rage_VM_param_617 = EngineWorld:getWorld()

	if not p212 then
		Rage_VM_param_617:setWorldTime(15000)
		UIHelper.showToast("^00FF00Now Night!")

		return
	end

	Rage_VM_param_617:setWorldTime(6000)
	UIHelper.showToast("^00FF00Now Day!")
end
function GMHelper.ChangeTimeD(_)
	EngineWorld:getWorld():setWorldTime(6000)
	UIHelper.showToast("^00FF00Now Day!")
end
function GMHelper.ChangeTimeN(_)
	EngineWorld:getWorld():setWorldTime(15000)
	UIHelper.showToast("^00FF00Now Night!")
end
function GMHelper.SetTime(_)
	GMHelper:openInput({ "" }, function(p216)
		EngineWorld:getWorld():setWorldTime(p216)
		UIHelper.showToast("^00FF00Changed")
	end)
end
function GMHelper.StartTime(_)
	isTimeStopped = not isTimeStopped
	EngineWorld:getWorld():setTimeStopped(isTimeStopped)

	if isTimeStopped then
		UIHelper.showToast("^FF0000Start/Stop Time: disabled!")

		return
	end

	UIHelper.showToast("^00FF00Start/Stop Time: enabled!")
end
function GMHelper.getConfig(_)
	MsgSender.sendMsg("Time:" .. tostring(ModsConfig.time))
	MsgSender.sendMsg("Show pos:" .. tostring(ModsConfig.showPos))
	MsgSender.sendMsg("Hp warn:" .. tostring(ModsConfig.lhwarn))
	MsgSender.sendMsg("Hp warn level:" .. tostring(ModsConfig.hpwarn))
	MsgSender.sendMsg("Hide player names:" .. tostring(ModsConfig.hpn))
end
function GMHelper.addHpLvl(_, _, p221)
	if p221 then
		if ModsConfig.hpwarn == 0 then
			return
		end

		ModsConfig.hpwarn = ModsConfig.hpwarn - 1
		MsgSender.sendMsg("Hp warn level:" .. tostring(ModsConfig.hpwarn))

		return
	end

	if ModsConfig.hpwarn == PlayerManager:getClientPlayer().Player:getHealth() then
		return
	end

	ModsConfig.hpwarn = ModsConfig.hpwarn + 1
	MsgSender.sendMsg("Hp warn level:" .. tostring(ModsConfig.hpwarn))
end
function GMHelper.addGMPlayer(_)
end
function GMHelper.openCommonPacketDebug(_)
	CommonDataEvents.isDebug = true
end
function GMHelper.Links(_)
	scroll1 = GUIManager:createGUIWindow(GUIType.List, "GUIRoot-LinksOp")
	scroll1:SetHorizontalAlignment(HorizontalAlignment.Center)
	scroll1:SetVerticalAlignment(VerticalAlignment.Center)
	scroll1:SetHeight({
		0,
		400
	})
	scroll1:SetWidth({
		0,
		900
	})
	scroll1:SetYPosition({
		0,
		-5
	})
	scroll1:SetBackgroundColor({
		0,
		0,
		0,
		1
	})
	scroll1:SetTouchable(true)
	scroll1:SetLevel(1)
	scroll1:SetVisible(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(scroll1)
	title11 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-title11")
	title11:SetHorizontalAlignment(HorizontalAlignment.Center)
	title11:SetVerticalAlignment(VerticalAlignment.Center)
	title11:SetTextHorzAlign(HorizontalAlignment.Center)
	title11:SetTextVertAlign(VerticalAlignment.Center)
	title11:SetHeight({
		0,
		50
	})
	title11:SetWidth({
		0,
		900
	})
	title11:SetLevel(1)
	title11:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(title11)
	title11:SetText("Links")
	title11:SetBackgroundColor({
		0.75,
		0.75,
		0.75,
		1
	})
	title11:SetVisible(true)
	title11:SetXPosition({
		0,
		0
	})
	title11:SetYPosition({
		0,
		-180
	})
	title22 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-title22")
	title22:SetHorizontalAlignment(HorizontalAlignment.Center)
	title22:SetVerticalAlignment(VerticalAlignment.Center)
	title22:SetTextHorzAlign(HorizontalAlignment.Left)
	title22:SetTextVertAlign(VerticalAlignment.Center)
	title22:SetHeight({
		0,
		50
	})
	title22:SetWidth({
		0,
		660
	})
	title22:SetLevel(1)
	title22:SetTextScale(1.1)
	title22:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(title22)
	title22:SetText("https://youtube.com/@eternalhackerbg?si=AgSnODb8czBY-amj")
	title22:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	title22:SetVisible(true)
	title22:SetBordered(true)
	title22:SetXPosition({
		0,
		-100
	})
	title22:SetYPosition({
		0,
		-115
	})
	title27 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-title27")
	title27:SetHorizontalAlignment(HorizontalAlignment.Center)
	title27:SetVerticalAlignment(VerticalAlignment.Center)
	title27:SetTextHorzAlign(HorizontalAlignment.Left)
	title27:SetTextVertAlign(VerticalAlignment.Center)
	title27:SetHeight({
		0,
		50
	})
	title27:SetWidth({
		0,
		660
	})
	title27:SetLevel(1)
	title27:SetTextScale(1.1)
	title27:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(title27)
	title27:SetText("https://youtube.com/@bht_hacker?si=PDJ8op7d5Lb7E3pq")
	title27:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	title27:SetVisible(true)
	title27:SetBordered(true)
	title27:SetXPosition({
		0,
		-100
	})
	title27:SetYPosition({
		0,
		-65
	})
	title271 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-title271")
	title271:SetHorizontalAlignment(HorizontalAlignment.Center)
	title271:SetVerticalAlignment(VerticalAlignment.Center)
	title271:SetTextHorzAlign(HorizontalAlignment.Left)
	title271:SetTextVertAlign(VerticalAlignment.Center)
	title271:SetHeight({
		0,
		50
	})
	title271:SetWidth({
		0,
		660
	})
	title271:SetLevel(1)
	title271:SetTextScale(1.1)
	title271:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(title271)
	title271:SetText("https://discord.gg/8zAXEUbx")
	title271:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	title271:SetVisible(true)
	title271:SetBordered(true)
	title271:SetXPosition({
		0,
		-100
	})
	title271:SetYPosition({
		0,
		-15
	})
	closeOp1 = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-closeOp1")
	closeOp1:SetHorizontalAlignment(HorizontalAlignment.Center)
	closeOp1:SetVerticalAlignment(VerticalAlignment.Center)
	closeOp1:SetHeight({
		0,
		50
	})
	closeOp1:SetWidth({
		0,
		50
	})
	closeOp1:SetLevel(1)
	closeOp1:SetTouchable(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(closeOp1)
	closeOp1:SetText("X")
	closeOp1:SetBackgroundColor({
		1,
		0,
		0,
		1
	})
	closeOp1:SetVisible(true)
	closeOp1:SetXPosition({
		0,
		425
	})
	closeOp1:SetYPosition({
		0,
		-180
	})
	closeOp1:registerEvent(GUIEvent.ButtonClick, function()
		scroll1:SetVisible(false)
		closeOp1:SetVisible(false)
		title22:SetVisible(false)
		title27:SetVisible(false)
		title11:SetVisible(false)
		title271:SetVisible(false)
		SoundUtil.playSound(7)
	end)
end
function GMHelper.closeCommonPacketDebug(_)
	CommonDataEvenpisDebug = false
end
function GMHelper.openConnectorLog(_)
	T(Global, "ConnectorCenter").isDebug = true
	T(Global, "ConnectorDispatch").isDebug = true
end
function GMHelper.closeConnectorLog(_)
	T(Global, "ConnectorCenter").isDebug = false
	T(Global, "ConnectorDispatch").isDebug = false
end
function GMHelper.sendTestConnectorMsg(_, p229)
	local t29 = {
		a = 1,
		b = 2
	}

	T(Global, "ConnectorCenter"):sendMsg(p229, t29)
end
function GMHelper.SetEnabledRenderFrameTimer(_, p231)
	PerformanceStatistics.SetEnabledRenderFrameTimer(p231)
	GUIGMControlPanel:hide()
end
function GMHelper.updateAllShaders(_)
	Blockman.Instance().m_gameSettings:updateAllShaders()
	GUIGMControlPanel:hide()
end
function GMHelper.setNeedMonitorShader(_)
	Blockman.Instance().m_gameSettings:setNeedMonitorShader(true)
	GUIGMControlPanel:hide()
end
function GMHelper.SpinPlayer(_)
	togSpinPlayer = not togSpinPlayer
	Blockman.Instance():getPlayer().m_rotateSpeed = 0

	if togSpinPlayer then
		Blockman.Instance():getPlayer().m_rotateSpeed = 40
	end
end
function GMHelper.setDrawCallDisabled(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setDrawCallDisabled(true)
	GUIGMControlPanel:hide()
end
function GMHelper.sbbyass(p236)
	togsbbyass = not togsbbyass
	LuaTimer:cancel(p236.ja)

	if togsbbyass then
		p236.ja = LuaTimer:scheduleTimer(function()
			RootGuiLayout.Instance():showMainControl()
			GUIGMControlPanel:hide()
		end, 5, 99999)
	end
end
function GMHelper.emotefreeze(_)
	togemotefreeze = not togemotefreeze
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", false)

	if togemotefreeze then
		createButton("EmoteFreeze", "emotefreeze")
		PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	end
end
function GMHelper.setMinimumGeometry(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setMinimumGeometry(true)
	GUIGMControlPanel:hide()
end
function GMHelper.setColorBlendDisabled(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setColorBlendDisabled(true)
	GUIGMControlPanel:hide()
end
function GMHelper.TeleportToRandomPlayer(_)
	local Player = PlayerManager:getClientPlayer().Player
	local Rage_VM_param_647 = PlayerManager:getPlayers()

	if #Rage_VM_param_647 > 1 then
		local t30 = { Rage_VM_param_647[math.random(1, #Rage_VM_param_647)]:getPosition() }

		Player:setPosition(Rage_VM_param_1(t30))
		UIHelper.showToast("^00FF00Teleported to Random Player")

		return
	end

	UIHelper.showToast("^FF0000No other players found")
end
function GMHelper.Test03(p241)
	togTest03 = not togTest03

	if togTest03 then
		p241._test03Timer = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1606 = PlayerManager:getPlayers()

			if not Rage_VM_param_1606 then
				Rage_VM_param_1606 = {}
			end

			local Rage_VM_param_1607, Rage_VM_param_1608, Rage_VM_param_1609 = ipairs(Rage_VM_param_1606)

			while true do
				local Rage_VM_param_1610

				Rage_VM_param_1609, Rage_VM_param_1610 = Rage_VM_param_1607(Rage_VM_param_1608, Rage_VM_param_1609)

				if not Rage_VM_param_1609 then
					break
				end

				local Player = Rage_VM_param_1610.Player

				if Player then
					local Rage_VM_param_1612 = Player:getShowName() or ""
					local getHealth = Player.getHealth
					local Rage_VM_param_1614 = math.floor(getHealth(Player) + 0.5) or 0

					if not Rage_VM_param_1610.originalShowName then
						Rage_VM_param_1610.originalShowName = Rage_VM_param_1612
					end

					if Rage_VM_param_1614 ~= Rage_VM_param_1610.lastShowHP then
						Rage_VM_param_1610.lastShowHP = Rage_VM_param_1614

						local Rage_VM_param_1615 = StringUtil.split(Rage_VM_param_1610.originalShowName, "\n")

						if not Rage_VM_param_1615 then
							Rage_VM_param_1615 = {}
						end

						for i = #Rage_VM_param_1615, 1, -1 do
							local Rage_VM_param_1617 = i

							if string.find(Rage_VM_param_1615[Rage_VM_param_1617], "♥") then
								table.remove(Rage_VM_param_1615, Rage_VM_param_1617)
							end
						end

						table.insert(Rage_VM_param_1615, "▢FFFFFFFF" .. tostring(Rage_VM_param_1614) .. "▢FFFF1F1F  ♥")
						Rage_VM_param_1610.lastShowName = table.concat(Rage_VM_param_1615, "\n")
						Player:setShowName(Rage_VM_param_1610.lastShowName)
					end
				end
			end
		end, 50, 99999)

		return
	end

	if p241._test03Timer then
		LuaTimer:cancel(p241._test03Timer)
		p241._test03Timer = nil
	end

	local Rage_VM_param_650 = PlayerManager:getPlayers()

	if not Rage_VM_param_650 then
		Rage_VM_param_650 = {}
	end

	local Rage_VM_param_651, Rage_VM_param_652, Rage_VM_param_653 = ipairs(Rage_VM_param_650)

	while true do
		local Rage_VM_param_654

		Rage_VM_param_653, Rage_VM_param_654 = Rage_VM_param_651(Rage_VM_param_652, Rage_VM_param_653)

		if not Rage_VM_param_653 then
			break
		end

		local Player = Rage_VM_param_654.Player
		local Rage_VM_param_656 = Player

		if Player then
			Rage_VM_param_656 = Rage_VM_param_654.originalShowName
		end

		if Rage_VM_param_656 then
			Player:setShowName(Rage_VM_param_654.originalShowName)
			Rage_VM_param_654.originalShowName = nil
			Rage_VM_param_654.lastShowHP = nil
			Rage_VM_param_654.lastShowName = nil
		end
	end
end
function GMHelper.RunFile(_)
	filePath = "/storage/emulated/0/Android/data/com.sandboxol.blockymods.channel.official/runCode.lua"

	local Rage_VM_param_658, Rage_VM_param_659 = io.open(filePath, "r")

	f = Rage_VM_param_658
	g = Rage_VM_param_659

	if f then
		s7 = f:read("*a")
		f:close()

		if #s7 % 2 ~= 0 then
			s7 ..= " "
		end

		loadn(s7)

		return
	end

	print("Panel could not load")
end
function GMHelper.smoothfly(_)
	togsmoothfly = not togsmoothfly

	if togsmoothfly then
		PlayerManager:getClientPlayer().Player.m_keepJumping = false

		return
	end

	PlayerManager:getClientPlayer().Player.m_keepJumping = true
end
function GMHelper.fpslimit(_)
	togfpslimit = true
	CGame.Instance():SetMaxFps(1000000000000)
end
function GMHelper.Cannon(_)
	togCannon = not togCannon

	if togCannon then
		GUIManager:getWindowByName("Main-Cannon"):SetVisible(true)
		GUIManager:getWindowByName("Main-Cannon", GUIType.Button):registerEvent(GUIEvent.ButtonClick, function()
			if u5() then
				ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
			end

			local Rage_VM_param_1618 = PlayerManager:getClientPlayer()
			local Rage_VM_param_1619 = Rage_VM_param_1618

			if Rage_VM_param_1618 then
				Rage_VM_param_1619 = Rage_VM_param_1618.Player
			end

			if Rage_VM_param_1619 then
				local Rage_VM_param_1620 = Rage_VM_param_1618.Player:getPitch()
				local Rage_VM_param_1621 = Rage_VM_param_1618.Player:getYaw()
				local _math = math
				local Rage_VM_param_1623 = Rage_VM_param_1620 * 3.141592653589793 / 180
				local Rage_VM_param_1624 = Rage_VM_param_1621 * _math.pi / 180

				speed = 1.2

				local Rage_VM_param_1625 = -speed * math.cos(Rage_VM_param_1623)
				local Rage_VM_param_1626 = math.sin(Rage_VM_param_1624)
				local Rage_VM_param_1627 = -speed
				local Rage_VM_param_1628 = Rage_VM_param_1625 * Rage_VM_param_1626
				local Rage_VM_param_1629 = Rage_VM_param_1627 * math.sin(Rage_VM_param_1623)
				local Rage_VM_param_1630 = speed * math.cos(Rage_VM_param_1623) * math.cos(Rage_VM_param_1624)
				local Rage_VM_param_1631 = VectorUtil.newVector3(Rage_VM_param_1628, Rage_VM_param_1629, Rage_VM_param_1630)

				Rage_VM_param_1618.Player:setVelocity(Rage_VM_param_1631)
				SoundUtil.playSound(313)
			end
		end)

		return
	end

	GUIManager:getWindowByName("Main-Cannon"):SetVisible(false)
end
function GMHelper.AimBox1(_)
	A = not A

	if A then
		CenterToastg62:SetVisible(true)
		UIHelper.showToast("Enable")

		return
	end

	CenterToastg62:SetVisible(false)
	UIHelper.showToast("Disabled")
end
function GMHelper.HitBox1(_)
	togHitBox1 = not togHitBox1

	if togHitBox1 then
		CenterToastg64:SetVisible(true)

		return
	end

	CenterToastg64:SetVisible(false)
end
function GMHelper.AutoClicker(_)
	togAutoClicker = not togAutoClicker

	if togAutoClicker then
		createButton("AutoClick", "AutoClicker")
		ezz = LuaTimer:scheduleTimer(function()
			GUIManager:getWindowByName("Main-Attack-Btn", GUIType.Button):TouchDown(VectorUtil.newVector2(0, 0))
			GUIManager:getWindowByName("Main-Attack-Btn", GUIType.Button):TouchUp(VectorUtil.newVector2(0, 0))
			Blockman.Instance().m_gameSettings:setCollimatorMode(true)
		end, 20, -1)

		return
	end

	LuaTimer:cancel(ezz)
	Blockman.Instance().m_gameSettings:setCollimatorMode(false)
end
function GMHelper.Ranvka(p249)
	togRanvka = not togRanvka

	local Player = PlayerManager:getClientPlayer().Player

	LuaTimer:cancel(p249.rva)
	Player:setFlying(false)

	if togRanvka then
		local Player2 = PlayerManager:getClientPlayer().Player
		local Rage_VM_param_669 = VectorUtil.newVector3(0, 1.35, 0)

		Player2:setAllowFlying(true)
		Player2:setFlying(true)
		Player2:moveEntity(Rage_VM_param_669)
		p249.rva = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1632 = Player2:getTeamId()
			local Rage_VM_param_1633 = PlayerManager:getPlayers()
			local Rage_VM_param_1634, Rage_VM_param_1635, Rage_VM_param_1636 = pairs(Rage_VM_param_1633)

			while true do
				local Rage_VM_param_1637

				Rage_VM_param_1636, Rage_VM_param_1637 = Rage_VM_param_1634(Rage_VM_param_1635, Rage_VM_param_1636)

				if not Rage_VM_param_1636 then
					break
				end

				local Rage_VM_param_1638 = Rage_VM_param_1637 ~= Player2

				if Rage_VM_param_1638 then
					Rage_VM_param_1638 = Rage_VM_param_1637.Player

					if Rage_VM_param_1638 then
						Rage_VM_param_1638 = Rage_VM_param_1632 ~= Rage_VM_param_1637.Player:getTeamId()
					end
				end

				if Rage_VM_param_1638 then
					local Rage_VM_param_1639 = VectorUtil.newVector3(Rage_VM_param_1637:getPosition().x, Rage_VM_param_1637:getPosition().y + 3, Rage_VM_param_1637:getPosition().z)

					Player2:setPosition(Rage_VM_param_1639)
				end
			end
		end, 200, 9999)
	end
end
function GMHelper.setZTestDisabled(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setZTestDisabled(true)
	GUIGMControlPanel:hide()
end
function GMHelper.setZWriteDisabled(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setZWriteDisabled(true)
	GUIGMControlPanel:hide()
end
function GMHelper.setUseSmallTexture(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setUseSmallTexture(true)
	GUIGMControlPanel:hide()
end
function GMHelper.autoresp(_)
	togautoresp = true

	if togautoresp then
		CEvents.LuaPlayerDeathEvent:registerCallBack(function(p254)
			if p254 == CGame.Instance():getPlatformUserId() then
				PacketSender:getSender():sendRebirth()
				RootGuiLayout.Instance():showMainControl()
				GUIGMControlPanel:hide()
				UIHelper.showCenterToast("^FFFFFFRespawning...")
			end
		end)
	end
end
function GMHelper.bwautoresp(_, p256)
	CEvents.LuaPlayerDeathEvent:registerCallBack(function(p257)
		if p257 == CGame.Instance():getPlatformUserId() then
			local Player = PlayerManager:getClientPlayer().Player
			local setPosition = Player.setPosition
			local t31 = { VectorUtil.newVector3(0, -15, 0) }

			setPosition(Player, Rage_VM_param_1(t31))
			LuaTimer:schedule(function()
				PacketSender:getSender():sendRebirth()
			end, 300)
			RootGuiLayout.Instance():showMainControl()
			GUIGMControlPanel:hide()
			UIHelper.showCenterToast("^FFFFFFRespawning...")
		end
	end)
	p256:SetBackgroundColor(Color.GREEN)
end
function GMHelper.updateBedWarArrowSpeed(_)
	GMHelper:openInput({ "speed" }, function(p259)
		local Rage_VM_param_1646 = tonumber(p259) or 0

		PlayerManager:getClientPlayer().Player:setFloatProperty("ArrowSpeedScale", Rage_VM_param_1646)
		PlayerManager:getClientPlayer():sendPacket({
			pid = "updateBedWarArrowSpeed",
			scale = Rage_VM_param_1646
		})
	end)
end
function GMHelper.AutoBridge(_)
	togAutoBridge = not togAutoBridge

	if togAutoBridge then
		CenterToastg61:SetVisible(true)

		return
	end

	CenterToastg61:SetVisible(false)
end
function GMHelper.BedWarsBypass(_)
	ClientHelper.putIntPrefs("ClientHelper.RunLimitCheck", 5)
	text:SetBackgroundColor(Color.GREEN)
end
function GMHelper.bwresp(_)
	PlayerManager:getClientPlayer().Player:setPosition(VectorUtil.newVector3(0, -15, 0))
	LuaTimer:schedule(function()
		PacketSender:getSender():sendRebirth()
	end, 150)
end
function GMHelper.setUseSmallViewport(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setUseSmallViewport(true)
	GUIGMControlPanel:hide()
end
function GMHelper.setUseSmallVBO(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setUseSmallVBO(true)
	GUIGMControlPanel:hide()
end
function GMHelper.setClearColorDisabled(_)
	PerformanceStatistics.SetEnabledRenderFrameTimer(true)
	RenderExperimentSwitch.Instance():setClearColorDisabled(true)
	GUIGMControlPanel:hide()
end
function GMHelper.changeLuaHotUpdate(_, p267)
	startLuaHotUpdate()
	HU.CanUpdate = p267
end
function GMHelper.changeOpenEventDialog(_, p269)
	GUIGMMain:changeOpenEventDialog(p269)
end
function GMHelper.showUserRegion(_)
	UIHelper.showToast("游戏大区=" .. Game:getRegionId() .. "   玩家区域=" .. Game:getUserRegion())
end
function GMHelper.setOutputUIName(_, p272)
	GUISystem.Instance():SetOutputUIName(not GUISystem.Instance():IsOutputUIName())
	p272:SetText("打印UI(" .. (not GUISystem.Instance():IsOutputUIName() and "关)" or "开)"))
end
function GMHelper.setGlobalShowText(_)
	Root.Instance():setShowText(not Root.Instance():isShowText())
end
function GMHelper.Respawn(_)
	PacketSender:getSender():sendRebirth()
end
function GMHelper.JetPack(p275)
	if not p275.timer then
		togJetPack = true
		createButton("JetPack", "JetPack")
		p275.timer = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1647 = PlayerManager:getClientPlayer().Player:getYaw()
			local Rage_VM_param_1648 = PlayerManager:getClientPlayer().Player:getPitch()
			local Rage_VM_param_1649 = math.rad(Rage_VM_param_1647)
			local Rage_VM_param_1650 = math.rad(Rage_VM_param_1648)
			local n33 = 1
			local Rage_VM_param_1652 = -n33 * math.cos(Rage_VM_param_1650) * math.sin(Rage_VM_param_1649)
			local Rage_VM_param_1653 = -n33 * math.sin(Rage_VM_param_1650)
			local Rage_VM_param_1654 = n33 * math.cos(Rage_VM_param_1650) * math.cos(Rage_VM_param_1649)
			local Rage_VM_param_1655 = VectorUtil.newVector3(Rage_VM_param_1652, Rage_VM_param_1653, Rage_VM_param_1654)

			PlayerManager:getClientPlayer().Player:setVelocity(Rage_VM_param_1655)
		end, 5, 200000)

		return
	end

	LuaTimer:cancel(p275.timer)
	p275.timer = nil
	togJetPack = false
end
function GMHelper.copyClientLog(_)
	if Platform.isWindow() then
		return
	end

	local Rage_VM_param_694 = Root.Instance():getWriteablePath() .. "client.log"
	local Rage_VM_param_695 = io.open(Rage_VM_param_694, "r")

	if not Rage_VM_param_695 then
		return
	end

	local Rage_VM_param_696 = Rage_VM_param_695:read("*a")

	Rage_VM_param_695:close()
	ClientHelper.onSetClipboard(Rage_VM_param_696)
	UIHelper.showToast("拷贝成功，请粘贴到钉钉上自动生成文件发送到群里")
end
function GMHelper.sendConnectorChatMsg(_, p278)
	local _isClient = isClient

	if not _isClient then
		_isClient = isStaging
	end

	if _isClient then
		local Rage_VM_param_700 = T(Global, "ChatService")

		for i = 1, p278 do
			Rage_VM_param_700:sendMsgToLangGroup(Define.ChatMsgType.TextMsg, {
				content = "Test:" .. i
			})
		end
	end
end
function GMHelper.queryBoolKey(_)
	GMHelper:openInput({ "" }, function(_)
		CustomDialog.builder().setContentText("function temporary disabled").setHideLeftButton().show()
		GUIGMControlPanel:hide()
	end)
end
function GMHelper.queryStringKey(_)
	GMHelper:openInput({ "" }, function(p282)
		CustomDialog.builder().setContentText(p282 .. "=" .. ClientHelper.getStringForKey(p282)).setHideLeftButton().setRightText("复制到粘贴板").setRightClickListener(function()
			ClientHelper.onSetClipboard(ClientHelper.getStringForKey(p282))
			UIHelper.showToast("复制成功")
		end).show()
		GUIGMControlPanel:hide()
	end)
end
function GMHelper.makeGmButtonTran(_)
	GUIGMMain:setTransparent()
end
function GMHelper.setRenderMainScreenSeparate(_, p285)
	Root.Instance():setRenderMainScreenSeparate(p285)
end
function GMHelper.setEnableMergeBlock(_, _)
	Root.Instance():setEnableMergeBlock(true)
	UIHelper.showToast("1")
end
function GMHelper.AnvilToObj(_)
	local Rage_VM_param_710 = VectorUtil.newVector3()

	AnvilToObj.doTranslate(Rage_VM_param_710, 32)
end
function GMHelper.inTheAirCheat(_)
	LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1659 = VectorUtil.newVector3(0, 3, 0)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1659)
	end, 5, 20)
end
function GMHelper.GoTO10BlocksDown(_)
	LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1660 = VectorUtil.newVector3(0, 0, 1)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1660)
	end, 5, 20)
end
function GMHelper.GoTO10Blocks(_)
	LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1661 = VectorUtil.newVector3(1, 0, 0)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1661)
	end, 5, 20)
end
function GMHelper.testinValidEffect(_)
	local Rage_VM_param_715 = VectorUtil.newVector3(100, 10, 100)

	WorldEffectManager.Instance():addSimpleEffect("01_face_boy.mesh", Rage_VM_param_715, 1, 1, 1, 1, 1)
	UIHelper.showToast("测试 非法 特效 完成")
end
function GMHelper.BedWarsBypass(_)
	ClientHelper.putIntPrefs("ClientHelper.RunLimitCheck", 5)
	UIHelper.showToast("^FF00EESuccess")
end
function GMHelper.outputItemLangFile(_)
	if not isClient then
		return
	end

	local t32 = {}

	for i = 1, 6000 do
		local Rage_VM_param_720 = i
		local Rage_VM_param_721 = Item.getItemById(Rage_VM_param_720)

		if Rage_VM_param_721 then
			local Rage_VM_param_722 = Lang:getItemName(Rage_VM_param_720, 0)

			if Rage_VM_param_722 == "" then
				Rage_VM_param_722 = Rage_VM_param_721:getUnlocalizedName()
			end

			t32[tostring(Rage_VM_param_720)] = Rage_VM_param_722
		end
	end

	local Rage_VM_param_723 = io.open(GameType .. "_item_name.json", "w")
	local t33 = { json.encode(t32) }

	Rage_VM_param_723:write(Rage_VM_param_1(t33))
	Rage_VM_param_723:close()
end
function GMHelper.unlimitedJumps(_)
	togunlimitedJumps = not togunlimitedJumps
	ClientHelper.putBoolPrefs("EnableDoubleJumps", true)
	PlayerManager:getClientPlayer().doubleJumpCount = 10000

	if togunlimitedJumps then
		return
	end

	ClientHelper.putBoolPrefs("EnableDoubleJumps", false)
end
function GMHelper.GUISkyblockTest1(_)
	UIHelper.showGameGUILayout("GUIChristmas", 1)
	GUIGMControlPanel:hide()
end
function GMHelper.Night(_)
	HostApi.setSky("fanxing")
end
function GMHelper.Day(_)
	HostApi.setSky("Qing")
end
function GMHelper.Evening(_)
	HostApi.setSky("Wanxia")
end
function GMHelper.GUISkyblockTest2(_)
	UIHelper.showGameGUILayout("GUIGameTool")
	GUIGMControlPanel:hide()
end
function GMHelper.GUISkyblockTest3(p301)
	UIHelper.showGameGUILayout("GUIRewardDetail", p301.rewardId)
	GUIGMControlPanel:hide()
end
function GMHelper.Reach(_)
	togReach = not togReach
	ClientHelper.putFloatPrefs("BlockReachDistance", 6.5)
	ClientHelper.putFloatPrefs("EntityReachDistance", 5)

	if togReach then
		ClientHelper.putFloatPrefs("BlockReachDistance", 999)
		ClientHelper.putFloatPrefs("EntityReachDistance", 6.5)
	end
end
function GMHelper.ViewBobbing(_)
	A = not A
	ClientHelper.putBoolPrefs("IsViewBobbing", false)

	if A then
		UIHelper.showToast("^FF0000ViewBobbing: OFF")

		return
	end

	ClientHelper.putBoolPrefs("IsViewBobbing", true)
	UIHelper.showToast("^00FF00ViewBobbing: ON")
end
function GMHelper.BlockmanCollision(_)
	A = not A
	ClientHelper.putBoolPrefs("IsCreatureCollision", true)
	ClientHelper.putBoolPrefs("IsBlockmanCollision", true)

	if A then
		UIHelper.showToast("^00FF00BlockmanCollision: ON")

		return
	end

	ClientHelper.putBoolPrefs("IsBlockmanCollision", false)
	UIHelper.showToast("^FF0000BlockmanCollision: OFF")
	ClientHelper.putBoolPrefs("IsCreatureCollision", false)
end
function GMHelper.RenderWorld(_)
	GMHelper:openInput({ "" }, function(p306)
		ClientHelper.putIntPrefs("BlockRenderDistance", p306)
		UIHelper.showToast("^00FF00Changed")
	end)
end
function GMHelper.TpClick(_)
	togTpClick = not togTpClick
	CEvents.ClickToBlockEvent:unregisterAll()
	ClientHelper.putFloatPrefs("BlockReachDistance", 6.5)

	if togTpClick then
		if togNoFallDamage then
			GMHelper:NoFallDamage()
			GMSetting:changeColorByFunction("NoFallDamage", false)
		end

		createButton("TpClick", "TpClick")
		CEvents.ClickToBlockEvent:registerCallBack(function(p308)
			skibidi = PlayerManager:getClientPlayer().Player

			if not PlayerManager:getClientPlayer().Player.onGround then
				UIHelper.showToast("refused, must be on ground")

				return
			end

			Teleport(VectorUtil.newVector3(math.floor(p308.x), math.floor(p308.y + 3), (math.floor(p308.z))), math.floor(skibidi:getYaw()))
		end)
		ClientHelper.putFloatPrefs("BlockReachDistance", 300)
	end
end
function GMHelper.Fog(_)
	A = not A
	ClientHelper.putBoolPrefs("DisableFog", true)

	if A then
		UIHelper.showToast("^FF0000Fog Disabled!")

		return
	end

	ClientHelper.putBoolPrefs("DisableFog", false)
	UIHelper.showToast("^00FF00Fog Enabled!")
end
function GMHelper.WWE_Camera(_)
	togWWE_Camera = not togWWE_Camera
	ClientHelper.putBoolPrefs("IsSeparateCamera", true)

	if togWWE_Camera then
		return
	end

	ClientHelper.putBoolPrefs("IsSeparateCamera", false)
end
function GMHelper.ResetXD(_)
	ClientHelper.putStringPrefs("RunSkillName", "run")
	GUIGMControlPanel:hide()
end
function GMHelper.ActionSet(_)
	GMHelper:openInput({ "" }, function(p313)
		ClientHelper.putStringPrefs("RunSkillName", p313)
	end)
end
function GMHelper.WalkSMG(_)
	ClientHelper.putStringPrefs("RunSkillName", "smg_walk")
	GUIGMControlPanel:hide()
end
function GMHelper.SneakXD(_)
	ClientHelper.putStringPrefs("RunSkillName", "sneak")
	GUIGMControlPanel:hide()
end
function GMHelper.SitXD(_)
	ClientHelper.putStringPrefs("RunSkillName", "sit1")
	GUIGMControlPanel:hide()
end
function GMHelper.SitXD2(_)
	ClientHelper.putStringPrefs("RunSkillName", "sit2")
	GUIGMControlPanel:hide()
end
function GMHelper.SitXD3(_)
	ClientHelper.putStringPrefs("RunSkillName", "sit3")
	GUIGMControlPanel:hide()
end
function GMHelper.rideDragonXD(_)
	ClientHelper.putStringPrefs("RunSkillName", "ride_dragon")
	GUIGMControlPanel:hide()
end
function GMHelper.SwimXD(_)
	ClientHelper.putStringPrefs("RunSkillName", "swim")
	GUIGMControlPanel:hide()
end
function GMHelper.ArmSpeed(_)
	GMHelper:openInput({ "" }, function(p322)
		ClientHelper.putIntPrefs("ArmSwingAnimationEnd", p322)
		UIHelper.showToast("^00FF00Changed")
	end)
end
function GMHelper.CameraFunct(_)
	GMHelper:openInput({ "" }, function(p324)
		ClientHelper.putFloatPrefs("ThirdPersonDistance", p324)
		UIHelper.showToast("^00FF00Changed")
	end)
end
function GMHelper.CloudsOFF(_)
	ClientHelper.putBoolPrefs("DisableRenderClouds", true)
	UIHelper.showToast("^FF0000Clouds Stop")
	GUIGMControlPanel:hide()
end
function GMHelper.BowSpeed(_)
	togBowSpeed = not togBowSpeed

	if togBowSpeed then
		PlayerManager:getClientPlayer().Player:setFloatProperty("ArrowSpeedScale", 15)

		local _PlayerManager = PlayerManager
		local getClientPlayer = _PlayerManager.getClientPlayer
		local t34 = {
			pid = "updateBedWarArrowSpeed",
			scale = 15
		}

		getClientPlayer(_PlayerManager):sendPacket(t34)
	end
end
function GMHelper.HeadText(_)
	A = not A
	ClientHelper.putBoolPrefs("RenderHeadText", true)

	if A then
		UIHelper.showToast("^00FF00Head text render now ON")

		return
	end

	ClientHelper.putBoolPrefs("RenderHeadText", false)
	UIHelper.showToast("^FF0000Head text render now OFF")
end
function GMHelper.changePlayerActor(_, p329)
	if isGameStart then
		if p329 == 1 then
			ClientHelper.putStringPrefs("BoyActorName", "boy.actor")
			ClientHelper.putStringPrefs("GirlActorName", "boy.actor")
		else
			ClientHelper.putStringPrefs("BoyActorName", "girl.actor")
			ClientHelper.putStringPrefs("GirlActorName", "girl.actor")
		end
	elseif p329 == 1 then
		ClientHelper.putStringPrefs("BoyActorName", "boy.actor")
		ClientHelper.putStringPrefs("GirlActorName", "boy.actor")
	else
		ClientHelper.putStringPrefs("BoyActorName", "girl.actor")
		ClientHelper.putStringPrefs("GirlActorName", "girl.actor")
	end

	local Rage_VM_param_758 = PlayerManager:getPlayers()
	local Rage_VM_param_759, Rage_VM_param_760, Rage_VM_param_761 = pairs(Rage_VM_param_758)

	while true do
		local Rage_VM_param_762

		Rage_VM_param_761, Rage_VM_param_762 = Rage_VM_param_759(Rage_VM_param_760, Rage_VM_param_761)

		if not Rage_VM_param_761 then
			break
		end

		if Rage_VM_param_762.Player then
			Rage_VM_param_762.Player.m_isPeopleActor = false
			EngineWorld:restorePlayerActor(Rage_VM_param_762)
		end
	end

	UIHelper.showToast("^00FF00Success!")
	GUIGMControlPanel:hide()
end
function GMHelper.BanClickCD(_)
	togBanClickCD = not togBanClickCD
	ClientHelper.putBoolPrefs("banClickCD", false)
	PlayerManager:getClientPlayer().Player:setIntProperty("bedWarAttackCD", 5)

	if togBanClickCD then
		ClientHelper.putBoolPrefs("banClickCD", true)
		PlayerManager:getClientPlayer().Player:setIntProperty("bedWarAttackCD", 0)
	end
end
function GMHelper.BanClickCD2(_)
	togBanClickCD2 = not togBanClickCD2
	ClientHelper.putBoolPrefs("banClickCD", false)
	PlayerManager:getClientPlayer().Player:setIntProperty("bedWarAttackCD", 5)

	if togBanClickCD2 then
		GMHelper:BanClickCD()
		ClientHelper.putBoolPrefs("banClickCD", true)
		PlayerManager:getClientPlayer().Player:setIntProperty("bedWarAttackCD", 0)
	end
end
function GMHelper.ShowAllCobtrolXD(_)
	RootGuiLayout.Instance():showMainControl()
end
function GMHelper.PersonView(_)
	GMHelper:openInput({ "" }, function(p334)
		Blockman.Instance():setPersonView(p334)
		UIHelper.showToast("^00FF00Changed")
	end)
end
function GMHelper.BreakParticles(_)
	GMHelper:openInput({ "" }, function(p336)
		ClientHelper.putIntPrefs("BlockDestroyEffectSize", p336)
		UIHelper.showToast("^00FF00Changed")
	end)
end
function GMHelper.JailBreakBypass(_)
	RootGuiLayout.Instance():showMainControl()
	GUIGMControlPanel:hide()
end
function GMHelper.SpeedLineMode(_)
	Blockman.Instance().m_gameSettings:setPatternSpeedLine(1, 0.01)
	UIHelper.showToast("^00FF00Speed Line = Enable!")
	GUIGMControlPanel:hide()
end
function GMHelper.SpeedLineModeDisable(_)
	Blockman.Instance().m_gameSettings:setPatternSpeedLine(0, 0)
	UIHelper.showToast("^FF0000Speed Line = Disabled!")
	GUIGMControlPanel:hide()
end
function GMHelper.PatternTorchMode(_)
	Blockman.Instance().m_gameSettings:setPatternTorchStrength(1)
	UIHelper.showToast("^00FF00PatternTorch = Enabled!")
	GUIGMControlPanel:hide()
end
function GMHelper.PatternTorchModeOFF(_)
	Blockman.Instance().m_gameSettings:setPatternTorchStrength(0)
	UIHelper.showToast("^FF0000PatternTorch = Disabled!")
	GUIGMControlPanel:hide()
end
function GMHelper.CameraFlipModeRESET(_)
	Blockman.Instance().m_gameSettings:setFovSetting(1)
	GUIGMControlPanel:hide()
end
function GMHelper.CameraFlipModeON(_)
	Blockman.Instance().m_gameSettings:setFovSetting(90)
	GUIGMControlPanel:hide()
end
function GMHelper.Iikj(_, p345)
	local Rage_VM_param_777 = p345:getPosition()

	Rage_VM_param_777.y = Rage_VM_param_777.y + 0.5
	p345:teleportPosWithYaw(Rage_VM_param_777, (p345:getYaw()))
	GUIGMControlPanel:hide()
end

local t35 = {}
local t36 = {
	setHardness = function(p346, p347)
		p346.hardness = p347
	end,
	getHardness = function(p348)
		return p348.hardness
	end
}

local function u78(p349)
	if not u6() then
		return BlockManager.getBlockById(p349)
	end

	local Rage_VM_param_782 = T(Global, "BlockConfig"):getCfg(p349)

	if not Rage_VM_param_782 then
		return nil
	end

	return setmetatable(Rage_VM_param_782, {
		__index = t36
	})
end

function GMHelper.FustBreakBlockMode(_)
	local Rage_VM_param_784, Rage_VM_param_785, Rage_VM_param_786 = pairs(t35)

	while true do
		local Rage_VM_param_787

		Rage_VM_param_786, Rage_VM_param_787 = Rage_VM_param_784(Rage_VM_param_785, Rage_VM_param_786)

		if not Rage_VM_param_786 then
			break
		end

		local Rage_VM_param_788 = u78(Rage_VM_param_786)

		if Rage_VM_param_788 then
			Rage_VM_param_788:setHardness(Rage_VM_param_787)
		end
	end

	t35 = {}
	togFustBreakBlockMode = not togFustBreakBlockMode

	if togFustBreakBlockMode then
		createButton("Fast Break", "FustBreakBlockMode")

		for i = 1, 40000 do
			local Rage_VM_param_790 = i
			local Rage_VM_param_791 = u78(Rage_VM_param_790)

			if Rage_VM_param_791 then
				t35[Rage_VM_param_790] = Rage_VM_param_791:getHardness()
				Rage_VM_param_791:setHardness(not u6() and 0 or 1)
			end
		end

		cBlockManager.cGetBlockById(66):setNeedRender(false)
		cBlockManager.cGetBlockById(253):setNeedRender(false)
	end
end
function GMHelper.NoFallDamage(_)
	togNoFallDamage = not togNoFallDamage
	ground(0)

	if togNoFallDamage then
		if togTpClick then
			GMHelper:TpClick()
			GMSetting:changeColorByFunction("TpClick", false)
		end

		ground(1)
	end
end
function GMHelper.Freecam(_)
	togFreecam = not togFreecam
	GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetVisible(false)

	if togFreecam then
		GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetVisible(true)
	end
end
function GMHelper.SetBobbing(_)
	GMHelper:openInput({ "" }, function(p354)
		ClientHelper.putFloatPrefs("PlayerBobbingScale", p354)
		UIHelper.showToast("^00FF00Changed")
	end)
end
function GMHelper.test200(_)
	MsgSender.sendMsg(Messages:gameResetTimeHint())
	GUIGMControlPanel:hide()
end
function GMHelper.test600(_)
	local Rage_VM_param_797 = PlayerManager:getPlayers()
	local Rage_VM_param_798, Rage_VM_param_799, Rage_VM_param_800 = pairs(Rage_VM_param_797)

	while true do
		local Rage_VM_param_801

		Rage_VM_param_800, Rage_VM_param_801 = Rage_VM_param_798(Rage_VM_param_799, Rage_VM_param_800)

		if not Rage_VM_param_800 then
			break
		end

		if Rage_VM_param_801.Player then
			Rage_VM_param_801.Player.m_isPeopleActor = false
			EngineWorld:restorePlayerActor(Rage_VM_param_801)
		end
	end

	UIHelper.showToast("^00FF00yes")
	GUIGMControlPanel:hide()
end
function GMHelper.JustClick(_)
	LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1670 = VectorUtil.newVector3(0, 30, 0)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1670)
	end, 5, 2E+35)
end
function GMHelper.JustClick2(_)
	LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1671 = VectorUtil.newVector3(0, 300, 0)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1671)
	end, 5, 2E+35)
end
function GMHelper.OffChat(_)
	GUIManager:getWindowByName("Main-Chat-Message"):SetVisible(false)
	GUIManager:getWindowByName("Main-Chat-Message"):SetVisible(false)
end
function GMHelper.OnChat(_)
	GUIManager:getWindowByName("Main-Chat-Message"):SetVisible(true)
	GUIManager:getWindowByName("Main-Chat-Message"):SetVisible(true)
end
function GMHelper.Noclip(_)
	togNoclip = not togNoclip

	for i = 1, 40000 do
		local Rage_VM_param_808 = BlockManager.getBlockById(i)

		if Rage_VM_param_808 then
			Rage_VM_param_808:setBlockBounds(0, 0, 0, 1, 1, 1)
		end
	end

	if togNoclip then
		for i = 1, 40000 do
			local Rage_VM_param_810 = BlockManager.getBlockById(i)

			if Rage_VM_param_810 then
				Rage_VM_param_810:setBlockBounds(0, 0, 0, 0, 0, 0)
			end
		end
	end
end
function GMHelper.infreach(_)
	toginfreach = not toginfreach
	ClientHelper.putFloatPrefs("EntityReachDistance", 6.5)
	ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)

	if toginfreach then
		ClientHelper.putFloatPrefs("EntityReachDistance", 300)
		CEvents.AttackEntityEvent:registerCallBack(function(p363)
			if not PlayerManager:getPlayerByEntityId(p363) then
			end
		end)
	end
end
function GMHelper.NoclipOP(_)
	togNoclipOP = not togNoclipOP

	for i = 3, 133 do
		local Rage_VM_param_814 = BlockManager.getBlockById(i)

		if Rage_VM_param_814 then
			Rage_VM_param_814:setBlockBounds(0, 0, 0, 0, 0, 0)
		end
	end

	if togNoclipOP then
		return
	end

	for i = 3, 133 do
		local Rage_VM_param_816 = BlockManager.getBlockById(i)

		if Rage_VM_param_816 then
			Rage_VM_param_816:setBlockBounds(0, 0, 0, 1, 1, 1)
		end
	end
end
function GMHelper.JumpHeight(_)
	GMHelper:openInput({ "" }, function(p366)
		local Rage_VM_param_1674 = PlayerManager:getClientPlayer()
		local Rage_VM_param_1675 = Rage_VM_param_1674

		if Rage_VM_param_1674 then
			Rage_VM_param_1675 = Rage_VM_param_1674.Player
		end

		if Rage_VM_param_1675 then
			Rage_VM_param_1674.Player:setFloatProperty("JumpHeight", p366)
			UIHelper.showToast("^00FF00Success")
		end
	end)
end
function GMHelper.addCurrencyCustom(_, p368)
	GMHelper:openInput(p368, { "100" }, function(p369)
		(nil):addCurrency(tonumber(p369) or 0, "GM")
	end)
end
function GMHelper.GUIOpener(_)
	GMHelper:openInput({ ".json" }, function(p371)
		GUIManager:showWindowByName(p371)
	end)
end
function GMHelper.GUIViewOFF(_)
	GMHelper:openInput({ ".json" }, function(p373)
		GUIManager:hideWindowByName(p373)
	end)
end
function GMHelper.InsideGUI(_)
	GMHelper:openInput({
		"",
		""
	}, function(p375, p376)
		GUIManager:getWindowByName(p375):SetVisible(p376)
	end)
end
function GMHelper.ChangeNick(_)
	GMHelper:openInput({ "" }, function(p378)
		PlayerManager:getClientPlayer().Player:setShowName(p378)
		UIHelper.showToast("^FF00EENickNameChanged")
	end)
end
function GMHelper.LongJump(p379)
	togLongJump = not togLongJump
	LuaTimer:cancel(p379.glide)
	PlayerManager:getClientPlayer().Player:setGlide(false)

	if togLongJump then
		p379.glide = LuaTimer:scheduleTimer(function()
			PlayerManager:getClientPlayer().Player:setGlide(true)
		end, 1, 999999)
	end
end
function GMHelper.AdvancedUp(_)
	GMHelper:openInput({ "" }, function(p381)
		local Rage_VM_param_1683 = VectorUtil.newVector3(0, p381, 0)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1683)
	end)
end
function GMHelper.AdvancedIn(_)
	GMHelper:openInput({ "" }, function(p383)
		local Rage_VM_param_1685 = VectorUtil.newVector3(p383, 0, 0)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1685)
	end)
end
function GMHelper.AdvancedOn(_)
	GMHelper:openInput({ "" }, function(p385)
		local Rage_VM_param_1687 = VectorUtil.newVector3(0, 0, p385)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1687)
	end)
end
function GMHelper.tpKill9(_)
	togtpKill = not togtpKill

	if togtpKill then
		UIHelper.showToast("^00FF00Auto tp kill ON")
		GUIGMControlPanel1:hide()

		return
	end

	UIHelper.showToast("^00FF00Auto to kill OFF")
end
function GMHelper.AdvancedDirect(_)
	GMHelper:openInput({
		"",
		"",
		""
	}, function(p388, p389, p390)
		local Rage_VM_param_1691 = VectorUtil.newVector3(p388, p389, p390)

		PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_1691)
	end)
end
function GMHelper.tpPos(_)
	GMHelper:openInput({
		"",
		"",
		""
	}, function(p392, p393, p394)
		LuaTimer:scheduleTimer(function()
			local Rage_VM_param_2081 = VectorUtil.newVector3(p392, p393, p394)
			local Rage_VM_param_2082 = VectorUtil.newVector3(1, 10, 1)

			PlayerManager:getClientPlayer().Player:setPosition(Rage_VM_param_2081)
			PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_2082)
		end, 100, 1000000)
	end)
end
function GMHelper.HideHoldItem(_)
	A = not A
	PlayerManager:getClientPlayer():setHideHoldItem(true)
	UIHelper.showToast("^FF00EETrue")

	if A then
		PlayerManager:getClientPlayer():setHideHoldItem(false)
		UIHelper.showToast("^FF00EEFalse")
	end
end
function GMHelper.DevFlyI(p396)
	togDevFlyI = not togDevFlyI
	flyButton:SetVisible(false)
	PlayerManager:getClientPlayer()

	if togDevFlyI then
		flyButton:SetVisible(true)

		local Player = PlayerManager:getClientPlayer().Player
		local Rage_VM_param_844 = VectorUtil.newVector3(0, 1.35, 0)

		Player:setAllowFlying(true)
		Player:setSpeedAdditionLevel(values.speed)
		Player:setFlying(true)
		Player:moveEntity(Rage_VM_param_844)
		p396.fly = LuaTimer:scheduleTimer(function()
			if PlayerManager:getClientPlayer().Player:getIsFlying() then
				flyButton:SetVisible(false)

				return
			end

			flyButton:SetVisible(true)
			PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(0)
			LuaTimer:cancel(p396.fly)
		end, 50, -1)
		Player:setAllowFlying(true)
		Player:setSpeedAdditionLevel(values.speed)
		Player:setFlying(true)
		Player:moveEntity(Rage_VM_param_844)
	end
end
function GMHelper.SharpFly(_)
	togSharpFly = not togSharpFly
	ClientHelper.putBoolPrefs("DisableInertialFly", false)

	if togSharpFly then
		ClientHelper.putBoolPrefs("DisableInertialFly", true)
	end
end
function GMHelper.WaterPush(_)
	A = not A

	local Player = PlayerManager:getClientPlayer().Player

	Player:setBoolProperty("ignoreWaterPush", true)
	UIHelper.showToast("^FF00EEON")

	if A then
		Player:setBoolProperty("ignoreWaterPush", false)
		UIHelper.showToast("^FF00EEOFF")
	end
end
function GMHelper.ninja(p399)
	togninja = not togninja
	LuaTimer:cancel(p399.ninja)
	PlayerManager:getClientPlayer().doubleJumpCount = 1
	PlayerManager:getClientPlayer().Player:setFloatProperty("JumpHeight", 0.42)
	ClientHelper.putBoolPrefs("EnableDoubleJumps", false)

	if togninja then
		p399.ninja = LuaTimer:scheduleTimer(function()
			PlayerManager:getClientPlayer().Player:setFloatProperty("JumpHeight", 0.5)
			ClientHelper.putBoolPrefs("EnableDoubleJumps", true)
			PlayerManager:getClientPlayer().doubleJumpCount = 2
		end, 2000, 99999)
	end
end
function GMHelper.changeScale(_)
	GMHelper:openInput({ "" }, function(p401)
		PlayerManager:getClientPlayer().Player:setScale(p401)
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.BlockOFF(_)
	GMHelper:openInput({ "" }, function(p403)
		BlockManager.getBlockById(p403):setBlockBounds(0, 0, 0, 0, 0, 0)
	end)
end
function GMHelper.BlinkOP(_)
	togBlinkOP = not togBlinkOP
	ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
	createButton("Blink", "BlinkOP")

	if togBlinkOP then
		ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
		createButton("Blink", "BlinkOP")
	end
end
function GMHelper.BlockON(_)
	GMHelper:openInput({ "" }, function(p406)
		BlockManager.getBlockById(p406):setBlockBounds(0, 0, 0, 1, 1, 1)
	end)
end
function GMHelper.SpeedManager(p407)
	togSpeedManager = not togSpeedManager
	PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(0)
	LuaTimer:cancel(p407.fly)

	if togSpeedManager then
		p407.fly = LuaTimer:scheduleTimer(function()
			PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(values.speed)
		end, 50, -1)
	end
end
function GMHelper.SpeedUp(_)
	ClientHelper.putIntPrefs("SpeedAddMax", 20000000)
	UIHelper.showToast("^FF0000[DANGER]")
end
function GMHelper.NoHurtEffect(_)
	togNoHurtEffect = true

	if togNoHurtEffect then
		CEvents.HurtCameraEffectEvent:registerCallBack(function(_)
		end)
	end
end
function GMHelper.XRayManagerON(_)
	GMHelper:openInput({ "erase this text and write block id" }, function(p412)
		cBlockManager.cGetBlockById(p412):setNeedRender(false)
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.XRayManagerOFF(_)
	GMHelper:openInput({ "erase this text and write block id" }, function(p414)
		cBlockManager.cGetBlockById(p414):setNeedRender(true)
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.OFFDARK(_)
	cBlockManager.cGetBlockById(66):setNeedRender(false)
	cBlockManager.cGetBlockById(253):setNeedRender(false)

	for i = 1, 40000 do
		local Rage_VM_param_860 = BlockManager.getBlockById(i)

		if Rage_VM_param_860 then
			Rage_VM_param_860:setLightValue(150, 150, 150)
			UIHelper.showToast("^00FF00Success")
			GUIGMControlPanel:hide()
		end
	end
end
function GMHelper.SpawnNPC(_)
	GMHelper:openInput({ ".actor" }, function(p417)
		local Rage_VM_param_1705 = PlayerManager:getClientPlayer():getPosition()
		local Rage_VM_param_1706 = PlayerManager:getClientPlayer():getYaw()

		EngineWorld:addActorNpc(Rage_VM_param_1705, Rage_VM_param_1706, p417, function(_)
		end)
	end)
end
function GMHelper.spawnCar(_)
	GMHelper:openInput({ "Car ID (erase this text and write carID)" }, function(p420)
		local Rage_VM_param_1708 = PlayerManager:getClientPlayer():getPosition()

		Blockman.Instance():getWorld():addVehicle(Rage_VM_param_1708, p420, 5)
		UIHelper.showToast("^00FFEECar Spawn Success")
	end)
end
function GMHelper.TeleportByUID(_)
	GMHelper:openInput({ "id player" }, function(p422)
		local Player = PlayerManager:getClientPlayer().Player
		local Rage_VM_param_1711 = PlayerManager:getPlayerByUserId(p422)

		if Rage_VM_param_1711 then
			Player:setPosition(Rage_VM_param_1711:getPosition())
		end
	end)
end
function GMHelper.ChangeActorForMe(_)
	local Player = PlayerManager:getClientPlayer().Player

	GMHelper:openInput({ ".actor" }, function(p424)
		Blockman.Instance():getWorld():changePlayerActor(Player, p424)
		Blockman.Instance():getWorld():changePlayerActor(Player, p424)
		Player.m_isPeopleActor = false
		EngineWorld:restorePlayerActor(Player)
		UIHelper.showToast("^00FFEESuccess")
	end)
end
function GMHelper.AFKmode(_)
	A = not A
	PlayerManager:getClientPlayer().Player.m_rotateSpeed = 1
	UIHelper.showToast("^FF00EEStart")

	if A then
		PlayerManager:getClientPlayer().Player.m_rotateSpeed = 0
		UIHelper.showToast("^FF00EEStop")
	end
end
function GMHelper.DevnoClip(_)
	A = not A
	PlayerManager:getClientPlayer().Player.noClip = true
	UIHelper.showToast("^FF00EETurned on")

	if A then
		PlayerManager:getClientPlayer().Player.noClip = false
		UIHelper.showToast("^FF00EETurned off")
	end
end
function GMHelper.StepHeight(_)
	GMHelper:openInput({ "StepHeight Value" }, function(p428)
		PlayerManager:getClientPlayer().Player.stepHeight = p428
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.SpYaw(_)
	A = not A
	PlayerManager:getClientPlayer().Player.spYaw = true
	UIHelper.showToast("^FF00EEON")

	if A then
		PlayerManager:getClientPlayer().Player.spYaw = false
		UIHelper.showToast("^FF00EEOFF")
	end
end
function GMHelper.SpYawSet(_)
	GMHelper:openInput({ "" }, function(p431)
		PlayerManager:getClientPlayer().Player.spYawRadian = p431
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.HairSet(_)
	GMHelper:openInput({ "" }, function(_)
		PlayerManager:getClientPlayer().Player.m_isEquipWing = true
		PlayerManager:getClientPlayer().Player.m_isClothesChange = true
		PlayerManager:getClientPlayer().Player.m_isClothesChanged = true
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.SetHideAndShowArmor(_)
	A = not A
	LogicSetting.Instance():setHideArmor(true)
	UIHelper.showToast("^FF00EEON")

	if A then
		LogicSetting.Instance():setHideArmor(false)
		UIHelper.showToast("^FF00EEOFF")
	end
end
function GMHelper.SettingLongjump(_)
	togSettingLongjump = not togSettingLongjump
	PlayerManager:getClientPlayer().Player:setFloatProperty("JumpHeight", 0.4)

	if togSettingLongjump then
		PlayerManager:getClientPlayer().Player:setFloatProperty("JumpHeight", values.HighJump)
	end
end
function GMHelper.SetAlpha(_)
	GMHelper:openInput({
		"Gui name",
		"alpha"
	}, function(p437, p438)
		GUIManager:getWindowByName(p437):SetAlpha(p438)
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeHair(_)
	GMHelper:openInput({ "number" }, function(p440)
		local Player = PlayerManager:getClientPlayer().Player

		Player.m_outLooksChanged = true
		Player.m_hairID = p440
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeFace(_)
	GMHelper:openInput({ "number" }, function(p442)
		local Player = PlayerManager:getClientPlayer().Player

		Player.m_outLooksChanged = true
		Player.m_faceID = p442
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeTops(_)
	GMHelper:openInput({ "number" }, function(p444)
		local Player = PlayerManager:getClientPlayer().Player

		Player.m_outLooksChanged = true
		Player.m_topsID = p444
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangePants(_)
	GMHelper:openInput({ "number" }, function(p446)
		local Player = PlayerManager:getClientPlayer().Player

		Player.m_outLooksChanged = true
		Player.m_pantsID = p446
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeShoes(_)
	GMHelper:openInput({ "number" }, function(p448)
		local Player = PlayerManager:getClientPlayer().Player

		Player.m_outLooksChanged = true
		Player.m_shoesID = p448
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeGlasses(_)
	GMHelper:openInput({ "number" }, function(p450)
		local Player = PlayerManager:getClientPlayer().Player

		Player.m_outLooksChanged = true
		Player.m_glassesId = p450
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeScarf(_)
	GMHelper:openInput({ "number" }, function(p452)
		local Player = PlayerManager:getClientPlayer().Player

		Player.m_outLooksChanged = true
		Player.m_scarfId = p452
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeWing(_)
	GMHelper:openInput({ "number" }, function(p454)
		local Player = PlayerManager:getClientPlayer().Player

		Player.m_outLooksChanged = true
		Player.m_wingId = p454
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeHat(_)
	GMHelper:openInput({ "number" }, function(p456)
		PlayerManager:getClientPlayer().Player.m_hatId = p456
		PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeDecHat(_)
	GMHelper:openInput({ "number" }, function(p458)
		PlayerManager:getClientPlayer().Player.m_decorate_hatId = p458
		PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeTail(_)
	GMHelper:openInput({ "number" }, function(p460)
		PlayerManager:getClientPlayer().Player.m_tailId = p460
		PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeBagI(_)
	GMHelper:openInput({ "number" }, function(p462)
		PlayerManager:getClientPlayer().Player.m_bagId = p462
		PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.ChangeCrown(_)
	GMHelper:openInput({ "" }, function(p464)
		PlayerManager:getClientPlayer().Player.m_crownId = p464
		PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.CreateGUIDEArrow(_)
	local Rage_VM_param_889 = PlayerManager:getClientPlayer():getPosition()

	PlayerManager:getClientPlayer().Player:addGuideArrow(Rage_VM_param_889)
	UIHelper.showToast("^FF00EESuccess")
end
function GMHelper.DelAllGUIDEArrow(_)
	PlayerManager:getClientPlayer().Player:deleteAllGuideArrow()
	UIHelper.showToast("^FF00EESuccess")
end
function GMHelper.SetUpBuild(_)
	GMHelper:openInput({ "" }, function(p468)
		ClientHelper.putIntPrefs("QuicklyBuildBlockNum", p468)
		UIHelper.showToast("^FF00EESuccess")
	end)
end
function GMHelper.EasyWay(_)
	PlayerManager:getClientPlayer():getInventory():removeAllItemFromHotBar()
	UIHelper.showToast("^FF00EESuccess")
end
function GMHelper.WatchMode(_)
	A = not A

	local Rage_VM_param_894 = VectorUtil.newVector3(0, 1.35, 0)

	PlayerManager:getClientPlayer().Player:setAllowFlying(true)
	PlayerManager:getClientPlayer().Player:setFlying(true)
	PlayerManager:getClientPlayer().Player:setWatchMode(true)
	PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_894)
	UIHelper.showToast("^FF00EEON")

	if A then
		PlayerManager:getClientPlayer().Player:setAllowFlying(false)
		PlayerManager:getClientPlayer().Player:setFlying(false)
		PlayerManager:getClientPlayer().Player:setWatchMode(false)
		UIHelper.showToast("^FF00EEOFF")
	end
end
function GMHelper.ShowRegion(_)
	UIHelper.showToast("RegionID=" .. Game:getRegionId())
end
function GMHelper.GameID(_)
	UIHelper.showToast("GameID=" .. CGame.Instance():getGameType())
end
function GMHelper.LogInfo(_)
	local Rage_VM_param_898 = HostApi.getClientInfo()

	ClientHelper.onSetClipboard(Rage_VM_param_898)
	UIHelper.showToast("^FF00EESuccess")
end
function GMHelper.GetAllInfoT(_)
	local Rage_VM_param_900 = PlayerManager:getPlayers()
	local Rage_VM_param_901, Rage_VM_param_902, Rage_VM_param_903 = pairs(Rage_VM_param_900)

	while true do
		local Rage_VM_param_904

		Rage_VM_param_903, Rage_VM_param_904 = Rage_VM_param_901(Rage_VM_param_902, Rage_VM_param_903)

		if not Rage_VM_param_903 then
			break
		end

		MsgSender.sendMsg("^FF0000INFO: " .. string.format("^FF0000UserName: %s {} ID: %s {} Gender: %s", Rage_VM_param_904:getName(), Rage_VM_param_904.userId, Rage_VM_param_904.Player:getSex()))
	end
end
function GMHelper.test2300(_)
	GMHelper:openInput({ "" }, function(p476)
		local Player = PlayerManager:getClientPlayer().Player

		Player.length = p476
		Player.isCollidedHorizontally = true
		Player.isCollidedVertically = true
		Player.isCollided = true
	end)
end
function GMHelper.test1222(_)
	local Player = PlayerManager:getClientPlayer().Player

	Player.m_canBuildBlockQuickly = true
	Player.m_quicklyBuildBlock = true
	UIHelper.showToast("2:")
end
function GMHelper.test2222(_)
	PlayerManager:getClientPlayer().Player.m_opacity = 0.2
	UIHelper.showToast("1:")
end
function GMHelper.spawnCar(_)
	GMHelper:openInput({ "Car ID (erase this text and write carID)" }, function(p480)
		local Rage_VM_param_1743 = PlayerManager:getClientPlayer():getPosition()
		local Rage_VM_param_1744 = PlayerManager:getClientPlayer():getYaw()

		Blockman.Instance():getWorld():addVehicle(Rage_VM_param_1743, p480, Rage_VM_param_1744)
		UIHelper.showToast("^FF00EECar Spawn Success")
	end)
end
function GMHelper.SpawnItem(_)
	GMHelper:openInput({
		"ID",
		"Count"
	}, function(p482, p483)
		local Rage_VM_param_1747 = PlayerManager:getClientPlayer():getPosition()

		EngineWorld:addEntityItem(p482, p483, 0, 600, Rage_VM_param_1747, VectorUtil.ZERO)
	end)
end
function GMHelper.NoFallSet(_)
	GMHelper:openInput({ "TypeValue" }, function(p485)
		ClientHelper.putIntPrefs("SprintLimitCheck", p485)
		UIHelper.showToast("Done, now it will have like a protection")
	end)
end
function GMHelper.MineReset(_)
	local Rage_VM_param_913 = VectorUtil.newVector3(536, 2.78, -136)
	local Rage_VM_param_914 = VectorUtil.newVector3(0, 0, 0)

	PlayerManager:getClientPlayer().Player:setPosition(Rage_VM_param_913)
	PlayerManager:getClientPlayer().Player:moveEntity(Rage_VM_param_914)
end
function GMHelper.quickblock(_)
	togquickblock = not togquickblock
	ClientHelper.putIntPrefs("QuicklyBuildBlockNum", 1)

	if togquickblock then
		GMHelper:openInput({ "number" }, function(p488)
			ClientHelper.putIntPrefs("QuicklyBuildBlockNum", p488)
			UIHelper.showToast("^FF00EESuccess")
			GUIGMControlPanel:hide()
		end)
	end
end
function GMHelper.startParachute(_)
	togstartParachute = not togstartParachute

	local Rage_VM_param_917 = PlayerManager:getClientPlayer()

	Rage_VM_param_917.Player:setAllowFlying(false)
	Rage_VM_param_917.Player:setFlying(false)

	if togstartParachute then
		local Rage_VM_param_918 = VectorUtil.newVector3(0, 1.35, 0)
		local Rage_VM_param_919 = PlayerManager:getClientPlayer()

		Rage_VM_param_919.Player:setAllowFlying(true)
		Rage_VM_param_919.Player:setFlying(true)
		Rage_VM_param_919.Player:moveEntity(Rage_VM_param_918)
		PlayerManager:getClientPlayer().Player:startParachute()
	end
end
function GMHelper.FlyParachute(_)
	local Rage_VM_param_921 = VectorUtil.newVector3(0, 1.35, 0)
	local Rage_VM_param_922 = PlayerManager:getClientPlayer()

	Rage_VM_param_922.Player:setAllowFlying(true)
	Rage_VM_param_922.Player:setFlying(true)
	Rage_VM_param_922.Player:moveEntity(Rage_VM_param_921)
	PlayerManager:getClientPlayer().Player:startParachute()
	text:SetBackgroundColor(Color.GREEN)
end
function GMHelper.SetBlockToAir(_)
	GMHelper:openInput({
		"block Position X",
		"block Position Y",
		"block Position Z"
	}, function(p492, p493, p494)
		local Rage_VM_param_1753 = VectorUtil.newVector3(p492, p493, p494)

		EngineWorld:setBlockToAir(Rage_VM_param_1753)
	end)
end
function GMHelper.SpawnBlock(_)
	GMHelper:openInput({ "" }, function(p496)
		local Rage_VM_param_1755 = PlayerManager:getClientPlayer():getPosition()

		EngineWorld:setBlock(Rage_VM_param_1755, p496)
	end)
end
function GMHelper.ChangeBlockTextures(_, p498)
	if not GMHelper.blockTextures then
		Blockman.Instance():changeBlockTextures("./package_02_32.zip")
		GMHelper.blockTextures = true
	else
		Blockman.Instance():changeBlockTextures("")
		GMHelper.blockTextures = false
	end

	if #p498 > 0 then
		Blockman.Instance():changeBlockTextures("Media/Textures/package/" .. p498)
	else
		Blockman.Instance():changeBlockTextures("")
	end

	GUIGMControlPanel:hide()
end
function GMHelper.updateBedWarArrowSpeed(_)
	GMHelper:openInput({ "speed" }, function(p500)
		local Rage_VM_param_1757 = tonumber(p500) or 0

		PlayerManager:getClientPlayer().Player:setFloatProperty("ArrowSpeedScale", Rage_VM_param_1757)

		local _PlayerManager = PlayerManager
		local getClientPlayer = _PlayerManager.getClientPlayer
		local t37 = {
			pid = "updateBedWarArrowSpeed",
			scale = Rage_VM_param_1757
		}

		getClientPlayer(_PlayerManager):sendPacket(t37)
	end)
end
function GMHelper.Rvanka(_)
	LuaTimer:scheduleTimer(function()
		local Player = PlayerManager:getClientPlayer().Player
		local Rage_VM_param_1762 = PlayerManager:getPlayers()
		local Rage_VM_param_1763, Rage_VM_param_1764, Rage_VM_param_1765 = pairs(Rage_VM_param_1762)

		while true do
			local Rage_VM_param_1766

			Rage_VM_param_1765, Rage_VM_param_1766 = Rage_VM_param_1763(Rage_VM_param_1764, Rage_VM_param_1765)

			if not Rage_VM_param_1765 then
				break
			end

			local u1767 = Rage_VM_param_1766

			if u1767 ~= Player then
				LuaTimer:scheduleTimer(function()
					local Rage_VM_param_2084 = VectorUtil.newVector3(u1767:getPosition().x, u1767:getPosition().y + tonumber(tostring(10), 2), u1767:getPosition().z)

					Player:setPosition(Rage_VM_param_2084)
				end, tonumber(tostring(1010), 2), tonumber(tostring(1111101000), 2))
			end
		end
	end, tonumber(tostring(1111101001), 2), -tonumber(tostring(1), 2))
end
function GMHelper.Tracer(p502)
	togTracer = not togTracer
	LuaTimer:cancel(p502.tracer)
	PlayerManager:getClientPlayer().Player:deleteAllGuideArrow()

	if togTracer then
		local u930 = nil

		u930 = PlayerManager:getClientPlayer()
		p502.tracer = LuaTimer:scheduleTimer(function()
			PlayerManager:getClientPlayer().Player:deleteAllGuideArrow()

			local Rage_VM_param_1768 = PlayerManager:getPlayers()
			local Rage_VM_param_1769, Rage_VM_param_1770, Rage_VM_param_1771 = pairs(Rage_VM_param_1768)

			while true do
				local Rage_VM_param_1772

				Rage_VM_param_1771, Rage_VM_param_1772 = Rage_VM_param_1769(Rage_VM_param_1770, Rage_VM_param_1771)

				if not Rage_VM_param_1771 then
					break
				end

				if Rage_VM_param_1772 ~= u930 then
					local Rage_VM_param_1773 = PlayerManager:getClientPlayer()
					local getPosition = Rage_VM_param_1772.getPosition
					local Player = Rage_VM_param_1773.Player
					local t38 = { getPosition(Rage_VM_param_1772) }

					Player:addGuideArrow(Rage_VM_param_1(t38))
				end
			end
		end, 200, 99999)
	end
end
function GMHelper.Scaffold(p503)
	togScaffold = not togScaffold
	LuaTimer:cancel(p503.timer)

	if togScaffold then
		GMHelper:openInput({ "BlockID" }, function(p504)
			p503.timer = LuaTimer:scheduleTimer(function()
				local Rage_VM_param_2085 = PlayerManager:getClientPlayer():getPosition()

				EngineWorld:setBlock(VectorUtil.newVector3(Rage_VM_param_2085.x, Rage_VM_param_2085.y - 2, Rage_VM_param_2085.z), p504)

				local _EngineWorld = EngineWorld
				local newVector3 = VectorUtil.newVector3
				local x = Rage_VM_param_2085.x
				local y = Rage_VM_param_2085.y
				local z = Rage_VM_param_2085.z

				_EngineWorld:setBlock(newVector3(x - 1, y - 2, z - 1), p504)

				local _EngineWorld2 = EngineWorld
				local newVector3_2 = VectorUtil.newVector3
				local x4 = Rage_VM_param_2085.x
				local y5 = Rage_VM_param_2085.y
				local z2 = Rage_VM_param_2085.z

				_EngineWorld2:setBlock(newVector3_2(x4 + 1, y5 - 2, z2 + 1), p504)

				local _EngineWorld3 = EngineWorld
				local newVector3_3 = VectorUtil.newVector3
				local x5 = Rage_VM_param_2085.x
				local y6 = Rage_VM_param_2085.y
				local z3 = Rage_VM_param_2085.z

				_EngineWorld3:setBlock(newVector3_3(x5, y6 - 2, z3 + 1), p504)

				local _EngineWorld4 = EngineWorld
				local newVector3_4 = VectorUtil.newVector3
				local x6 = Rage_VM_param_2085.x
				local y7 = Rage_VM_param_2085.y
				local setBlock = _EngineWorld4.setBlock
				local z4 = Rage_VM_param_2085.z

				setBlock(_EngineWorld4, newVector3_4(x6, y7 - 2, z4 - 1), p504)
				EngineWorld:setBlock(VectorUtil.newVector3(Rage_VM_param_2085.x + 1, Rage_VM_param_2085.y - 2, Rage_VM_param_2085.z), p504)
				EngineWorld:setBlock(VectorUtil.newVector3(Rage_VM_param_2085.x - 1, Rage_VM_param_2085.y - 2, Rage_VM_param_2085.z), p504)

				local _EngineWorld5 = EngineWorld
				local newVector3_5 = VectorUtil.newVector3
				local x7 = Rage_VM_param_2085.x
				local y8 = Rage_VM_param_2085.y
				local setBlock2 = _EngineWorld5.setBlock
				local z5 = Rage_VM_param_2085.z

				setBlock2(_EngineWorld5, newVector3_5(x7 - 1, y8 - 2, z5 + 1), p504)
				EngineWorld:setBlock(VectorUtil.newVector3(Rage_VM_param_2085.x + 1, Rage_VM_param_2085.y - 2, Rage_VM_param_2085.z - 1), p504)
			end, 0.15, -1)
		end)
	end
end
function GMHelper.eze(_)
	if K0000 then
		local Rage_VM_param_934 = nil
		local Rage_VM_param_935 = PlayerManager:getPlayers()
		local Rage_VM_param_936 = PlayerManager:getClientPlayer()
		local n34 = 1e999
		local Rage_VM_param_938, Rage_VM_param_939, Rage_VM_param_940 = pairs(Rage_VM_param_935)

		while true do
			local Rage_VM_param_941

			Rage_VM_param_940, Rage_VM_param_941 = Rage_VM_param_938(Rage_VM_param_939, Rage_VM_param_940)

			if not Rage_VM_param_940 then
				break
			end

			local getPosition = Rage_VM_param_941.getPosition
			local getPosition2 = Rage_VM_param_936.getPosition
			local _MathUtil = MathUtil
			local Rage_VM_param_945 = getPosition(Rage_VM_param_941)
			local t39 = { getPosition2(Rage_VM_param_936) }
			local Rage_VM_param_947 = _MathUtil:distanceSquare3d(Rage_VM_param_945, Rage_VM_param_1(t39))
			local Rage_VM_param_948 = Rage_VM_param_947 < 42

			if Rage_VM_param_948 then
				Rage_VM_param_948 = Rage_VM_param_941 ~= Rage_VM_param_936
			end

			if Rage_VM_param_948 and Rage_VM_param_947 < n34 then
				Rage_VM_param_934 = Rage_VM_param_941
				n34 = Rage_VM_param_947
			end
		end

		local Rage_VM_param_949 = Rage_VM_param_934

		if Rage_VM_param_934 then
			Rage_VM_param_949 = Rage_VM_param_934.Player:isEntityAlive()
		end

		if Rage_VM_param_949 then
			UIHelper.showToast("^00FFFFName : " .. Rage_VM_param_934.Player:getEntityName() .. "  •  " .. "Health : " .. Rage_VM_param_934.Player:getHealth())
		end
	end
end
function GMHelper.PingXD(_)
	GUI = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-Ping")
	GUI:SetVisible(true)
	GUI_Pos = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-Position")
	GUI_Pos:SetVisible(true)
	GUI:SetHorizontalAlignment(HorizontalAlignment.Left)
	GUI:SetVerticalAlignment(VerticalAlignment.Bottom)
	GUI:SetWidth({
		0,
		200
	})
	GUI:SetHeight({
		0,
		20
	})
	GUI:SetBordered(true)
	GUI:SetTouchable(false)
	GUI:SetXPosition({
		0,
		15
	})
	GUI:SetYPosition({
		0,
		-55
	})
	GUISystem.Instance():GetRootWindow():AddChildWindow(GUI)
	GUI_Pos:SetHorizontalAlignment(HorizontalAlignment.Left)
	GUI_Pos:SetVerticalAlignment(VerticalAlignment.Bottom)
	GUI_Pos:SetWidth({
		0,
		200
	})
	GUI_Pos:SetHeight({
		0,
		20
	})
	GUI_Pos:SetBordered(true)
	GUI_Pos:SetTouchable(false)
	GUI_Pos:SetXPosition({
		0,
		15
	})
	GUI_Pos:SetYPosition({
		0,
		-28
	})
	GUISystem.Instance():GetRootWindow():AddChildWindow(GUI_Pos)

	local Rage_VM_param_951 = u5()

	if Rage_VM_param_951 then
		Rage_VM_param_951 = u6()
	end

	if Rage_VM_param_951 then
		GUI:SetVisible(false)
		GUI_Pos:SetVisible(false)
	end

	LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1779 = Root.Instance():getFPS()
		local Rage_VM_param_1780 = ClientNetwork.Instance():getRaknetPing()
		local Rage_VM_param_1781 = PlayerManager:getClientPlayer().Player:getPosition()
		local Rage_VM_param_1782 = string.format("Pos: %.2f / %.2f / %.2f", Rage_VM_param_1781.x, Rage_VM_param_1781.y, Rage_VM_param_1781.z)
		local Rage_VM_param_1783 = string.format("Fps: %d  Ping: %d", Rage_VM_param_1779, Rage_VM_param_1780)

		GUI:SetText(Rage_VM_param_1783)
		GUI_Pos:SetText(Rage_VM_param_1782)
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1784, Rage_VM_param_1785, Rage_VM_param_1786 = u35(n8)

		GUI:SetTextColor({
			Rage_VM_param_1784,
			Rage_VM_param_1785,
			Rage_VM_param_1786,
			0.6
		})
		GUI_Pos:SetTextColor({
			Rage_VM_param_1784,
			Rage_VM_param_1785,
			Rage_VM_param_1786,
			0.6
		})
	end, 100, -1)
end
function GMHelper.TimeEe(_)
	local u953 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-Timer")

	u953:SetVisible(true)
	u953:SetText(currentDate)
	u953:SetWidth({
		0,
		150
	})
	u953:SetHeight({
		0,
		20
	})
	u953:SetBordered(true)
	u953:SetTouchable(false)
	u953:SetXPosition({
		0,
		15
	})
	u953:SetYPosition({
		0,
		680
	})
	GUISystem.Instance():GetRootWindow():AddChildWindow(u953)
	LuaTimer:scheduleTimer(function()
		local timestamp = os.time()

		currentDate = os.date("%I:%M %p", timestamp)
		u953:SetText(currentDate)
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1788, Rage_VM_param_1789, Rage_VM_param_1790, _ = u35(n8)

		u953:SetTextColor({
			Rage_VM_param_1788,
			Rage_VM_param_1789,
			Rage_VM_param_1790,
			0.6
		})
	end, 100, -1)
end
function GMHelper.Players(_)
	local u955 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-Players")

	u955:SetVisible(true)
	u955:SetBordered(true)
	u955:SetTouchable(false)

	local n35 = 0
	local Rage_VM_param_957, Rage_VM_param_958, Rage_VM_param_959 = pairs(PlayerManager:getPlayers())

	while true do
		local Rage_VM_param_960

		Rage_VM_param_959, Rage_VM_param_960 = Rage_VM_param_957(Rage_VM_param_958, Rage_VM_param_959)

		if not Rage_VM_param_959 then
			break
		end

		if Rage_VM_param_960 ~= PlayerManager:getClientPlayer() then
			n35 = n35 + 1
		end
	end

	u955:SetText("Players: " .. n35)
	u955:SetWidth({
		0,
		150
	})
	u955:SetHeight({
		0,
		20
	})
	u955:SetXPosition({
		0,
		1400
	})
	u955:SetYPosition({
		0,
		640
	})
	GUISystem.Instance():GetRootWindow():AddChildWindow(u955)
	LuaTimer:scheduleTimer(function()
		local n36 = 0
		local Rage_VM_param_1793, Rage_VM_param_1794, Rage_VM_param_1795 = pairs(PlayerManager:getPlayers())

		while true do
			local Rage_VM_param_1796

			Rage_VM_param_1795, Rage_VM_param_1796 = Rage_VM_param_1793(Rage_VM_param_1794, Rage_VM_param_1795)

			if not Rage_VM_param_1795 then
				break
			end

			if Rage_VM_param_1796 ~= PlayerManager:getClientPlayer() then
				n36 = n36 + 1
			end
		end

		u955:SetText("Players: " .. n36)
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1797, Rage_VM_param_1798, Rage_VM_param_1799, _ = u35(n8)

		u955:SetTextColor({
			Rage_VM_param_1797,
			Rage_VM_param_1798,
			Rage_VM_param_1799,
			0.6
		})
	end, 100, -1)
end
function GMHelper.Credits(_)
	CenterToastg60 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-xuy60")
	CenterToastg60:SetHorizontalAlignment(HorizontalAlignment.Center)
	CenterToastg60:SetVerticalAlignment(VerticalAlignment.Center)
	CenterToastg60:SetTextHorzAlign(HorizontalAlignment.Center)
	CenterToastg60:SetTextVertAlign(VerticalAlignment.Center)
	CenterToastg60:SetHeight({
		0,
		50
	})
	CenterToastg60:SetWidth({
		0,
		700
	})
	CenterToastg60:SetLevel(2)
	CenterToastg60:SetBordered(true)
	CenterToastg60:SetTouchable(false)
	GUISystem.Instance():GetRootWindow():AddChildWindow(CenterToastg60)

	local app_version = json.decode(HostApi.getClientInfo()).app_version

	LuaTimer:scheduleTimer(function()
		CenterToastg60:SetText("Credits: IamNotKoper & EternalHacker [" .. app_version .. "] [Release 2.2.9]")
	end, 1, -1)
	CenterToastg60:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	CenterToastg60:SetYPosition({
		-0.5,
		125
	})
	CenterToastg60:SetXPosition({
		0,
		0
	})
	CenterToastg60:SetVisible(true)
	LuaTimer:scheduleTimer(function()
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1801, Rage_VM_param_1802, Rage_VM_param_1803, _ = u35(n8)

		CenterToastg60:SetTextColor({
			Rage_VM_param_1801,
			Rage_VM_param_1802,
			Rage_VM_param_1803,
			0.6
		})
	end, 100, -1)
end
function GMHelper.Credits2(_)
	local u964 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-xuy60")

	u964:SetHorizontalAlignment(HorizontalAlignment.Center)
	u964:SetVerticalAlignment(VerticalAlignment.Center)
	u964:SetTextHorzAlign(HorizontalAlignment.Center)
	u964:SetTextVertAlign(VerticalAlignment.Center)
	u964:SetHeight({
		0,
		50
	})
	u964:SetWidth({
		0,
		700
	})
	u964:SetLevel(2)
	u964:SetBordered(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(u964)
	u964:SetText("Credits: IamNotKoper & EternalHacker [?.??.?] [Release 1.8]")
	u964:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	u964:SetYPosition({
		-0.5,
		125
	})
	u964:SetXPosition({
		0,
		0
	})
	u964:SetVisible(true)
	LuaTimer:scheduleTimer(function()
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1805, Rage_VM_param_1806, Rage_VM_param_1807, _ = u35(n8)

		u964:SetTextColor({
			Rage_VM_param_1805,
			Rage_VM_param_1806,
			Rage_VM_param_1807,
			0.6
		})
	end, 100, -1)
end

GUIGMItem = require("engine_client.ui.window.GUIGMItem")

function GUIGMItem.onDataChanged(p511, p512)
	p511.data = p512

	if p511.data.func == "" then
		p511.tvItem:SetBackgroundColor(Color.TRANS)
	end

	p511.tvItem:SetProperty("Font", "HT14")
	p511.tvItem:SetText(p512.name)

	if p511.tvItem:GetTextWidth() > p511.tvItem:GetPixelSize().x then
		p511.tvItem:SetProperty("Font", "HT12")

		if p511.tvItem:GetTextWidth() > p511.tvItem:GetPixelSize().x then
			p511.tvItem:SetProperty("Font", "HT10")
		end
	end

	if p511.data.color then
		p511.tvItem:SetBackgroundColor(p511.data.color)
	end
end
function GMHelper.atk(_)
	togatk = not togatk
	GUIManager:getWindowByName("Main-Main-Attack-Operate"):SetVisible(false)

	if togatk then
		GUIManager:getWindowByName("Main-Main-Attack-Operate"):SetVisible(true)
	end
end
function GMHelper.Bypass(p514)
	togBypass = not togBypass
	ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
	LuaTimer:cancel(p514.t1)
	LuaTimer:cancel(p514.t2)
	CEvents.PlayerJumpEvent:unregisterAll()

	if togBypass then
		local n37 = 0

		CEvents.PlayerJumpEvent:registerCallBack(function(p515)
			if p515 == CGame.Instance():getPlatformUserId() then
				n37 = n37 + 1

				if n37 > 1 then
					ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
				end
			end
		end)
		p514.t2 = LuaTimer:scheduleTimer(function()
			if PlayerManager:getClientPlayer().Player.onGround then
				n37 = 0
			end

			if PlayerManager:getClientPlayer().Player:getIsFlying() then
				ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
			end
		end, 50, 9999999)
		p514.t1 = LuaTimer:scheduleTimer(function()
			ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
		end, 600, 9999999)
	end
end
function GMHelper.TpKiller(p516)
	togTpKiller = not togTpKiller
	LuaTimer:cancel(p516.tpkil)
	PlayerManager:getClientPlayer().Player:unbindParentEntity()

	if togTpKiller then
		createButton("AutoTpKiller", "TpKiller")
		p516.tpkil = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1810 = PlayerManager:getPlayers()
			local Rage_VM_param_1811 = PlayerManager:getClientPlayer():getEntityId()
			local Rage_VM_param_1812 = PlayerManager:getClientPlayer().Player:getTeamId()
			local Rage_VM_param_1813, Rage_VM_param_1814, Rage_VM_param_1815 = pairs(Rage_VM_param_1810)

			while true do
				local Rage_VM_param_1816

				Rage_VM_param_1815, Rage_VM_param_1816 = Rage_VM_param_1813(Rage_VM_param_1814, Rage_VM_param_1815)

				if not Rage_VM_param_1815 then
					break
				end

				local Rage_VM_param_1817 = Rage_VM_param_1811 ~= Rage_VM_param_1816.entityId

				if Rage_VM_param_1817 then
					Rage_VM_param_1817 = Rage_VM_param_1812 ~= Rage_VM_param_1816:getTeamId()
				end

				if Rage_VM_param_1817 then
					PlayerManager:getClientPlayer().Player:bindParentEntity(Rage_VM_param_1816.entityId)
				end
			end
		end, 1000, 9999999)
	end
end

local u79 = nil

function GMHelper.RespawnInSamePlace(_)
	togRespawnInSamePlace = togRespawnInSamePlace or false
	togRespawnInSamePlace = not togRespawnInSamePlace

	local Rage_VM_param_972 = not togRespawnInSamePlace

	if Rage_VM_param_972 then
		Rage_VM_param_972 = u79
	end

	if Rage_VM_param_972 then
		CEvents.LuaPlayerDeathEvent:unregisterCallBack(u79)
		u79 = nil

		return
	end

	if togRespawnInSamePlace then
		function u79(p518)
			if p518 == CGame.Instance():getPlatformUserId() then
				LuaTimer:scheduleTimer(function()
					ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
				end, 1, 1000)

				local Player = PlayerManager:getClientPlayer().Player
				local Rage_VM_param_1820 = Player:getPosition()
				local Rage_VM_param_1821 = Player:getPitch()
				local Rage_VM_param_1822 = Player:getYaw()

				if CGame.Instance():getGameType() == "g1014" then
					respawn()
					LuaTimer:scheduleTimer(function()
						respawn()
					end, 1000, 6)
				else
					PacketSender:getSender():sendRebirth()
					Teleport(VectorUtil.newVector3(math.floor(Rage_VM_param_1820.x), math.floor(Rage_VM_param_1820.y), (math.floor(Rage_VM_param_1820.z))))
				end

				Player.rotationPitch = Rage_VM_param_1821
				Player.rotationYaw = Rage_VM_param_1822
				RootGuiLayout.Instance():showMainControl()
			end
		end

		CEvents.LuaPlayerDeathEvent:registerCallBack(u79)
	end
end
function GMHelper.BwRespawnInSamePlace(_)
	local function u974(p520)
		if p520.y < 10 then
			return
		end

		local Player = PlayerManager:getClientPlayer().Player
		local Rage_VM_param_1826 = Player:getPosition()
		local Rage_VM_param_1827 = p520.x - Rage_VM_param_1826.x
		local Rage_VM_param_1828 = p520.z - Rage_VM_param_1826.z
		local t40 = {
			x = Rage_VM_param_1827,
			z = Rage_VM_param_1828
		}

		if Rage_VM_param_1826.y < 165 then
			Rage_VM_param_1826.y = 165
		end

		if math.abs(t40.x) > 18 then
			if t40.x > 0 then
				Rage_VM_param_1826.x = Rage_VM_param_1826.x + 18
			else
				Rage_VM_param_1826.x = Rage_VM_param_1826.x - 18
			end

			Player:setPosition(Rage_VM_param_1826)
			LuaTimer:scheduleTimer(function()
				u974(p520)
			end, 100, 1)

			return
		end

		if math.abs(t40.z) > 18 then
			if t40.z > 0 then
				Rage_VM_param_1826.z = Rage_VM_param_1826.z + 18
			else
				Rage_VM_param_1826.z = Rage_VM_param_1826.z - 18
			end

			Player:setPosition(Rage_VM_param_1826)
			LuaTimer:scheduleTimer(function()
				u974(p520)
			end, 100, 1)

			return
		end

		Player:setPosition(((function(p521)
			repeat
				if EngineWorld:getBlockId(p521) == BlockID.AIR then
					return p521
				end

				p521.y = p521.y + 1
			until p521.y > 256

			return p521
		end)(p520)))

		local Rage_VM_param_1830 = PlayerManager:getClientPlayer()

		Rage_VM_param_1830.Player:setAllowFlying(false)
		Rage_VM_param_1830.Player:setFlying(false)
		Rage_VM_param_1830.Player.rotationYaw = szmata
		Rage_VM_param_1830.Player.rotationPitch = chuje
	end

	togBwRespawnInSamePlace = not togBwRespawnInSamePlace

	local Rage_VM_param_975 = not togBwRespawnInSamePlace

	if Rage_VM_param_975 then
		Rage_VM_param_975 = u79
	end

	if Rage_VM_param_975 then
		CEvents.LuaPlayerDeathEvent:unregisterCallBack(u79)
		u79 = nil

		return
	end

	if togBwRespawnInSamePlace then
		function u79(p522)
			if p522 == CGame.Instance():getPlatformUserId() then
				LuaTimer:scheduleTimer(function()
					ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
				end, 1, 1000)

				local u1832 = PlayerManager:getClientPlayer().Player:getPosition()
				local u1833 = PlayerManager:getClientPlayer().Player:getYaw()

				PlayerManager:getClientPlayer().Player:getPitch()
				LuaTimer:scheduleTimer(function()
					PacketSender:getSender():sendRebirth()

					local Rage_VM_param_2114 = PlayerManager:getClientPlayer()
					local Rage_VM_param_2115 = string.format("%f,%f,%f,%f", u1832.x, u1832.y, u1832.z, u1833)

					Rage_VM_param_2114:sendPacket({
						pid = "PlayerTicketTipGo",
						type = 1,
						param = Rage_VM_param_2115
					})
				end, 1, 420)
				RootGuiLayout.Instance():showMainControl()
			end
		end

		CEvents.LuaPlayerDeathEvent:registerCallBack(u79)
	end
end
function GMHelper.createCustomDialogFromInput(_)
	GMHelper:openInput({
		"Title",
		"Content",
		"Right Text",
		"Left Text",
		"Right Action",
		"Left Action"
	}, function(p524)
		local Rage_VM_param_1835 = p524[1]
		local Rage_VM_param_1836 = p524[2]
		local Rage_VM_param_1837 = Rage_VM_param_1835 or "Default Title"
		local Rage_VM_param_1838 = Rage_VM_param_1836 or "Default Content"
		local Rage_VM_param_1839 = p524[3]
		local Rage_VM_param_1840 = p524[4]
		local Rage_VM_param_1841 = Rage_VM_param_1839 or "Confirm"
		local Rage_VM_param_1842 = Rage_VM_param_1840 or "Close"
		local u1843 = p524[5] or "UIHelper.showToast('Right button clicked')"
		local u1844 = p524[6] or "UIHelper.showToast('Left button clicked')"

		local function u1845(p525)
			local Rage_VM_param_2118 = p525

			if Rage_VM_param_2118 then
				Rage_VM_param_2118 = p525 ~= ""
			end

			if Rage_VM_param_2118 then
				local t41 = { pcall(function()
					return load("return " .. p525)()
				end) }
				local Rage_VM_param_2120 = t41[2]

				if not t41[1] then
					UIHelper.showToast("Invalid action: " .. Rage_VM_param_2120)
				end
			else
				UIHelper.showToast("No action provided")
			end
		end

		CustomDialog.builder()
		CustomDialog.setTitleText(Rage_VM_param_1837)
		CustomDialog.setContentText(Rage_VM_param_1838)
		CustomDialog.setRightText(Rage_VM_param_1841)
		CustomDialog.setLeftText(Rage_VM_param_1842)
		CustomDialog.setRightClickListener(function()
			u1845(u1843)
		end)
		CustomDialog.setLeftClickListener(function()
			u1845(u1844)
		end)
		CustomDialog.show()
	end)
end
function GMHelper.NoFall(_)
	togNoFall = not togNoFall
	ClientHelper.putIntPrefs("SprintLimitCheck", 0)

	if togNoFall then
		ClientHelper.putIntPrefs("SprintLimitCheck", 12)
	end
end
function GMHelper.updgame(_)
	CGame.Instance():resetGame(CGame.Instance():getGameType(), PlayerManager:getClientPlayer().userId, "")
end
function GMHelper.RunUpdatter(_)
end
function GMHelper.movPane(p529)
	togmovPane = not (togmovPane or false)
	p529.isMovementActive = togmovPane

	if not p529.childWindow then
		p529.childWindow = class("GUIGMMain", IGUILayout):getChildWindow("GMMain-Open")
	end

	if not p529.childWindow then
		return
	end

	if togmovPane then
		p529.childWindow:SetHeight({
			0,
			80
		})
		p529.childWindow:SetWidth({
			0,
			80
		})

		if not p529.moveHandler then
			function p529.moveHandler(p530)
				if not p529.isMovementActive then
					return
				end

				local position = p530.position

				if not position then
					return
				end

				local Rage_VM_param_1848 = GUISystem.Instance():GetScreenHeight() / 27
				local Rage_VM_param_1849 = GUISystem.Instance():GetScreenWidth() / 3

				p529.childWindow:SetXPosition({
					0,
					position.x - Rage_VM_param_1849
				})
				p529.childWindow:SetYPosition({
					0,
					position.y - Rage_VM_param_1848
				})
			end

			p529.childWindow:registerEvent(GUIEvent.TouchMove, p529.moveHandler)
		end
	else
		p529.childWindow:SetProperty("Area", "{{0,0},{0,60},{0,50},{0,110}}")
	end
end

local function u80(p531)
	if p531.y < 10 then
		return
	end

	local Player = PlayerManager:getClientPlayer().Player
	local Rage_VM_param_985 = Player:getPosition()
	local Rage_VM_param_986 = p531.x - Rage_VM_param_985.x
	local Rage_VM_param_987 = p531.z - Rage_VM_param_985.z
	local t42 = {
		x = Rage_VM_param_986,
		z = Rage_VM_param_987
	}

	if Rage_VM_param_985.y < 165 then
		Rage_VM_param_985.y = 165
	end

	if math.abs(t42.x) > 18 then
		if t42.x > 0 then
			Rage_VM_param_985.x = Rage_VM_param_985.x + 18
		else
			Rage_VM_param_985.x = Rage_VM_param_985.x - 18
		end

		Player:setPosition(Rage_VM_param_985)
		LuaTimer:scheduleTimer(function()
			u80(p531)
		end, 80.55, 1)

		return
	end

	if math.abs(t42.z) > 18 then
		if t42.z > 0 then
			Rage_VM_param_985.z = Rage_VM_param_985.z + 18
		else
			Rage_VM_param_985.z = Rage_VM_param_985.z - 18
		end

		Player:setPosition(Rage_VM_param_985)
		LuaTimer:scheduleTimer(function()
			u80(p531)
		end, 80.56, 1)

		return
	end

	Player.noClip = true

	local Rage_VM_param_989 = (function(p532)
		if EngineWorld:getBlockId(p532) ~= BlockID.AIR then
			repeat
				if EngineWorld:getBlockId(p532) == BlockID.AIR then
					return p532
				end

				p532.y = p532.y + 1
			until p532.y > 256

			return p532
		end

		return p532
	end)(p531)

	Player:setPosition(Rage_VM_param_989)
	Player.noClip = false

	local Player3 = PlayerManager:getClientPlayer().Player

	Player3:setAllowFlying(false)
	Player3:setFlying(false)
	Player3.rotationYaw = yaw
	Player3.rotationPitch = pitch
	ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
	Player:setPosition(Rage_VM_param_989)

	local n38 = nil

	n38 = 1
	tmLft = LuaTimer:scheduleTimer(function()
		PacketSender:getSender():sendRebirth()
		n38 = n38 - 1

		local Rage_VM_param_1851 = n38 == 0

		if not Rage_VM_param_1851 then
			Rage_VM_param_1851 = n38 == -1
		end

		if Rage_VM_param_1851 then
			ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
			LuaTimer:cancel(tmLft)

			local Rage_VM_param_1852 = Player
			local t43 = { VectorUtil.newVector3(0, 1.35, 0) }

			Rage_VM_param_1852:moveEntity(Rage_VM_param_1(t43))
			Player:setAllowFlying(true)
			Player:setFlying(true)
			LuaTimer:schedule(function()
				Player:setAllowFlying(false)
				Player:setFlying(false)
			end, 0.05)
		end
	end, 0.06, 1)
end

function GMHelper.Jailbreak(_)
	if CGame.Instance():getGameType() ~= "g1014" then
	end
end
function GMHelper.McDonald(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(217, 65, 162), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.Bank(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(124, 65, 177), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.Inn(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(227, 65, 47), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.BlackMarket(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(391, 65, 144), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.Police(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(312, 65, 237), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.Jail(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(337, 65, 290), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.Mall(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(349, 65, 554), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.Hospital(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(59, 65, 271), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.Mansion(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(27, 65, 500), (math.floor((skibidi:getYaw()))))
	GUIGMControlPanel:hide()
end
function GMHelper.tp_flag1(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(-174, 67, -23), (math.floor((skibidi:getYaw()))))
end
function GMHelper.tp_flag2(_)
	skibidi = PlayerManager:getClientPlayer().Player
	Teleport(VectorUtil.newVector3(60, 67, -53), (math.floor((skibidi:getYaw()))))
end
function GMHelper.esp(_)
	togesp = not togesp

	if togesp then
		esp = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1854 = PlayerManager:getClientPlayer()
			local Rage_VM_param_1855 = PlayerManager:getPlayers()
			local Rage_VM_param_1856, Rage_VM_param_1857, Rage_VM_param_1858 = pairs(Rage_VM_param_1855)

			while true do
				local Rage_VM_param_1859

				Rage_VM_param_1858, Rage_VM_param_1859 = Rage_VM_param_1856(Rage_VM_param_1857, Rage_VM_param_1858)

				if not Rage_VM_param_1858 then
					break
				end

				local Rage_VM_param_1860 = Rage_VM_param_1859.userId ~= Rage_VM_param_1854.userId

				if Rage_VM_param_1860 then
					Rage_VM_param_1860 = Rage_VM_param_1859.Player
				end

				if Rage_VM_param_1860 then
					Rage_VM_param_1859.Player:enableXRay({
						0.5,
						0,
						0.5,
						1
					})
				end
			end
		end, 300, 9999999)

		return
	end

	UIHelper.showToast("^FF0000ESP OFF")
	LuaTimer:cancel(esp)

	local Rage_VM_param_1010 = PlayerManager:getClientPlayer()
	local Rage_VM_param_1011 = PlayerManager:getPlayers()
	local Rage_VM_param_1012, Rage_VM_param_1013, Rage_VM_param_1014 = pairs(Rage_VM_param_1011)

	while true do
		local Rage_VM_param_1015

		Rage_VM_param_1014, Rage_VM_param_1015 = Rage_VM_param_1012(Rage_VM_param_1013, Rage_VM_param_1014)

		if not Rage_VM_param_1014 then
			break
		end

		local Rage_VM_param_1016 = Rage_VM_param_1015.userId ~= Rage_VM_param_1010.userId

		if Rage_VM_param_1016 then
			Rage_VM_param_1016 = Rage_VM_param_1015.Player
		end

		if Rage_VM_param_1016 then
			Rage_VM_param_1015.Player:disableXRay()
		end
	end
end
function GMHelper.RunScript(p546)
	p546.noo = engine_clientUiLayoutGUIGMControlPanel:getChildWindow("GMControlPanel-Input-Edit", GUIType.Edit)
	p546.noo:SetMaxLength(99999999)
	GMHelper:openInput({ "" }, function(p547)
		if #p547 % 2 ~= 0 then
			p547 ..= " "
		end

		loadn(p547)
		print("[Error]")
	end)
end
function GMHelper.Skyroyale(_)
	if CGame.Instance():getGameType() == "g1027" then
		GMSetting:addTab1("Sky Royale")
		GMSetting:addItem1("Sky Royale", "Teleport To Red", "TpRedSR")
		GMSetting:addItem1("Sky Royale", "Teleport To Yellow", "TpYellowSR")
		GMSetting:addItem1("Sky Royale", "Teleport To Blue", "TpBlueSR")
		GMSetting:addItem1("Sky Royale", "Teleport To Green", "TpGreenSR")
	end
end

local function u81(p549)
	if p549.y < 10 then
		return
	end

	local Player = PlayerManager:getClientPlayer().Player
	local Rage_VM_param_1022 = Player:getPosition()
	local Rage_VM_param_1023 = p549.x - Rage_VM_param_1022.x
	local Rage_VM_param_1024 = p549.z - Rage_VM_param_1022.z
	local t44 = {
		x = Rage_VM_param_1023,
		z = Rage_VM_param_1024
	}

	if Rage_VM_param_1022.y < 165 then
		Rage_VM_param_1022.y = 165
	end

	if math.abs(t44.x) > 18 then
		if t44.x > 0 then
			Rage_VM_param_1022.x = Rage_VM_param_1022.x + 18
		else
			Rage_VM_param_1022.x = Rage_VM_param_1022.x - 18
		end

		Player:setPosition(Rage_VM_param_1022)
		LuaTimer:scheduleTimer(function()
			u81(p549)
		end, 100, 1)

		return
	end

	if math.abs(t44.z) > 18 then
		if t44.z > 0 then
			Rage_VM_param_1022.z = Rage_VM_param_1022.z + 18
		else
			Rage_VM_param_1022.z = Rage_VM_param_1022.z - 18
		end

		Player:setPosition(Rage_VM_param_1022)
		LuaTimer:scheduleTimer(function()
			u81(p549)
		end, 100, 1)

		return
	end

	Player:setPosition(((function(p550)
		repeat
			if EngineWorld:getBlockId(p550) == BlockID.AIR then
				return p550
			end

			p550.y = p550.y + 1
		until p550.y > 256

		return p550
	end)(p549)))

	local Rage_VM_param_1026 = PlayerManager:getClientPlayer()

	Rage_VM_param_1026.Player:setAllowFlying(false)
	Rage_VM_param_1026.Player:setFlying(false)
	Rage_VM_param_1026.Player.rotationYaw = szmata
	Rage_VM_param_1026.Player.rotationPitch = chuje
end

function GMHelper.TpRedSR(_)
	GUIGMControlPanel:hide()
	Teleport(VectorUtil.newVector3(64, 24, 445))
end
function GMHelper.TpBlueSR(_)
	GUIGMControlPanel:hide()
	Teleport(VectorUtil.newVector3(127, 29, 383))
end
function GMHelper.TpGreenSR(_)
	GUIGMControlPanel:hide()
	Teleport(VectorUtil.newVector3(128, 24, 506))
end
function GMHelper.TpYellowSR(_)
	GUIGMControlPanel:hide()
	Teleport(VectorUtil.newVector3(190, 24, 446))
end
function GMHelper.chatBw(_)
	for _ = 1, 100 do
		T(Global, "ConnectorCenter"):sendMsg(31001, {
			sendId = Game:getPlatformUserId(),
			type = 1,
			data = {
				content = "lol"
			}
		})
	end
end
function GMHelper.KillAuraV2(_)
	togKillAuraV2 = not togKillAuraV2
	LuaTimer:cancel(Kill)
	LuaTimer:cancel(Killaura1)

	if togKillAuraV2 then
		createButton("KillAura", "KillAuraV2")
		Kill = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1863 = false

			Killaura = not Killaura
			LuaTimer:cancel(Killaura1)

			local Rage_VM_param_1864 = PlayerManager:getPlayers()
			local Rage_VM_param_1865 = PlayerManager:getClientPlayer()
			local Rage_VM_param_1866, Rage_VM_param_1867, Rage_VM_param_1868 = pairs(Rage_VM_param_1864)

			while true do
				local Rage_VM_param_1869

				Rage_VM_param_1868, Rage_VM_param_1869 = Rage_VM_param_1866(Rage_VM_param_1867, Rage_VM_param_1868)

				if not Rage_VM_param_1868 then
					break
				end

				local getPosition = Rage_VM_param_1869.getPosition
				local Rage_VM_param_1871 = MathUtil:distanceSquare3d(getPosition(Rage_VM_param_1869), Rage_VM_param_1865:getPosition())
				local Rage_VM_param_1872 = Rage_VM_param_1871 < 185

				if Rage_VM_param_1872 then
					Rage_VM_param_1872 = Rage_VM_param_1869 ~= Rage_VM_param_1865
				end

				if Rage_VM_param_1872 then
					minDis = Rage_VM_param_1871
					Rage_VM_param_1863 = Rage_VM_param_1869
				end
			end

			if Rage_VM_param_1863 and Killaura then
				Killaura1 = LuaTimer:scheduleTimer(function()
					CGame.Instance():handleTouchClick(800, 360)
				end, 0.5, -1)
			end
		end, 10, -1)
	end
end

local u82 = nil

u82 = nil

local function u83()
	if u82 == nil then
		u82 = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1873 = GUIManager:getWindowByName("GUIRoot-xuy60")

			if Rage_VM_param_1873 then
				Rage_VM_param_1873:SetVisible(true)
			end
		end, 1, -1)
	end
end
local function u84()
	if u82 then
		LuaTimer:cancel(u82)
		u82 = nil
	end
end

u83()

function GMHelper.HideShowGM(_)
	togHideShowGM = not togHideShowGM

	local Rage_VM_param_1035 = u70:getChildWindow("GMMain-Open", GUIType.Button)

	Rage_VM_param_1035:SetNormalImage("set:gui_inventory_icon.json image:icon_bookrack")
	Rage_VM_param_1035:SetPushedImage("set:gui_inventory_icon.json image:icon_bookrack")
	u83()

	local Rage_VM_param_1036 = not u5()

	if Rage_VM_param_1036 then
		Rage_VM_param_1036 = not u6()
	end

	if Rage_VM_param_1036 then
		GUI:SetVisible(true)
		GUI_Pos:SetVisible(true)
	end

	CheckOnlinePlayers:SetVisible(true)

	if togHideShowGM then
		Rage_VM_param_1035:SetNormalImage("")
		Rage_VM_param_1035:SetPushedImage("")
		CenterToastg60:SetVisible(false)

		local Rage_VM_param_1037 = not u5()

		if Rage_VM_param_1037 then
			Rage_VM_param_1037 = not u6()
		end

		if Rage_VM_param_1037 then
			GUI:SetVisible(false)
			GUI_Pos:SetVisible(false)
		end

		CheckOnlinePlayers:SetVisible(false)
		u84()
	end
end
function GMHelper.BwTpClick(_)
	togBwTpClick = not togBwTpClick
	CEvents.ClickToBlockEvent:unregisterAll()
	ClientHelper.putFloatPrefs("BlockReachDistance", 6.5)

	if togBwTpClick then
		CEvents.ClickToBlockEvent:registerCallBack(function(p559)
			local Rage_VM_param_1875 = PlayerManager:getClientPlayer()
			local Rage_VM_param_1876 = PlayerManager:getClientPlayer().Player:getYaw()
			local Rage_VM_param_1877 = string.format("%f,%f,%f,%f", p559.x + 0.4, p559.y + 3, p559.z + 0.4, Rage_VM_param_1876)

			Rage_VM_param_1875:sendPacket({
				pid = "PlayerTicketTipGo",
				type = 1,
				param = Rage_VM_param_1877
			})
		end)
		ClientHelper.putFloatPrefs("BlockReachDistance", 300)
	end
end
function GMHelper.BwCannon(_)
	togBwCannon = not togBwCannon

	if togBwCannon then
		GUIManager:getWindowByName("Main-Cannon"):SetVisible(true)
		LuaTimer:scheduleTimer(function()
			local onGround = PlayerManager:getClientPlayer().Player.onGround

			if onGround then
				onGround = isSer == 0
			end

			if onGround then
				local Rage_VM_param_1879 = PlayerManager:getClientPlayer().Player:getPosition()
				local Rage_VM_param_1880 = PlayerManager:getClientPlayer()
				local Rage_VM_param_1881 = Rage_VM_param_1880.Player:getYaw()
				local Rage_VM_param_1882 = string.format("%f,%f,%f,%f", Rage_VM_param_1879.x + 0.4, Rage_VM_param_1879.y - 1, Rage_VM_param_1879.z + 0.4, Rage_VM_param_1881)

				Rage_VM_param_1880:sendPacket({
					pid = "PlayerTicketTipGo",
					type = 1,
					param = Rage_VM_param_1882
				})
				ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
				isSer = 1
			end
		end, 100, 9999999)
		GUIManager:getWindowByName("Main-Cannon", GUIType.Button):registerEvent(GUIEvent.ButtonClick, function()
			ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
			isSer = 0

			local Rage_VM_param_1883 = PlayerManager:getClientPlayer()
			local Rage_VM_param_1884 = Rage_VM_param_1883

			if Rage_VM_param_1883 then
				Rage_VM_param_1884 = Rage_VM_param_1883.Player
			end

			if Rage_VM_param_1884 then
				local Rage_VM_param_1885 = Rage_VM_param_1883.Player:getPitch()
				local Rage_VM_param_1886 = Rage_VM_param_1883.Player:getYaw()
				local Rage_VM_param_1887 = Rage_VM_param_1885 * 3.141592653589793 / 180
				local Rage_VM_param_1888 = Rage_VM_param_1886 * 3.141592653589793 / 180

				speed = 2

				local Rage_VM_param_1889 = -speed * math.cos(Rage_VM_param_1887) * math.sin(Rage_VM_param_1888)
				local Rage_VM_param_1890 = -speed * math.sin(Rage_VM_param_1887)
				local Rage_VM_param_1891 = speed * math.cos(Rage_VM_param_1887) * math.cos(Rage_VM_param_1888)
				local Rage_VM_param_1892 = VectorUtil.newVector3(Rage_VM_param_1889, Rage_VM_param_1890, Rage_VM_param_1891)

				Rage_VM_param_1883.Player:setVelocity(Rage_VM_param_1892)
				SoundUtil.playSound(313)
			end
		end)

		return
	end

	GUIManager:getWindowByName("Main-Cannon"):SetVisible(false)
end
function GMHelper.BedBreaker(_)
	togBedBreaker = true
	beds = LuaTimer:scheduleTimer(function()
		local Rage_VM_param_1893 = PlayerManager:getClientPlayer()
		local u1894 = Rage_VM_param_1893.Player:getTeamId()
		local t45 = {
			1,
			2,
			3,
			4
		}

		local function u1896(p562)
			if GameInfoManager:getTeamInfo(p562):getValue("isHaveBed") == "1" then
				local Rage_VM_param_2122 = TeamConfig:getTeam(p562)
				local Rage_VM_param_2123 = Rage_VM_param_2122

				if Rage_VM_param_2122 then
					Rage_VM_param_2123 = Rage_VM_param_2122.bedPos

					if Rage_VM_param_2123 then
						Rage_VM_param_2123 = Rage_VM_param_2122.bedPos[1]
					end
				end

				if Rage_VM_param_2123 then
					local Rage_VM_param_2124 = Rage_VM_param_2122.bedPos[1]
					local x = Rage_VM_param_2124.x
					local y = Rage_VM_param_2124.y
					local z = Rage_VM_param_2124.z

					if x then
						x = y and z
					end

					if x then
						return true
					end
				end
			end

			return false
		end

		local Rage_VM_param_1897, Rage_VM_param_1898, Rage_VM_param_1899, Rage_VM_param_1900 = (function(p563)
			local Rage_VM_param_2129 = #t45
			local Rage_VM_param_2130 = p563 % Rage_VM_param_2129 + 1

			for i = 0, Rage_VM_param_2129 - 1 do
				local Rage_VM_param_2132 = t45[(Rage_VM_param_2130 + i - 1) % Rage_VM_param_2129 + 1]
				local Rage_VM_param_2133 = Rage_VM_param_2132 ~= u1894

				if Rage_VM_param_2133 then
					Rage_VM_param_2133 = u1896(Rage_VM_param_2132)
				end

				if Rage_VM_param_2133 then
					local Rage_VM_param_2134 = TeamConfig:getTeam(Rage_VM_param_2132).bedPos[1]

					return Rage_VM_param_2132, Rage_VM_param_2134.x, Rage_VM_param_2134.y, Rage_VM_param_2134.z
				end
			end

			return nil
		end)(u1894)
		local Rage_VM_param_1901 = Rage_VM_param_1897

		if Rage_VM_param_1897 then
			Rage_VM_param_1901 = Rage_VM_param_1898

			if Rage_VM_param_1898 then
				Rage_VM_param_1901 = Rage_VM_param_1899 and Rage_VM_param_1900
			end
		end

		if Rage_VM_param_1901 then
			Rage_VM_param_1893:sendPacket({
				pid = "PlayerTicketTipGo",
				type = 1,
				param = string.format("%f,%f,%f,0", Rage_VM_param_1898, Rage_VM_param_1899, Rage_VM_param_1900)
			})
			print(string.format("Teletrasportato al team %d: x=%f, y=%f, z=%f", Rage_VM_param_1897, Rage_VM_param_1898, Rage_VM_param_1899, Rage_VM_param_1900))
		else
			UIHelper.showToast("^FF0000No beds found!")
			LuaTimer:cancel(beds)
			togBedBreaker = false
		end
	end, 300, 9999999)
end
function GMHelper.Bwinfreach(_)
	togBwinfreach = not togBwinfreach
	ClientHelper.putFloatPrefs("EntityReachDistance", 6.5)
	CEvents.AttackEntityEvent:unregisterAll()

	if togBwinfreach then
		CEvents.AttackEntityEvent:registerCallBack(function(p565)
			local Rage_VM_param_1903 = PlayerManager:getPlayerByEntityId(p565)

			if not Rage_VM_param_1903 then
				return
			end

			local Rage_VM_param_1904 = PlayerManager:getClientPlayer().Player:getPosition()
			local Rage_VM_param_1905 = Rage_VM_param_1903:getPosition()
			local Rage_VM_param_1906 = math.floor(Rage_VM_param_1904.x) - math.floor(Rage_VM_param_1905.x)
			local Rage_VM_param_1907 = math.floor(Rage_VM_param_1904.z) - math.floor(Rage_VM_param_1905.z)

			math.sqrt(Rage_VM_param_1906 * Rage_VM_param_1906 + Rage_VM_param_1907 * Rage_VM_param_1907)

			local Rage_VM_param_1908 = PlayerManager:getClientPlayer().Player:getYaw()
			local u1909 = string.format("%f,%f,%f,%f", math.floor(Rage_VM_param_1904.x), math.floor(Rage_VM_param_1904.y) - 1.5, math.floor(Rage_VM_param_1904.z), Rage_VM_param_1908)
			local Rage_VM_param_1910 = string.format("%f,%f,%f,%f", math.floor(Rage_VM_param_1905.x), math.floor(Rage_VM_param_1905.y), math.floor(Rage_VM_param_1905.z), Rage_VM_param_1908)
			local u1911 = PlayerManager:getClientPlayer()

			u1911:sendPacket({
				pid = "PlayerTicketTipGo",
				type = 1,
				param = Rage_VM_param_1910
			})
			LuaTimer:schedule(function()
				u1911:sendPacket({
					pid = "PlayerTicketTipGo",
					type = 1,
					param = u1909
				})
			end, 5)
			LuaTimer:schedule(function()
			end, 3)
		end)

		local Rage_VM_param_1042 = PlayerManager:getClientPlayer()

		GameInfoManager:getPlayerInfo(Rage_VM_param_1042.userId):setValue("swordAttackDisAdd", 200)
	end
end
function GMHelper.breakclick(_)
	togbreakclick = not togbreakclick
	CEvents.BlockStartBreakEvent:unregisterAll()

	if togbreakclick then
		CEvents.BlockStartBreakEvent:registerCallBack(function(_, _, p569)
			local x = p569.x
			local y = p569.y
			local z = p569.z
			local _EngineWorld = EngineWorld
			local t46 = { VectorUtil.newVector3(x, y, z) }

			_EngineWorld:setBlockToAir(Rage_VM_param_1(t46))
		end)
	end
end
function GMHelper.blockxray(_)
	togblockxray = not togblockxray
	RenderExperimentSwitch.Instance():setZTestDisabled(false)

	if togblockxray then
		RenderExperimentSwitch.Instance():setZTestDisabled(true)
	end
end
function GMHelper.gcubes(_)
	toggcubes = true
	_G.PlayerManager:getClientPlayer()

	local Rage_VM_param_1046 = Game:getPlayer():getWallet()

	Rage_VM_param_1046.m_diamondBlues = 999999999
	Rage_VM_param_1046.m_Currency = 999999999
	Rage_VM_param_1046.m_diamondGolds = 999999999
	Rage_VM_param_1046:setGolds(99999999)
	PlayerWallet:setMoneyCount(CurrencyId.Currency, 999999999)
end
function GMHelper.dpadj(_)
	togdpadj = not togdpadj

	if togdpadj then
		ClientHelper.putBoolPrefs("UseCenterJumpButton", true)

		return
	end

	ClientHelper.putBoolPrefs("UseCenterJumpButton", false)
end
function GMHelper.downloadFileOnline(_)
	GMHelper:openInput({
		"Enter the link",
		"Enter the file name (with extension)"
	}, function(p574, p575)
		local Rage_VM_param_1922 = not p574

		if not Rage_VM_param_1922 then
			Rage_VM_param_1922 = p574 == ""
		end

		if Rage_VM_param_1922 then
			UIHelper.showToast("Error: You must enter a valid link!")

			return
		end

		local Rage_VM_param_1923 = not p575

		if not Rage_VM_param_1923 then
			Rage_VM_param_1923 = p575 == ""
		end

		if Rage_VM_param_1923 then
			UIHelper.showToast("Error: You must enter a file name with an extension!")

			return
		end

		local u1924 = "/storage/emulated/0/Android/data/com.sandboxol.blockymods.channel.official/files/Download/" .. p575

		writeFile(u1924, "")
		WService.asyncGet(true, "EW", p574, {}, function(p576)
			local Rage_VM_param_2136 = io.open(u1924, "wb")

			if Rage_VM_param_2136 then
				Rage_VM_param_2136:write(p576)
				Rage_VM_param_2136:close()
				UIHelper.showToast("Download completed! File saved at: " .. u1924)

				return
			end

			UIHelper.showToast("Error saving the file.")
		end)
	end)
end
function GMHelper.FastThrow(_)
	togFastThrow = not togFastThrow

	if togFastThrow then
		Listener.registerCallBack(CEvents.LongTouchSceneEvent, function()
			if togFastThrow and PlayerManager:getClientPlayer().Player:getHeldItemId() >= 1 then
				local m_playerControl = Blockman.Instance().m_playerControl
				local Player = PlayerManager:getClientPlayer().Player
				local Rage_VM_param_1927 = EngineWorld:getWorld()
				local t47 = { PlayerManager:getClientPlayer().Player:getHeldItem() }

				m_playerControl:useItem(Player, Rage_VM_param_1927, Rage_VM_param_1(t47))
			end
		end)

		return
	end

	CEvents.LongTouchSceneEvent:unregisterAll()
end
function GMHelper.registerUser(_)
	GMHelper:openInput({
		"Username",
		"Password"
	}, function(p579, p580)
		local Rage_VM_param_1931 = not p579

		if not Rage_VM_param_1931 then
			Rage_VM_param_1931 = not p580

			if not Rage_VM_param_1931 then
				Rage_VM_param_1931 = p579 == ""

				if not Rage_VM_param_1931 then
					Rage_VM_param_1931 = p580 == ""
				end
			end
		end

		if Rage_VM_param_1931 then
			UIHelper.showToast("Error: Username or password not valid")

			return
		end

		WService.asyncPost(true, "EW", "http://eternal.minebridge.lol/register", nil, {
			username = p579,
			password = p580
		}, function(p581, p582)
			UIHelper.showToast("HTTP Code: " .. tostring(p582))
			UIHelper.showToast("Raw Response: " .. json.encode(p581 or {}))

			if p582 == 200 then
				UIHelper.showToast("Successfully registered")

				return
			end

			UIHelper.showToast("Register error")
		end)
	end)
end
function GMHelper.loginUser(_)
	GMHelper:openInput({
		"Username",
		"Password"
	}, function(p584, p585)
		local Rage_VM_param_1935 = not p584

		if not Rage_VM_param_1935 then
			Rage_VM_param_1935 = not p585

			if not Rage_VM_param_1935 then
				Rage_VM_param_1935 = p584 == ""

				if not Rage_VM_param_1935 then
					Rage_VM_param_1935 = p585 == ""
				end
			end
		end

		if Rage_VM_param_1935 then
			UIHelper.showToast("Error: Username or password not valid")

			return
		end

		local _WService = WService
		local t48 = {
			username = p584,
			password = p585
		}

		_WService.asyncPost(true, "EW", "http://eternal.minebridge.lol/login", nil, t48, function(p586, p587)
			UIHelper.showToast("HTTP Code:\t" .. tostring(p587))
			print("Raw Response:\t" .. tostring(p586))

			if p587 == 200 then
				local Rage_VM_param_2141 = json.decode(p586)
				local Rage_VM_param_2142, Rage_VM_param_2143, Rage_VM_param_2144 = pairs(Rage_VM_param_2141)

				while true do
					local Rage_VM_param_2145

					Rage_VM_param_2144, Rage_VM_param_2145 = Rage_VM_param_2142(Rage_VM_param_2143, Rage_VM_param_2144)

					if not Rage_VM_param_2144 then
						break
					end

					UIHelper.showToast("Key: " .. tostring(Rage_VM_param_2144) .. " | Value: " .. tostring(Rage_VM_param_2145))
				end

				local Rage_VM_param_2146 = Rage_VM_param_2141

				if Rage_VM_param_2141 then
					Rage_VM_param_2146 = Rage_VM_param_2141.data

					if Rage_VM_param_2146 then
						Rage_VM_param_2146 = Rage_VM_param_2141.data.token
					end
				end

				if Rage_VM_param_2146 then
					local token = Rage_VM_param_2141.data.token
					local Rage_VM_param_2148 = io.open("/storage/emulated/0/Android/data/com.sandboxol.blockymods.channel.official/files/Download/SandboxOL/BlockMan/config/token.txt", "w")

					if Rage_VM_param_2148 then
						Rage_VM_param_2148:write(token)
						Rage_VM_param_2148:close()
						UIHelper.showToast("Token saved")
					else
						UIHelper.showToast("Error saving token")
					end

					UIHelper.showToast("Successfully logged in as " .. p584)
					LoginGUI10:SetText("Logged as: " .. p584)

					return
				end

				UIHelper.showToast("Error: Token not found in response")

				return
			end

			UIHelper.showToast("Error in login: unknown error")
		end)
	end)
end
function GMHelper.autoLogin(_)
	local Rage_VM_param_1053 = GMHelper:getToken()

	if not Rage_VM_param_1053 then
		UIHelper.showToast("Error: Token not found, please login manually")

		return
	end

	WService.asyncPost(true, "EW", "http://eternal.minebridge.lol/auto_login", nil, {
		token = Rage_VM_param_1053
	}, function(p589, p590)
		if p590 == 200 then
			local match = string.match(p589, "\"username\"%s*:%s*\"([^\"]+)\"")

			if match then
				UIHelper.showToast("Auto-login come " .. match)
				LoginGUI10:SetText("Logged as: " .. match)

				return
			end

			UIHelper.showToast("Error: Username not found")

			return
		end

		UIHelper.showToast("Error in auto login, please login manually")
	end)
end
function GMHelper.getToken(_)
	local Rage_VM_param_1055 = io.open("/storage/emulated/0/Android/data/com.sandboxol.blockymods.channel.official/files/Download/SandboxOL/BlockMan/config/token.txt", "r")

	if Rage_VM_param_1055 then
		local Rage_VM_param_1056 = Rage_VM_param_1055:read("*a")

		Rage_VM_param_1055:close()
		print("Token letto: " .. Rage_VM_param_1056)

		local Rage_VM_param_1057 = Rage_VM_param_1056

		if Rage_VM_param_1056 then
			Rage_VM_param_1057 = Rage_VM_param_1056 ~= ""
		end

		if Rage_VM_param_1057 then
			return Rage_VM_param_1056
		end

		print("Errore: Il token è vuoto!")

		return nil
	end

	print("Errore: Impossibile aprire il file!")

	return nil
end
function GMHelper.clearCredentials(_)
	local Rage_VM_param_1059 = io.open("/storage/emulated/0/Android/data/com.sandboxol.blockymods.channel.official/files/Download/SandboxOL/BlockMan/config/account.txt", "w")

	if Rage_VM_param_1059 then
		Rage_VM_param_1059:write("")
		Rage_VM_param_1059:close()
		UIHelper.showToast("Credentials cleared successfully")

		return
	end

	UIHelper.showToast("Error: Unable to clear credentials")
end
function GMHelper.accessProtectedSection(_)
	local Rage_VM_param_1061 = io.open("/storage/emulated/0/Android/data/com.sandboxol.blockymods.channel.official/files/Download/SandboxOL/BlockMan/config/token.txt", "r")

	if not Rage_VM_param_1061 then
		UIHelper.showToast("Error: No token found, please log in first")

		return
	end

	local Rage_VM_param_1062 = Rage_VM_param_1061:read("*a")

	Rage_VM_param_1061:close()
	WService.asyncGet(true, "EW", "http://eternal.minebridge.lol/protected", {
		Authorization = "Bearer " .. Rage_VM_param_1062
	}, function(p594, p595)
		if p595 == 200 then
			UIHelper.showToast("Access granted: " .. json.encode(p594))

			return
		end

		UIHelper.showToast("Access denied, please log in again")
	end)
end
function GMHelper.LoggedGui(_)
	LoginGUI10 = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-Login")
	LoginGUI10:SetVisible(true)
	LoginGUI10:SetText("Currently not logged in")
	LoginGUI10:SetHorizontalAlignment(HorizontalAlignment.left)
	LoginGUI10:SetVerticalAlignment(VerticalAlignment.Bottom)
	LoginGUI10:SetWidth({
		0,
		200
	})
	LoginGUI10:SetHeight({
		0,
		20
	})
	LoginGUI10:SetBordered(true)
	LoginGUI10:SetTouchable(false)
	LoginGUI10:SetXPosition({
		0,
		15
	})
	LoginGUI10:SetYPosition({
		0,
		-72
	})
	GUISystem.Instance():GetRootWindow():AddChildWindow(LoginGUI10)
	LuaTimer:scheduleTimer(function()
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1943, Rage_VM_param_1944, Rage_VM_param_1945 = u35(n8)

		LoginGUI10:SetTextColor({
			Rage_VM_param_1943,
			Rage_VM_param_1944,
			Rage_VM_param_1945,
			0.6
		})
	end, 100, -1)
end
function GMHelper.testForUpdate(_)
	AsyncGet("https://link-j85k.onrender.com/version.txt", "", function(p598, _)
		if tonumber(p598) > tonumber(currentVer) then
			UIHelper.showToast("Update available!")
			Layout11:SetVisible(true)
			CloseOP1:SetVisible(true)
			upd1:SetVisible(true)
			Title11:SetVisible(true)
			Title22:SetVisible(true)
		end
	end)
end
function GMHelper.startAutoPing(_)
	local Rage_VM_param_1066 = PlayerManager:getClientPlayer()
	local u1067 = nil
	local u1068 = Rage_VM_param_1066.Player:getEntityName()

	function u1067()
		local Rage_VM_param_1948 = json.encode({
			username = u1068
		})

		AsyncPost("https://serverapi-311f.onrender.com/player/ping", Rage_VM_param_1948, function(_, p602)
			print("Ping sent. Code:", p602)
		end)
	end

	u1067()
	LuaTimer:scheduleTimer(function()
		u1067()

		return true
	end, 10000, -1)
end
function GMHelper.checkOnlinePlayers(_)
	CheckOnlinePlayers = GUIManager:createGUIWindow(GUIType.StaticText, "GUIRoot-OnlinePlayers")
	CheckOnlinePlayers:SetHorizontalAlignment(HorizontalAlignment.Center)
	CheckOnlinePlayers:SetVerticalAlignment(VerticalAlignment.Center)
	CheckOnlinePlayers:SetTextHorzAlign(HorizontalAlignment.Center)
	CheckOnlinePlayers:SetTextVertAlign(VerticalAlignment.Center)
	CheckOnlinePlayers:SetHeight({
		0,
		50
	})
	CheckOnlinePlayers:SetWidth({
		0,
		700
	})
	CheckOnlinePlayers:SetLevel(2)
	CheckOnlinePlayers:SetBordered(true)
	CheckOnlinePlayers:SetTouchable(false)
	GUISystem.Instance():GetRootWindow():AddChildWindow(CheckOnlinePlayers)
	CheckOnlinePlayers:SetText("Checking online players...")
	CheckOnlinePlayers:SetBackgroundColor({
		0,
		0,
		0,
		0
	})
	CheckOnlinePlayers:SetYPosition({
		-0.5,
		150
	})
	CheckOnlinePlayers:SetXPosition({
		0,
		0
	})
	CheckOnlinePlayers:SetVisible(true)
	LuaTimer:scheduleTimer(function()
		n8 = (n8 + 0.5) % 360

		local Rage_VM_param_1949, Rage_VM_param_1950, Rage_VM_param_1951, _ = u35(n8)

		CheckOnlinePlayers:SetTextColor({
			Rage_VM_param_1949,
			Rage_VM_param_1950,
			Rage_VM_param_1951,
			0.6
		})
	end, 100, -1)
	LuaTimer:scheduleTimer(function()
		AsyncGet("https://serverapi-311f.onrender.com/player/online_count", "", function(p604, _)
			local match = string.match(p604, "\"online_count\"%s*:%s*(%d+)")

			if match then
				local num = tonumber(match)

				CheckOnlinePlayers:SetText("Online players: " .. num)

				return
			end

			CheckOnlinePlayers:SetText("Couldn't find online count")
		end)
	end, 5000, -1)
end

local n39 = 0

function base64decode(p606)
	return string.gsub(p606, "[^" .. s2 .. "=]", ""):gsub(".", function(p607)
		if p607 == "=" then
			return ""
		end

		local Rage_VM_param_1959 = s2:find(p607) - 1
		local s8 = ""

		for i = 6, 1, -1 do
			s8 ..= not (Rage_VM_param_1959 % 2 ^ i - Rage_VM_param_1959 % 2 ^ (i - 1) > 0) and "0" or "1"
		end

		return s8
	end):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(p608)
		if #p608 ~= 8 then
			return ""
		end

		local n40 = 0

		for i = 1, 8 do
			local Rage_VM_param_1956 = i
			local Rage_VM_param_1957 = p608:sub(Rage_VM_param_1956, Rage_VM_param_1956) == "1"

			if Rage_VM_param_1957 then
				Rage_VM_param_1957 = 2 ^ (8 - Rage_VM_param_1956)
			end

			n40 = n40 + Rage_VM_param_1957 or 0
		end

		return string.char(n40)
	end)
end
function GMHelper.checkConsoleCommand(_)
	togcheckConsoleCommand = not togcheckConsoleCommand
	LuaTimer:cancel(cmd)

	if togcheckConsoleCommand then
		GMHelper:openInput({ "IP & port" }, function(p610)
			local u1963 = "http://" .. p610 .. "/console"
			local u1964 = nil
			local u1965 = "http://" .. p610 .. "/log"
			local s9 = "/storage/emulated/0/Android/data/com.sandboxol.blockymods.channel.official/files/Download/SandboxOL/BlockMan/config/client.log"

			local function u1967(p611)
				local Rage_VM_param_2156 = io.open(p611, "r")

				if not Rage_VM_param_2156 then
					return nil
				end

				local Rage_VM_param_2157 = Rage_VM_param_2156:read("*a")

				Rage_VM_param_2156:close()

				return Rage_VM_param_2157
			end

			function u1964()
				local Rage_VM_param_2158 = u1967(s9)

				if not Rage_VM_param_2158 then
					UIHelper.showToast("Errore lettura log")

					return
				end

				WService.asyncPost(nil, "EW", u1965, nil, {
					logs = Rage_VM_param_2158
				}, function(_, p613)
					if p613 == 200 then
						return
					end

					UIHelper.showToast("Errore invio log: HTTP " .. tostring(p613))
				end)
			end

			cmd = LuaTimer:scheduleTimer(function()
				u1964()
				WService.asyncGet(nil, "EW", u1963, nil, function(p614, p615)
					if p615 == 200 then
						local ok, result = pcall(json.decode, p614)

						if ok then
							ok = result

							if result then
								ok = result.command

								if ok then
									ok = result.id
								end
							end
						end

						if ok then
							local command = result.command
							local id = result.id

							if id > n39 then
								n39 = id

								local Rage_VM_param_2170 = base64decode(command)
								local Rage_VM_param_2171, Rage_VM_param_2172 = loadn("return function() " .. Rage_VM_param_2170 .. " end")

								if Rage_VM_param_2171 then
									local t49 = { pcall(Rage_VM_param_2171()) }
									local Rage_VM_param_2174 = t49[2]

									if not t49[1] then
										UIHelper.showToast("Errore esecuzione: " .. tostring(Rage_VM_param_2174))

										return
									end
								else
									UIHelper.showToast("Errore di compilazione: " .. tostring(Rage_VM_param_2172))
								end
							end
						end
					end
				end)
			end, 1000, -1)
		end)
	end
end
function GMHelper.TouchOfGod(_)
	togTouchOfGod = true
	TouchOfDeath()
end
function GMHelper.img(_)
	local Rage_VM_param_1074 = Root.Instance():getRootPath()
	local Rage_VM_param_1075 = Rage_VM_param_1074 .. "/Media/GUI/imageset/"
	local Rage_VM_param_1076 = Rage_VM_param_1074 .. "config/common.json"
	local Rage_VM_param_1077 = Rage_VM_param_1075 .. "survival_main.json"
	local Rage_VM_param_1078, Rage_VM_param_1079, Rage_VM_param_1080 = ipairs({
		{
			url = "http://eternal.minebridge.lol/files/bedwarsmall.txt",
			path = Rage_VM_param_1075 .. "bedwarsmall.png",
			mode = "wb",
			isBase64 = true
		},
		{
			url = "http://eternal.minebridge.lol/files/bedwarsmall.json",
			path = Rage_VM_param_1075 .. "bedwarsmall.json",
			mode = "w",
			isBase64 = false
		},
		{
			url = "http://eternal.minebridge.lol/files/common.json",
			path = Rage_VM_param_1076,
			mode = "w",
			isBase64 = false
		},
		{
			url = "http://eternal.minebridge.lol/files/survival_main.json",
			path = Rage_VM_param_1077,
			mode = "w",
			isBase64 = false
		},
		{
			url = "http://eternal.minebridge.lol/files/survival_main.txt",
			path = Rage_VM_param_1075 .. "survival_main.png",
			mode = "wb",
			isBase64 = true
		}
	})

	while true do
		local Rage_VM_param_1081

		Rage_VM_param_1080, Rage_VM_param_1081 = Rage_VM_param_1078(Rage_VM_param_1079, Rage_VM_param_1080)

		if not Rage_VM_param_1080 then
			break
		end

		local u1082 = Rage_VM_param_1081

		WService.asyncGet(true, "EW", u1082.url, {}, function(p618)
			if not p618 then
				print("Failed to download: " .. u1082.url)

				return
			end

			if u1082.isBase64 then
				p618 = require("misc").base64_decode(p618)
			end

			local Rage_VM_param_1969 = io.open(u1082.path, u1082.mode)

			if Rage_VM_param_1969 then
				Rage_VM_param_1969:write(p618)
				Rage_VM_param_1969:close()
			end
		end)
	end
end
function GMHelper.BedwarsUi(_)
	ClientHelper.putFloatPrefs("PoleControlMaxDistance", 65)
	ClientHelper.putFloatPrefs("MainControlKeyAlphaNormal", 1)
	ClientHelper.putFloatPrefs("MainControlKeyAlphaPress", 1)
	GUIManager:getWindowByName("Main-PoleControl-Arrow", GUIType.StaticImage):SetImage("set:pole.json image:pole_arrow")

	local Rage_VM_param_1084 = GUIManager:getWindowByName("Main-MoveState")
	local setRenderInMainScreen = Rage_VM_param_1084.setRenderInMainScreen
	local GetYPosition = Rage_VM_param_1084.GetYPosition

	setRenderInMainScreen(Rage_VM_param_1084)
	Rage_VM_param_1084:SetArea(Rage_VM_param_1084:GetXPosition(), GetYPosition(Rage_VM_param_1084), {
		0,
		70
	}, {
		0,
		70
	})

	local Rage_VM_param_1087 = GUIManager:getWindowByName("Main-Jump-Controls")

	Rage_VM_param_1087:setRenderInMainScreen()

	local GetYPosition2 = Rage_VM_param_1087.GetYPosition

	Rage_VM_param_1087:SetArea(Rage_VM_param_1087:GetXPosition(), GetYPosition2(Rage_VM_param_1087), {
		0,
		138
	}, {
		0,
		377
	})

	local Rage_VM_param_1089 = GUIManager:getWindowByName("Main-Cannon", GUIType.Button)

	Rage_VM_param_1089:SetNormalImage("set:bedwarsmall.json image:btn_0_fort")
	Rage_VM_param_1089:SetPushedImage("set:bedwarsmall.json image:btn_0_fort")
	GUIManager:getWindowByName("Main-MoveState-Sneak", GUIType.StaticImage):SetImage("set:move_state.json image:sneak_circle")

	local Rage_VM_param_1090 = GUIManager:getWindowByName("Main-Fly", GUIType.Button)

	Rage_VM_param_1090:SetNormalImage("set:bedwarsmall.json image:fly")
	Rage_VM_param_1090:SetPushedImage("set:bedwarsmall.json image:fly")
	Rage_VM_param_1090:SetArea(Rage_VM_param_1090:GetXPosition(), Rage_VM_param_1090:GetYPosition(), {
		0,
		70
	}, {
		0,
		70
	})

	local Rage_VM_param_1091 = GUIManager:getWindowByName("Main-Gun-Operate-RightShootBtn")

	Rage_VM_param_1091:SetProperty("NormalImage", "set:survival_main.json image:btn_0_shoot_right")
	Rage_VM_param_1091:SetProperty("PushedImage", "set:survival_main.json image:btn_0_shoot_right_click")

	local Rage_VM_param_1092 = GUIManager:getWindowByName("Main-Gun-Operate-LeftShootBtn")

	Rage_VM_param_1092:SetProperty("NormalImage", "set:survival_main.json image:btn_0_shoot_left")
	Rage_VM_param_1092:SetProperty("PushedImage", "set:survival_main.json image:btn_0_shoot_left_click")
	Rage_VM_param_1092:SetWidth({
		0,
		73
	})
	Rage_VM_param_1092:SetHeight({
		0,
		73
	})

	local Rage_VM_param_1093 = GUIManager:getWindowByName("Main-Gun-Operate-ReloadBtn")

	Rage_VM_param_1093:SetProperty("NormalImage", "set:survival_main.json image:btn_0_reroad")
	Rage_VM_param_1093:SetProperty("PushedImage", "set:survival_main.json image:btn_0_reroad_click")

	local Rage_VM_param_1094 = GUIManager:getWindowByName("Main-Gun-Operate-AimBtn")

	Rage_VM_param_1094:SetProperty("NormalImage", "set:survival_main.json image:btn_0_sniper2")
	Rage_VM_param_1094:SetProperty("PushedImage", "set:survival_main.json image:btn_0_sniper2_click")

	local Rage_VM_param_1095 = GUIManager:getWindowByName("Main-Gun-Operate-CancelAimBtn")

	Rage_VM_param_1095:SetProperty("NormalImage", "set:survival_main.json image:btn_0_sniper1")
	Rage_VM_param_1095:SetProperty("PushedImage", "set:survival_main.json image:btn_0_sniper1_click")
end
function GMHelper.selectSkinById(_)
	GMHelper:openInput({ "" }, function(p621)
		WebService.GetPlayerDecoration(tonumber(p621), function(p622)
			local Rage_VM_param_2160, Rage_VM_param_2161, Rage_VM_param_2162 = ipairs(p622)

			while true do
				local Rage_VM_param_2163

				Rage_VM_param_2162, Rage_VM_param_2163 = Rage_VM_param_2160(Rage_VM_param_2161, Rage_VM_param_2162)

				if not Rage_VM_param_2162 then
					break
				end

				ChangeSkin(tonumber(Rage_VM_param_2163.slave), (tostring(Rage_VM_param_2163.master)))
				print("slave: " .. Rage_VM_param_2163.slave)
				print("master: " .. Rage_VM_param_2163.master)
			end
		end)
	end)
end
function GMHelper.spo(_)
	if tostring(CGame.Instance():getGameType()) == "g1014" then
		CustomDialog.builder().setContentText("function temporary disabled").setHideLeftButton().show()

		return
	end

	togspo = not togspo
	ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
	LuaTimer:cancel(spotimer)

	if togspo then
		ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
		createButton("Infinity Kill Aura", "spo")

		local Player = PlayerManager:getClientPlayer().Player
		local newVector3 = VectorUtil.newVector3
		local Rage_VM_param_1100 = math.floor(PlayerManager:getClientPlayer().Player:getPosition().x)
		local floor = math.floor
		local _PlayerManager = PlayerManager
		local getClientPlayer = _PlayerManager.getClientPlayer
		local setPosition = Player.setPosition
		local t50 = { newVector3(Rage_VM_param_1100, floor(getClientPlayer(_PlayerManager).Player:getPosition().y + 5), math.floor(PlayerManager:getClientPlayer().Player:getPosition().z + 3000)) }

		setPosition(Player, Rage_VM_param_1(t50))
		spotimer = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1971 = PlayerManager:getPlayers()

			if not Rage_VM_param_1971 then
				Rage_VM_param_1971 = {}
			end

			local Rage_VM_param_1972, Rage_VM_param_1973, Rage_VM_param_1974 = ipairs(Rage_VM_param_1971)

			while true do
				local Rage_VM_param_1975

				Rage_VM_param_1974, Rage_VM_param_1975 = Rage_VM_param_1972(Rage_VM_param_1973, Rage_VM_param_1974)

				if not Rage_VM_param_1974 then
					break
				end

				if Rage_VM_param_1975 then
					local entityId = Rage_VM_param_1975.entityId
					local Rage_VM_param_1977 = Rage_VM_param_1975:getPosition()

					PlayerManager:getClientPlayer().Player:getPosition()

					local Rage_VM_param_1978 = VectorUtil.newVector3(math.floor(Rage_VM_param_1977.x), math.floor(Rage_VM_param_1977.y), (math.floor(Rage_VM_param_1977.z)))

					Attack(entityId, Rage_VM_param_1978)
				end
			end
		end, 600, 99999)
	end
end
function GMHelper.spo2(_)
	togspo2 = not togspo2
	LuaTimer:cancel(spotimer2)

	if togspo2 then
		createButton("Kill Aura", "spo2")
		spotimer2 = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1979 = PlayerManager:getPlayers()

			if not Rage_VM_param_1979 then
				Rage_VM_param_1979 = {}
			end

			local Rage_VM_param_1980 = PlayerManager:getClientPlayer().Player:getPosition()
			local Rage_VM_param_1981, Rage_VM_param_1982, Rage_VM_param_1983 = ipairs(Rage_VM_param_1979)

			while true do
				local Rage_VM_param_1984

				Rage_VM_param_1983, Rage_VM_param_1984 = Rage_VM_param_1981(Rage_VM_param_1982, Rage_VM_param_1983)

				if not Rage_VM_param_1983 then
					break
				end

				local Rage_VM_param_1985 = Rage_VM_param_1984

				if Rage_VM_param_1984 then
					Rage_VM_param_1985 = Rage_VM_param_1984 ~= PlayerManager:getClientPlayer()
				end

				if Rage_VM_param_1985 then
					local Rage_VM_param_1986 = Rage_VM_param_1984:getPosition()
					local Rage_VM_param_1987 = Rage_VM_param_1986.x - Rage_VM_param_1980.x
					local Rage_VM_param_1988 = Rage_VM_param_1986.y - Rage_VM_param_1980.y
					local Rage_VM_param_1989 = Rage_VM_param_1986.z - Rage_VM_param_1980.z
					local sqrt = math.sqrt
					local Rage_VM_param_1991 = Rage_VM_param_1988 * Rage_VM_param_1988

					if sqrt(Rage_VM_param_1987 * Rage_VM_param_1987 + Rage_VM_param_1991 + Rage_VM_param_1989 * Rage_VM_param_1989) <= 6 then
						local entityId = Rage_VM_param_1984.entityId
						local Rage_VM_param_1993 = VectorUtil.newVector3(math.floor(Rage_VM_param_1986.x), math.floor(Rage_VM_param_1986.y), (math.floor(Rage_VM_param_1986.z)))

						Attack(entityId, Rage_VM_param_1993)
						HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 0, 0)
					end
				end
			end
		end, 600, 99999)
	end
end
function GMHelper.spo3(_)
	togspo3 = not togspo3
	LuaTimer:cancel(spotimer3)

	if togspo3 then
		createButton("Kill Aura", "spo3")
		spotimer3 = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_1994 = PlayerManager:getPlayers()

			if not Rage_VM_param_1994 then
				Rage_VM_param_1994 = {}
			end

			local Rage_VM_param_1995 = PlayerManager:getClientPlayer().Player:getPosition()
			local Rage_VM_param_1996, Rage_VM_param_1997, Rage_VM_param_1998 = ipairs(Rage_VM_param_1994)

			while true do
				local Rage_VM_param_1999

				Rage_VM_param_1998, Rage_VM_param_1999 = Rage_VM_param_1996(Rage_VM_param_1997, Rage_VM_param_1998)

				if not Rage_VM_param_1998 then
					break
				end

				local Rage_VM_param_2000 = Rage_VM_param_1999

				if Rage_VM_param_1999 then
					Rage_VM_param_2000 = Rage_VM_param_1999 ~= PlayerManager:getClientPlayer()
				end

				if Rage_VM_param_2000 then
					local Rage_VM_param_2001 = Rage_VM_param_1999:getPosition()
					local Rage_VM_param_2002 = Rage_VM_param_2001.x - Rage_VM_param_1995.x
					local Rage_VM_param_2003 = Rage_VM_param_2001.y - Rage_VM_param_1995.y
					local Rage_VM_param_2004 = Rage_VM_param_2001.z - Rage_VM_param_1995.z
					local sqrt = math.sqrt
					local Rage_VM_param_2006 = Rage_VM_param_2003 * Rage_VM_param_2003

					if sqrt(Rage_VM_param_2002 * Rage_VM_param_2002 + Rage_VM_param_2006 + Rage_VM_param_2004 * Rage_VM_param_2004) <= 7 then
						local entityId = Rage_VM_param_1999.entityId
						local Rage_VM_param_2008 = VectorUtil.newVector3(math.floor(Rage_VM_param_2001.x), math.floor(Rage_VM_param_2001.y), (math.floor(Rage_VM_param_2001.z)))

						BwAttack(entityId, Rage_VM_param_2008)
						HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 0, 0)
					end
				end
			end
		end, 100, 99999)
	end
end
function GMHelper.openLink(_)
	GMHelper:openInput({ "" }, function(p627)
		ClientHelper.callAppDataFunction("onWatchAudio", {
			url = p627
		})
	end)
end
function GMHelper.bridgeV2(_)
	togbridgeV2 = not togbridgeV2

	local Rage_VM_param_1110 = GUIManager:getWindowByName("TESTMovableEngine1")

	GUIManager:getWindowByName("ModuleBlockMain")
	Rage_VM_param_1110:SetVisible(false)

	if togbridgeV2 then
		Rage_VM_param_1110:SetVisible(true)
	end
end
function GMHelper.Bwspo(_)
	togBwspo = not togBwspo
	LuaTimer:cancel(bwbow)

	if togBwspo then
		bwbow = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_2010 = PlayerManager:getPlayers()

			if not Rage_VM_param_2010 then
				Rage_VM_param_2010 = {}
			end

			if PlayerManager:getClientPlayer().Player:getHeldItemId() == 0 then
				UIHelper.showToast("You must be holding an item to use this function!")
			end

			local Rage_VM_param_2011, Rage_VM_param_2012, Rage_VM_param_2013 = ipairs(Rage_VM_param_2010)

			while true do
				local Rage_VM_param_2014

				Rage_VM_param_2013, Rage_VM_param_2014 = Rage_VM_param_2011(Rage_VM_param_2012, Rage_VM_param_2013)

				if not Rage_VM_param_2013 then
					break
				end

				if Rage_VM_param_2014 then
					local _ = Rage_VM_param_2014.entityId
					local Rage_VM_param_2016 = Rage_VM_param_2014:getPosition()
					local Rage_VM_param_2017 = VectorUtil.newVector3(math.floor(Rage_VM_param_2016.x), math.floor(Rage_VM_param_2016.y), (math.floor(Rage_VM_param_2016.z)))

					Arrow(Rage_VM_param_2017)
				end
			end
		end, 300, 99999)
		PlayerManager:getClientPlayer().Player:setFloatProperty("ArrowSpeedScale", 15)

		local _PlayerManager = PlayerManager
		local getClientPlayer = _PlayerManager.getClientPlayer
		local t51 = {
			pid = "updateBedWarArrowSpeed",
			scale = 15
		}

		getClientPlayer(_PlayerManager):sendPacket(t51)
	end
end
function GMHelper.nrespawn(_)
	PacketSender:getSender():sendRebirth()
end
function GMHelper.TeleportMid(_)
	createButton("Teleport To Mid", "TeleportMid")
	PacketSender:sendLuaCommonData("TeleportHallInitPos")
end
function GMHelper.ParachuteWing(_)
	ChangeSkin(3000, "custom_wing")
end
function GMHelper.Freeze(_)
end
function GMHelper.SpamChat(p634)
	togSpamChat = not togSpamChat
	LuaTimer:cancel(p634.spamchat)

	if togSpamChat then
		GMHelper:openInput({ "" }, function(p635)
			if p635 then
				p634.spamchat = LuaTimer:scheduleTimer(function()
					Spam(p635)
					MsgSender.sendMsg(p635)
				end, 50, 9999999999)
			end
		end)
	end
end
function GMHelper.Diamonds(_)
	give(264)
end
function GMHelper.TNT(_)
	give(46)
end
function GMHelper.Rod(_)
	give(346)
end
function GMHelper.DiamondSword(_)
	give(276)
end
function GMHelper.Armor(_)
	give(310)
	give(311)
	give(312)
	give(313)
end
function GMHelper.Sniper(_)
	give(853)
end
function GMHelper.StarGun(_)
	give(2337)

	for _ = 1, 64 do
		give(442)
	end
end
function GMHelper.Invi(_)
	give(513)
end
function GMHelper.GID(_)
	GMHelper:openInput({ "" }, function(p645)
		give(p645)
	end)
end
function GMHelper.V1(_)
	give(Numb)
end
function GMHelper.V2(_)
	give(Numb)
end
function GMHelper.V3(_)
	give(Numb)
end
function GMHelper.V4(_)
	give(Numb)
end
function GMHelper.V5(_)
	give(Numb)
end
function GMHelper.V6(_)
	give(Numb)
end
function GMHelper.BWFly(p652)
	togBWFly = not togBWFly
	BwFly:SetVisible(false)
	PlayerManager:getClientPlayer()

	if togBWFly then
		BwFly:SetVisible(true)

		local Player = PlayerManager:getClientPlayer().Player
		local Rage_VM_param_1140 = VectorUtil.newVector3(0, 1.35, 0)

		Player:setAllowFlying(true)
		Player:setSpeedAdditionLevel(200)
		Player:setFlying(true)
		Player:moveEntity(Rage_VM_param_1140)
		p652.fly = LuaTimer:scheduleTimer(function()
			if PlayerManager:getClientPlayer().Player:getIsFlying() then
				BwFly:SetVisible(false)

				return
			end

			BwFly:SetVisible(true)
			PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(0)
			LuaTimer:cancel(p652.fly)
		end, 50, -1)
		Player:setAllowFlying(true)
		Player:setSpeedAdditionLevel(200)
		Player:setFlying(true)
		Player:moveEntity(Rage_VM_param_1140)
	end
end
function GMHelper.showDurability(_)
	togshowDurability = not togshowDurability

	if togshowDurability then
		ClientHelper.putBoolPrefs("IsShowItemDurability", true)

		return
	end

	ClientHelper.putBoolPrefs("IsShowItemDurability", true)
end
function GMHelper.knockback(_)
	togknockback = not togknockback
	LuaTimer:cancel(knock)

	if togknockback then
		knock = LuaTimer:scheduleTimer(function()
			sprint(4)
		end, 100, 99999999)
	end
end
function GMHelper.esp(p655)
	togesp = not togesp
	LuaTimer:cancel(p655.espx)

	local Rage_VM_param_1144 = PlayerManager:getPlayers()
	local Rage_VM_param_1145, Rage_VM_param_1146, Rage_VM_param_1147 = ipairs(Rage_VM_param_1144)

	while true do
		local Rage_VM_param_1148

		Rage_VM_param_1147, Rage_VM_param_1148 = Rage_VM_param_1145(Rage_VM_param_1146, Rage_VM_param_1147)

		if not Rage_VM_param_1147 then
			break
		end

		if Rage_VM_param_1148.Player then
			Rage_VM_param_1148.Player:disableXRay()
		end
	end

	if togesp then
		p655.espx = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_2021 = PlayerManager:getPlayers()
			local Rage_VM_param_2022, Rage_VM_param_2023, Rage_VM_param_2024 = ipairs(Rage_VM_param_2021)

			while true do
				local Rage_VM_param_2025

				Rage_VM_param_2024, Rage_VM_param_2025 = Rage_VM_param_2022(Rage_VM_param_2023, Rage_VM_param_2024)

				if not Rage_VM_param_2024 then
					break
				end

				if Rage_VM_param_2025.Player then
					Rage_VM_param_2025.Player:enableXRay({
						0.5,
						0,
						0.5,
						1
					})
				end
			end
		end, 1000, 9999999)
	end
end
function GMHelper.lying(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 15)
end
function GMHelper.sit(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 12)
end
function GMHelper.sit2(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 13)
end
function GMHelper.flyg(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 2)
end
function GMHelper.climb(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 9)
end
function GMHelper.climb2(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 10)
end
function GMHelper.sneaky(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 1008)
end
function GMHelper.swim(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 7)
end
function GMHelper.float(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 8)
end
function GMHelper.run(_)
	PlayerManager:getClientPlayer().Player:setBoolProperty("DisableUpdateAnimState", true)
	HostApi.setClientAction(PlayerManager:getClientPlayer().Player, 0, 2, 1)
end
function GMHelper.GunAimBot(_)
	togGunAimBot = not togGunAimBot
	LuaTimer:cancel(closestEnemyTimer)
	entity(0)

	if togGunAimBot then
		closestEnemyTimer = LuaTimer:scheduleTimer(function()
			local Rage_VM_param_2026 = PlayerManager:getClientPlayer()

			if not Rage_VM_param_2026 then
				return
			end

			local Rage_VM_param_2027 = Rage_VM_param_2026.Player:getPosition()
			local Rage_VM_param_2028 = nil
			local Rage_VM_param_2029 = Rage_VM_param_2026.Player:getTeamId()
			local n41 = 999999999
			local Rage_VM_param_2031, Rage_VM_param_2032, Rage_VM_param_2033 = pairs(PlayerManager:getPlayers())

			while true do
				local Rage_VM_param_2034

				Rage_VM_param_2033, Rage_VM_param_2034 = Rage_VM_param_2031(Rage_VM_param_2032, Rage_VM_param_2033)

				if not Rage_VM_param_2033 then
					break
				end

				local Rage_VM_param_2035 = Rage_VM_param_2034

				if Rage_VM_param_2034 then
					Rage_VM_param_2035 = Rage_VM_param_2034 ~= Rage_VM_param_2026
				end

				if Rage_VM_param_2035 then
					local Rage_VM_param_2036 = Rage_VM_param_2034:getTeamId()
					local Rage_VM_param_2037 = u7()

					if Rage_VM_param_2037 then
						Rage_VM_param_2037 = Rage_VM_param_2029 == 2

						if not Rage_VM_param_2037 then
							Rage_VM_param_2037 = Rage_VM_param_2029 == 3
						end
					end

					if if not Rage_VM_param_2037 then Rage_VM_param_2036 ~= Rage_VM_param_2029 else Rage_VM_param_2036 == 1 then
						local getPosition = Rage_VM_param_2034.getPosition
						local Rage_VM_param_2039 = MathUtil:distanceSquare2d(getPosition(Rage_VM_param_2034), Rage_VM_param_2027)

						if Rage_VM_param_2039 < n41 then
							n41 = Rage_VM_param_2039
							Rage_VM_param_2028 = Rage_VM_param_2034
						end
					end
				end
			end

			if Rage_VM_param_2028 then
				entity(Rage_VM_param_2028.entityId)
			end
		end, 500, -1)
	end
end
function GMHelper.discord(_)
	discord("https://discord.gg/CNHgsHhFuu")
end

local t52 = {}
local t53 = {}
local u88 = Blockman.Instance()
local n42 = 0.8
local n43 = 1.9
local n44 = 0.8

local function u92(p668)
	local Rage_VM_param_452 = GUIManager:createGUIWindow(GUIType.Layout, p668)

	Rage_VM_param_452:SetBackgroundColor({
		1,
		0,
		0,
		1
	})
	Rage_VM_param_452:SetLevel(999)
	Rage_VM_param_452:SetAlwaysOnTop(true)
	GUISystem.Instance():GetRootWindow():AddChildWindow(Rage_VM_param_452)

	return Rage_VM_param_452
end
local function u93(p669, p670, p671, p672, p673, p674)
	local Rage_VM_param_826 = p672 - p670
	local Rage_VM_param_827 = p673 - p671
	local Rage_VM_param_828 = math.sqrt(Rage_VM_param_826 * Rage_VM_param_826 + Rage_VM_param_827 * Rage_VM_param_827)

	if Rage_VM_param_828 <= 0.01 then
		p669:SetVisible(false)

		return
	end

	p669:SetVisible(true)
	p669:SetWidth({
		0,
		Rage_VM_param_828
	})
	p669:SetHeight({
		0,
		p674
	})
	p669:SetXPosition({
		0,
		p670 + Rage_VM_param_826 / 2 - Rage_VM_param_828 / 2
	})
	p669:SetYPosition({
		0,
		p671 + Rage_VM_param_827 / 2
	})
	p669:SetRotate(math.atan2(Rage_VM_param_827, Rage_VM_param_826) * (180 / math.pi))
end
local function u94(p675)
	local Rage_VM_param_1003, Rage_VM_param_1004, Rage_VM_param_1005 = ipairs(p675)

	while true do
		local Rage_VM_param_1006

		Rage_VM_param_1005, Rage_VM_param_1006 = Rage_VM_param_1003(Rage_VM_param_1004, Rage_VM_param_1005)

		if not Rage_VM_param_1005 then
			break
		end

		Rage_VM_param_1006:SetVisible(false)
	end
end
local function u95(p676)
	if t52[p676] then
		return t52[p676]
	end

	local t54 = {}

	for i = 1, 12 do
		t54[i] = u92("BOX3D_" .. p676 .. "_" .. tostring(i))
	end

	t52[p676] = t54

	return t54
end
local function u96(p677)
	local Rage_VM_param_1174, Rage_VM_param_1175, Rage_VM_param_1176 = pairs(t52)

	while true do
		local Rage_VM_param_1177

		Rage_VM_param_1176, Rage_VM_param_1177 = Rage_VM_param_1174(Rage_VM_param_1175, Rage_VM_param_1176)

		if not Rage_VM_param_1176 then
			break
		end

		if not p677[Rage_VM_param_1176] then
			local Rage_VM_param_1178, Rage_VM_param_1179, Rage_VM_param_1180 = ipairs(Rage_VM_param_1177)

			while true do
				local Rage_VM_param_1181

				Rage_VM_param_1180, Rage_VM_param_1181 = Rage_VM_param_1178(Rage_VM_param_1179, Rage_VM_param_1180)

				if not Rage_VM_param_1180 then
					break
				end

				Rage_VM_param_1181:SetVisible(false)
				GUIManager:destroyGUIWindow(Rage_VM_param_1181)
			end

			t52[Rage_VM_param_1176] = nil
		end
	end
end

function updateESP3D()
	local Rage_VM_param_1182 = PlayerManager:getClientPlayer()
	local Rage_VM_param_1183 = not Rage_VM_param_1182

	if not Rage_VM_param_1183 then
		Rage_VM_param_1183 = not Rage_VM_param_1182.Player
	end

	if Rage_VM_param_1183 then
		return
	end

	local Rage_VM_param_1184 = SceneManager.Instance():getMainCamera()

	if not Rage_VM_param_1184 then
		return
	end

	local PixelSize = GUISystem.Instance():GetRootWindow():GetPixelSize()
	local Rage_VM_param_1186 = Rage_VM_param_1184:getPosition()
	local Rage_VM_param_1187 = Rage_VM_param_1184:getDirection()
	local Rage_VM_param_1188 = PlayerManager:getPlayers()

	if not Rage_VM_param_1188 then
		Rage_VM_param_1188 = {}
	end

	local t55 = {}
	local Rage_VM_param_1190, Rage_VM_param_1191, Rage_VM_param_1192 = ipairs(Rage_VM_param_1188)

	while true do
		local Rage_VM_param_1193

		Rage_VM_param_1192, Rage_VM_param_1193 = Rage_VM_param_1190(Rage_VM_param_1191, Rage_VM_param_1192)

		if not Rage_VM_param_1192 then
			break
		end

		local Player = Rage_VM_param_1193.Player
		local Rage_VM_param_1195 = Player

		if Player then
			Rage_VM_param_1195 = Player ~= Rage_VM_param_1182.Player
		end

		if Rage_VM_param_1195 then
			local str = tostring(Player)

			t55[str] = true

			local Rage_VM_param_1197 = u95(str)
			local Rage_VM_param_1198 = Player:getPosition()

			Rage_VM_param_1198.y = Rage_VM_param_1198.y + n43 * 0.5

			local Rage_VM_param_1199 = Rage_VM_param_1198.x - Rage_VM_param_1186.x
			local Rage_VM_param_1200 = Rage_VM_param_1198.y - Rage_VM_param_1186.y
			local Rage_VM_param_1201 = Rage_VM_param_1198.z - Rage_VM_param_1186.z
			local Rage_VM_param_1202 = math.sqrt(Rage_VM_param_1199 * Rage_VM_param_1199 + Rage_VM_param_1200 * Rage_VM_param_1200 + Rage_VM_param_1201 * Rage_VM_param_1201)
			local x = Rage_VM_param_1187.x
			local y = Rage_VM_param_1187.y
			local Rage_VM_param_1205 = Rage_VM_param_1199 / Rage_VM_param_1202 * x + Rage_VM_param_1200 / Rage_VM_param_1202 * y + Rage_VM_param_1201 / Rage_VM_param_1202 * Rage_VM_param_1187.z <= 0

			if Rage_VM_param_1202 <= 0.001 or Rage_VM_param_1205 then
				u94(Rage_VM_param_1197)
			else
				local Rage_VM_param_1206 = n43 * 0.5
				local Rage_VM_param_1207 = n44 * 0.5
				local x8 = Rage_VM_param_1198.x
				local Rage_VM_param_1209 = n42 * 0.5
				local y9 = Rage_VM_param_1198.y
				local z = Rage_VM_param_1198.z
				local t56 = {
					x = x8 - Rage_VM_param_1209,
					y = y9 - Rage_VM_param_1206,
					z = z - Rage_VM_param_1207
				}
				local x9 = Rage_VM_param_1198.x
				local y10 = Rage_VM_param_1198.y
				local z6 = Rage_VM_param_1198.z
				local t57 = {
					x = x9 + Rage_VM_param_1209,
					y = y10 - Rage_VM_param_1206,
					z = z6 - Rage_VM_param_1207
				}
				local x10 = Rage_VM_param_1198.x
				local y11 = Rage_VM_param_1198.y
				local z7 = Rage_VM_param_1198.z
				local t58 = {
					x = x10 + Rage_VM_param_1209,
					y = y11 - Rage_VM_param_1206,
					z = z7 + Rage_VM_param_1207
				}
				local x11 = Rage_VM_param_1198.x
				local y12 = Rage_VM_param_1198.y
				local z8 = Rage_VM_param_1198.z
				local t59 = {
					x = x11 - Rage_VM_param_1209,
					y = y12 - Rage_VM_param_1206,
					z = z8 + Rage_VM_param_1207
				}
				local x12 = Rage_VM_param_1198.x
				local y13 = Rage_VM_param_1198.y
				local z9 = Rage_VM_param_1198.z
				local t60 = {
					x = x12 - Rage_VM_param_1209,
					y = y13 + Rage_VM_param_1206,
					z = z9 - Rage_VM_param_1207
				}
				local x13 = Rage_VM_param_1198.x
				local y14 = Rage_VM_param_1198.y
				local z10 = Rage_VM_param_1198.z
				local t61 = {
					x = x13 + Rage_VM_param_1209,
					y = y14 + Rage_VM_param_1206,
					z = z10 - Rage_VM_param_1207
				}
				local Rage_VM_param_1233 = Rage_VM_param_1198.x + Rage_VM_param_1209
				local y15 = Rage_VM_param_1198.y
				local z11 = Rage_VM_param_1198.z
				local t62 = {
					x = Rage_VM_param_1233,
					y = y15 + Rage_VM_param_1206,
					z = z11 + Rage_VM_param_1207
				}
				local Rage_VM_param_1237 = Rage_VM_param_1198.x - Rage_VM_param_1209
				local Rage_VM_param_1238 = Rage_VM_param_1198.y + Rage_VM_param_1206
				local Rage_VM_param_1239 = Rage_VM_param_1198.z + Rage_VM_param_1207
				local t63 = {
					x = Rage_VM_param_1237,
					y = Rage_VM_param_1238,
					z = Rage_VM_param_1239
				}
				local t64 = {}
				local Rage_VM_param_1242, Rage_VM_param_1243, Rage_VM_param_1244 = ipairs({
					t56,
					t57,
					t58,
					t59,
					t60,
					t61,
					t62,
					t63
				})

				while true do
					local Rage_VM_param_1245

					Rage_VM_param_1244, Rage_VM_param_1245 = Rage_VM_param_1242(Rage_VM_param_1243, Rage_VM_param_1244)

					if not Rage_VM_param_1244 then
						break
					end

					local Rage_VM_param_1246 = u88:getScreenPos(Rage_VM_param_1245)
					local Rage_VM_param_1247 = Rage_VM_param_1246.x * PixelSize.x
					local Rage_VM_param_1248 = Rage_VM_param_1246.y * PixelSize.y

					t64[Rage_VM_param_1244] = {
						x = Rage_VM_param_1247,
						y = Rage_VM_param_1248
					}
				end

				local Rage_VM_param_1249, Rage_VM_param_1250, Rage_VM_param_1251 = ipairs({
					{
						1,
						2
					},
					{
						2,
						3
					},
					{
						3,
						4
					},
					{
						4,
						1
					},
					{
						5,
						6
					},
					{
						6,
						7
					},
					{
						7,
						8
					},
					{
						8,
						5
					},
					{
						1,
						5
					},
					{
						2,
						6
					},
					{
						3,
						7
					},
					{
						4,
						8
					}
				})

				while true do
					local Rage_VM_param_1252

					Rage_VM_param_1251, Rage_VM_param_1252 = Rage_VM_param_1249(Rage_VM_param_1250, Rage_VM_param_1251)

					if not Rage_VM_param_1251 then
						break
					end

					u93(Rage_VM_param_1197[Rage_VM_param_1251], t64[Rage_VM_param_1252[1]].x, t64[Rage_VM_param_1252[1]].y, t64[Rage_VM_param_1252[2]].x, t64[Rage_VM_param_1252[2]].y, 2)
				end
			end
		end
	end

	u96(t55)
end

local function u97(p678)
	if t53[p678] then
		return t53[p678]
	end

	local t65 = {}

	for i = 1, 4 do
		t65[i] = u92("BOX2D_" .. p678 .. "_" .. tostring(i))
	end

	t53[p678] = t65

	return t65
end
local function u98(p679)
	local Rage_VM_param_1162, Rage_VM_param_1163, Rage_VM_param_1164 = pairs(t53)

	while true do
		local Rage_VM_param_1165

		Rage_VM_param_1164, Rage_VM_param_1165 = Rage_VM_param_1162(Rage_VM_param_1163, Rage_VM_param_1164)

		if not Rage_VM_param_1164 then
			break
		end

		if not p679[Rage_VM_param_1164] then
			local Rage_VM_param_1166, Rage_VM_param_1167, Rage_VM_param_1168 = ipairs(Rage_VM_param_1165)

			while true do
				local Rage_VM_param_1169

				Rage_VM_param_1168, Rage_VM_param_1169 = Rage_VM_param_1166(Rage_VM_param_1167, Rage_VM_param_1168)

				if not Rage_VM_param_1168 then
					break
				end

				Rage_VM_param_1169:SetVisible(false)
				GUIManager:destroyGUIWindow(Rage_VM_param_1169)
			end

			t53[Rage_VM_param_1164] = nil
		end
	end
end

function updateESP2D()
	local Rage_VM_param_1256 = PlayerManager:getClientPlayer()
	local Rage_VM_param_1257 = not Rage_VM_param_1256

	if not Rage_VM_param_1257 then
		Rage_VM_param_1257 = not Rage_VM_param_1256.Player
	end

	if Rage_VM_param_1257 then
		return
	end

	local Rage_VM_param_1258 = SceneManager.Instance():getMainCamera()

	if not Rage_VM_param_1258 then
		return
	end

	local PixelSize = GUISystem.Instance():GetRootWindow():GetPixelSize()
	local Rage_VM_param_1260 = Rage_VM_param_1258:getPosition()
	local Rage_VM_param_1261 = Rage_VM_param_1258:getDirection()
	local Rage_VM_param_1262 = PlayerManager:getPlayers()

	if not Rage_VM_param_1262 then
		Rage_VM_param_1262 = {}
	end

	local t66 = {}
	local Rage_VM_param_1264, Rage_VM_param_1265, Rage_VM_param_1266 = ipairs(Rage_VM_param_1262)

	while true do
		local Rage_VM_param_1267

		Rage_VM_param_1266, Rage_VM_param_1267 = Rage_VM_param_1264(Rage_VM_param_1265, Rage_VM_param_1266)

		if not Rage_VM_param_1266 then
			break
		end

		local Player = Rage_VM_param_1267.Player
		local Rage_VM_param_1269 = Player

		if Player then
			Rage_VM_param_1269 = Player ~= Rage_VM_param_1256.Player
		end

		if Rage_VM_param_1269 then
			local str = tostring(Player)

			t66[str] = true

			local Rage_VM_param_1271 = u97(str)
			local Rage_VM_param_1272 = Player:getPosition()

			Rage_VM_param_1272.y = Rage_VM_param_1272.y + n43 * 0.5

			local Rage_VM_param_1273 = Rage_VM_param_1272.x - Rage_VM_param_1260.x
			local Rage_VM_param_1274 = Rage_VM_param_1272.y - Rage_VM_param_1260.y
			local Rage_VM_param_1275 = Rage_VM_param_1272.z - Rage_VM_param_1260.z
			local Rage_VM_param_1276 = math.sqrt(Rage_VM_param_1273 * Rage_VM_param_1273 + Rage_VM_param_1274 * Rage_VM_param_1274 + Rage_VM_param_1275 * Rage_VM_param_1275)
			local x = Rage_VM_param_1261.x
			local y = Rage_VM_param_1261.y
			local Rage_VM_param_1279 = Rage_VM_param_1273 / Rage_VM_param_1276 * x + Rage_VM_param_1274 / Rage_VM_param_1276 * y + Rage_VM_param_1275 / Rage_VM_param_1276 * Rage_VM_param_1261.z <= 0

			if Rage_VM_param_1276 <= 0.001 or Rage_VM_param_1279 then
				u94(Rage_VM_param_1271)
			else
				local Rage_VM_param_1280 = n43 * 0.5
				local Rage_VM_param_1281 = n44 * 0.5
				local Rage_VM_param_1282 = n42 * 0.5
				local x14 = Rage_VM_param_1272.x
				local y16 = Rage_VM_param_1272.y
				local z = Rage_VM_param_1272.z
				local t67 = {
					x = x14 - Rage_VM_param_1282,
					y = y16 - Rage_VM_param_1280,
					z = z - Rage_VM_param_1281
				}
				local x15 = Rage_VM_param_1272.x
				local y17 = Rage_VM_param_1272.y
				local z12 = Rage_VM_param_1272.z
				local t68 = {
					x = x15 + Rage_VM_param_1282,
					y = y17 - Rage_VM_param_1280,
					z = z12 - Rage_VM_param_1281
				}
				local x16 = Rage_VM_param_1272.x
				local y18 = Rage_VM_param_1272.y
				local z13 = Rage_VM_param_1272.z
				local t69 = {
					x = x16 + Rage_VM_param_1282,
					y = y18 - Rage_VM_param_1280,
					z = z13 + Rage_VM_param_1281
				}
				local x17 = Rage_VM_param_1272.x
				local y19 = Rage_VM_param_1272.y
				local z14 = Rage_VM_param_1272.z
				local t70 = {
					x = x17 - Rage_VM_param_1282,
					y = y19 - Rage_VM_param_1280,
					z = z14 + Rage_VM_param_1281
				}
				local x18 = Rage_VM_param_1272.x
				local y20 = Rage_VM_param_1272.y
				local z15 = Rage_VM_param_1272.z
				local t71 = {
					x = x18 - Rage_VM_param_1282,
					y = y20 + Rage_VM_param_1280,
					z = z15 - Rage_VM_param_1281
				}
				local x19 = Rage_VM_param_1272.x
				local y21 = Rage_VM_param_1272.y
				local z16 = Rage_VM_param_1272.z
				local t72 = {
					x = x19 + Rage_VM_param_1282,
					y = y21 + Rage_VM_param_1280,
					z = z16 - Rage_VM_param_1281
				}
				local Rage_VM_param_1307 = Rage_VM_param_1272.x + Rage_VM_param_1282
				local y22 = Rage_VM_param_1272.y
				local z17 = Rage_VM_param_1272.z
				local t73 = {
					x = Rage_VM_param_1307,
					y = y22 + Rage_VM_param_1280,
					z = z17 + Rage_VM_param_1281
				}
				local Rage_VM_param_1311 = Rage_VM_param_1272.x - Rage_VM_param_1282
				local Rage_VM_param_1312 = Rage_VM_param_1272.y + Rage_VM_param_1280
				local Rage_VM_param_1313 = Rage_VM_param_1272.z + Rage_VM_param_1281
				local t74 = {
					t67,
					t68,
					t69,
					t70,
					t71,
					t72,
					t73,
					{
						x = Rage_VM_param_1311,
						y = Rage_VM_param_1312,
						z = Rage_VM_param_1313
					}
				}
				local n45 = 1e999
				local huge = math.huge
				local n46 = -1e999
				local n47 = -1e999
				local Rage_VM_param_1319, Rage_VM_param_1320, Rage_VM_param_1321 = ipairs(t74)

				while true do
					local Rage_VM_param_1322

					Rage_VM_param_1321, Rage_VM_param_1322 = Rage_VM_param_1319(Rage_VM_param_1320, Rage_VM_param_1321)

					if not Rage_VM_param_1321 then
						break
					end

					local Rage_VM_param_1323 = u88:getScreenPos(Rage_VM_param_1322)
					local Rage_VM_param_1324 = Rage_VM_param_1323.x * PixelSize.x
					local Rage_VM_param_1325 = Rage_VM_param_1323.y * PixelSize.y

					if Rage_VM_param_1324 < huge then
						huge = Rage_VM_param_1324
					end

					if n47 < Rage_VM_param_1324 then
						n47 = Rage_VM_param_1324
					end

					if Rage_VM_param_1325 < n45 then
						n45 = Rage_VM_param_1325
					end

					if n46 < Rage_VM_param_1325 then
						n46 = Rage_VM_param_1325
					end
				end

				u93(Rage_VM_param_1271[1], huge, n45, n47, n45, 2)
				u93(Rage_VM_param_1271[2], huge, n46, n47, n46, 2)
				u93(Rage_VM_param_1271[3], huge, n45, huge, n46, 2)
				u93(Rage_VM_param_1271[4], n47, n45, n47, n46, 2)
			end
		end
	end

	u98(t66)
end
function clearAllESP()
	local _ipairs = ipairs
	local Rage_VM_param_1327 = t53
	local Rage_VM_param_1328, Rage_VM_param_1329, Rage_VM_param_1330 = _ipairs({
		t52,
		Rage_VM_param_1327
	})

	while true do
		local Rage_VM_param_1331

		Rage_VM_param_1330, Rage_VM_param_1331 = Rage_VM_param_1328(Rage_VM_param_1329, Rage_VM_param_1330)

		if not Rage_VM_param_1330 then
			break
		end

		local Rage_VM_param_1332, Rage_VM_param_1333, Rage_VM_param_1334 = pairs(Rage_VM_param_1331)

		while true do
			local Rage_VM_param_1335

			Rage_VM_param_1334, Rage_VM_param_1335 = Rage_VM_param_1332(Rage_VM_param_1333, Rage_VM_param_1334)

			if not Rage_VM_param_1334 then
				break
			end

			local Rage_VM_param_1336, Rage_VM_param_1337, Rage_VM_param_1338 = ipairs(Rage_VM_param_1335)

			while true do
				local Rage_VM_param_1339

				Rage_VM_param_1338, Rage_VM_param_1339 = Rage_VM_param_1336(Rage_VM_param_1337, Rage_VM_param_1338)

				if not Rage_VM_param_1338 then
					break
				end

				if Rage_VM_param_1339 then
					Rage_VM_param_1339:SetVisible(false)
					GUIManager:destroyGUIWindow(Rage_VM_param_1339)
				end
			end
		end
	end

	t52 = {}
	t53 = {}
end
function GMHelper.esp2d(p680)
	togesp2d = not togesp2d

	if togesp2d then
		togesp3d = false

		if p680.esp3dd then
			LuaTimer:cancel(p680.esp3dd)
			p680.esp3dd = nil
		end

		GMSetting:changeColorByFunction("esp3d", false)
	end

	if p680.esp2dd then
		LuaTimer:cancel(p680.esp2dd)
		p680.esp2dd = nil
	end

	clearAllESP()

	if togesp2d then
		p680.esp2dd = LuaTimer:scheduleTimer(updateESP2D, 10, 999999)
	end
end
function GMHelper.esp3d(p681)
	togesp3d = not togesp3d

	if togesp3d then
		togesp2d = false

		if p681.esp2dd then
			LuaTimer:cancel(p681.esp2dd)
			p681.esp2dd = nil
		end

		GMSetting:changeColorByFunction("esp2d", false)
	end

	if p681.esp3dd then
		LuaTimer:cancel(p681.esp3dd)
		p681.esp3dd = nil
	end

	clearAllESP()

	if togesp3d then
		p681.esp3dd = LuaTimer:scheduleTimer(updateESP3D, 30, 999999)
	end
end
function GMHelper.dropitems(_)
	if u5() then
		for i = 0, 35 do
			Drop(i)
		end

		return
	end

	for i = 0, 80 do
		Drop(i)
	end
end
function GMHelper.koper(_)
	discord("https://youtube.com/@iamnotkoperbg8442?si=H2vfaeFJmrCCck0i")
end
function GMHelper.eternal(_)
	discord("https://youtube.com/@eternalhackerbg?si=CB0TARZ0FW4UNxwg")
end
function GMHelper.AntiKnockBack(_)
	togAntiKnockBack = true

	if togAntiKnockBack then
		KnockBack(1)
		CEvents.HurtCameraEffectEvent:registerCallBack(function(_)
		end)
	end
end
