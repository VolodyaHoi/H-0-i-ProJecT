script_name("H[0]i cheat") 
script_author("gg.]VolodyaHoi[") 
script_version("15.4") 
script_description("Hoi-чит by VolodyaHoi") 

print(script.this.name .. ' v' .. script.this.version) 
print('Автор: ' .. table.concat(script.this.authors, ', '))  
print(script.this.description) 

require "lib.moonloader" 
local keys = require "vkeys" 
local sampev = require "lib.samp.events" 
local imgui = require "imgui" 
local encoding = require "encoding" 
encoding.default = "CP1251" 
u8 = encoding.UTF8 

local floodvh = "Flooder by VolodyaHoi" 
local main_window_state = imgui.ImBool(false) 
local text_buffer = imgui.ImBuffer(256) 
local text_cmd = imgui.ImBuffer(256) 
local text_wait = imgui.ImBuffer(256) 
local text_dmg = imgui.ImBuffer(256) 
local text_nick = imgui.ImBuffer(256) 
local text_eblan = imgui.ImBuffer(256) 
local text_tp = imgui.ImBuffer(256) 
local text_ammo = imgui.ImBuffer(256) 
local text_rv = imgui.ImBuffer(256) 
local sw, sh = getScreenResolution() 

local second_window_state = imgui.ImBool(false)
local cheats_window_state = imgui.ImBool(false)
local carf_window_state = imgui.ImBool(false)
local antic_window_state = imgui.ImBool(false)
local crash_window_state = imgui.ImBool(false)
local dos_window_state = imgui.ImBool(false)
local bots_window_state = imgui.ImBool(false)
local packet_window_state = imgui.ImBool(false)
local players_window_state = imgui.ImBool(false)
local teleport_window_state = imgui.ImBool(false)
local servers_window_state = imgui.ImBool(false)
local weapon_window_state = imgui.ImBool(false)

local font_flag = require('moonloader').font_flag
local my_font = renderCreateFont('Verdana', 12, font_flag.BOLD + font_flag.SHADOW)

local checkbox1 = imgui.ImBool(false)
local checkbox2 = imgui.ImBool(false)
local checkbox3 = imgui.ImBool(false)
local checkbox4 = imgui.ImBool(false)
local checkbox5 = imgui.ImBool(true)
local checkbox6 = imgui.ImBool(false)
local checkbox7 = imgui.ImBool(false)
local checkbox8 = imgui.ImBool(false)
local checkbox9 = imgui.ImBool(true)
local checkbox10 = imgui.ImBool(false)
local checkbox11 = imgui.ImBool(false)
local checkbox13 = imgui.ImBool(true)
local checkbox14 = imgui.ImBool(true)
local checkbox16 = imgui.ImBool(false)
local checkbox17 = imgui.ImBool(false)
local checkbox18 = imgui.ImBool(false)
local checkbox19 = imgui.ImBool(false)
local checkbox21 = imgui.ImBool(false)
local checkbox22 = imgui.ImBool(true)
local checkbox23 = imgui.ImBool(true)
local checkbox24 = imgui.ImBool(false)

pflood = 0
pdmg = 0
botg = 0
idolddmg = 0
rconf = 0
flodead = 0
cmdflood = 0
gidr = 0
test = 0

local themes = import "resource/imgui_themes.lua"

GMp = "FF0000"
LOGGERp = "FF0000"
PULSEHp = "FF0000"
FLOODERp = "FF0000"

function main() 
    if not isSampLoaded() or not isSampfuncsLoaded() then return end 
    while not isSampAvailable() do wait(100) end 

    sampAddChatMessage ("{00FFFF}H[0]i cheat загружен.", 0xFF0000AA) 
    sampAddChatMessage ("{00FFFF}Активация L.Shift + M")

    imgui.Process = false

    imgui.SwitchContext()
    themes.SwitchColorTheme(8)

    resultid, id = sampGetPlayerIdByCharHandle(PLAYER_PED) 
    nick = sampGetPlayerNickname(id) 

    thr = lua_thread.create_suspended(pfthr)
    dmgthr = lua_thread.create_suspended(pizdmg)
    botthr = lua_thread.create_suspended(bots)
    iddmg = lua_thread.create_suspended(olddmg)
    rcon = lua_thread.create_suspended(rconflooder)
    dflood = lua_thread.create_suspended(deadflood)
    commandflood = lua_thread.create_suspended(comflood)
    crvanka = lua_thread.create_suspended(rvankacar)

    while true do -- бесконечный цикл
        if isKeyDown(VK_SHIFT) and isKeyJustPressed(VK_M) and not sampIsChatInputActive() then -- комбинация шифт + M [eng]
            main_window_state.v = not main_window_state.v
            imgui.Process = main_window_state.v
        end

        if checkbox1.v then
            math.randomseed(os.time())
            qrand = math.random(-0.500, 4.500)
            setCharQuaternion(PLAYER_PED, 1.0, 1.0, 1.0, 1.0)
        end
        if checkbox2.v then
            function sampev.onPlayerStreamIn(playerId)
                if playerId ~= id then
                    sampSendGiveDamage(playerId, 300.0, 34, 3)
                end
            end
            DAMAGERp = "00FF00"
        elseif checkbox2.v == false then
            function sampev.onPlayerStreamIn(playerId)
                return true
            end
            DAMAGERp = "FF0000"
        end
        if checkbox3.v then
            setNightVision(true)
        elseif checkbox3.v == false then
            setNightVision(false)
        end
        if checkbox4.v then
            setInfraredVision(true)
        elseif checkbox4.v == false then
            setInfraredVision(false)
        end
        if checkbox5.v then
            x1, y1, z1 = getCharCoordinates(PLAYER_PED)
            w1 = getCharHeading(PLAYER_PED)
            maxid2 = sampGetMaxPlayerId()
            streamp2 = sampGetPlayerCount(true)
            pping = sampGetPlayerPing(id)
            renderFontDrawText(my_font, "{00FFFF}H[0]i funcks:\n{" .. GMp .. "}GM\n{" .. LOGGERp .. "}Logger\n{" .. PULSEHp .. "}PulseHealth\n{" .. FLOODERp .. "}Flooder", 10, 400, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{00FFFF}Позиция игрока - X: " .. math.floor(x1) .. " | Y:" .. math.floor(y1) .. " | Z: " .. math.floor(z1) .. "", 875, 497, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{00FFFF}Максимальный id игрока на сервере - " .. maxid2 .. "", 875, 515, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{00FFFF}Кол-во игроков в зоне стрима - " .. streamp2 .. "", 875, 533, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{00FFFF}Ваш пинг - " .. pping .. "", 875, 551, 0xFFFFFFFF) 
            wait(0)
        elseif checkbox5.v == false then
            renderFontDrawText(my_font, " ", 10, 400, 0xFFFFFFFF)
            wait(0)
        end
        if checkbox6.v then
            function sampev.onSendEnterVehicle(vehicleId, passenger)
                sampAddChatMessage("{00FFFF}[Logger] Серверный id машины - " .. vehicleId .. "")
            end
            function sampev.onSendInteriorChangeNotification(interior)
                sampAddChatMessage("{00FFFF}[Logger] id интерьера - " .. interior .. "")
            end
            function sampev.onSendPickedUpPickup(pickupId)
                sampAddChatMessage("{00FFFF}[Logger] id пикапа - " .. pickupId .. "")
            end
            function sampev.onShowDialog(dialogId, style, title, button1, button2, text)
                sampAddChatMessage("{00FFFF}[Logger] id диаолового окна - " .. dialogId .. "")
                sampAddChatMessage("{00FFFF}[Logger] стиль диалога - " .. style .. "")
                sampAddChatMessage("{00FFFF}[Logger] заговолок диалога - " .. title .. "")
                sampAddChatMessage("{00FFFF}[Logger] кнопка 1 - " .. button1 .. "")
                sampAddChatMessage("{00FFFF}[Logger] кнопка 2 - " .. button2 .. "")
                sampAddChatMessage("{00FFFF}[Logger] текст диалога - " .. text .. "")
            end
            LOGGERp = "00FF00"
        elseif checkbox6.v == false then
            function sampev.onSendEnterVehicle(vehicleId, passenger)
                return true
            end
            function sampev.onSendInteriorChangeNotification(interior)
                return true
            end
            function sampev.onSendPickedUpPickup(pickupId)
                return true
            end
            function sampev.onShowDialog(dialogId, style, title, button1, button2, text)
                return true
            end
            LOGGERp = "FF0000"
        end
        if checkbox7.v then
            egmxp = getCharHealth(PLAYER_PED)
            egmar = getCharArmour(PLAYER_PED)
            if egmxp <= 99 then
                setCharHealth(PLAYER_PED, 100)
            end
            if egmar <= 99 and egmar ~= 0 then
                addArmourToChar(PLAYER_PED, 100)
            end
            GMp = "00FF00"
        elseif checkbox7.v == false then
            GMp = "FF0000"
        end
        if checkbox8.v then
            setCharHealth(PLAYER_PED, 100)
            addArmourToChar(PLAYER_PED, 100)
            GMp = "00FF00"
            carresult = isCharSittingInAnyCar(PLAYER_PED)
            if carresult == true then
                carf = storeCarCharIsInNoSave(PLAYER_PED)
                fixCar(carf)
            end
        elseif checkbox8.v == false then
            GMp = "FF0000"
        end
        if checkbox9.v then
            setPlayerNeverGetsTired(PLAYER_PED, true)
        elseif checkbox9.v == false then
            setPlayerNeverGetsTired(PLAYER_PED, false)
        end
        if checkbox10.v then
            math.randomseed(os.time())
            pulse = math.random(25, 100)
            setCharHealth(PLAYER_PED, pulse)
            PULSEHp = "00FF00"
        elseif checkbox10.v == false then
            PULSEHp = "FF0000"
        end
        if checkbox11.v then
            carresult = isCharSittingInAnyCar(PLAYER_PED)
            if carresult == true then
                setCharCollision(PLAYER_PED, true)
            end
        elseif checkbox11.v == false then
            if carresult == true then
                setCharCollision(PLAYER_PED, false)
            end
        end
        if checkbox16.v then
            function sampev.onResetPlayerWeapons()
                return false
            end
        elseif checkbox16.v == false then
            function sampev.onResetPlayerWeapons()
                return true
            end
        end
        if checkbox17.v then
            function sampev.onPlayerStreamIn(playerId)
                streamn = sampGetPlayerNickname(playerId)
                sampAddChatMessage("{00FFFF}Чел в стриме - " .. streamn .. "")
            end
        elseif checkbox17.v == false then
            function sampev.onPlayerStreamIn(playerId)
                return true
            end
        end
        if checkbox18.v then
            function sampev.onSetPlayerPos()
                return false
            end
        elseif checkbox18.v == false then
            function sampev.onSetPlayerPos()
                return true
            end
        end
        if checkbox19.v then 
            function sampev.onSendPlayerSync(data)
                data.quaternion[0] = math.random(-1, 1)
                data.quaternion[1] = math.random(-1, 1)
                data.quaternion[2] = math.random(-1, 1)
                data.quaternion[3] = math.random(-1, 1)
                data.moveSpeed.x = math.random(-0.500, 4.500)
                data.moveSpeed.y = math.random(-0.500, 4.500)
                data.moveSpeed.z = math.random(-0.500, 4.500)
            end
        elseif checkbox19.v == false then
            function sampev.onSendPlayerSync(data)
                return true
            end
        end
        if checkbox21.v then 
            function sampev.onSendVehicleSync(data)
                data.quaternion[0] = math.random(-1, 1)
                data.quaternion[1] = math.random(-1, 1)
                data.quaternion[2] = math.random(-1, 1)
                data.quaternion[3] = math.random(-1, 1)
                data.moveSpeed.x = math.random(-0.500, 4.500)
                data.moveSpeed.y = math.random(-0.500, 4.500)
                data.moveSpeed.z = math.random(-0.500, 4.500)
            end
        elseif checkbox21.v == false then
            function sampev.onSendVehicleSync(data)
                return true
            end
        end
        if checkbox22.v then
            setCharCanBeKnockedOffBike(PLAYER_PED, true)
        elseif checkbox22.v == false then
            setCharCanBeKnockedOffBike(PLAYER_PED, false)
        end
        if checkbox23.v then
            setCharDrownsInWater(PLAYER_PED, false)
        elseif checkbox23.v == false then
            setCharDrownsInWater(PLAYER_PED, true)
        end
    end
end

function imgui.OnDrawFrame()

	if not main_window_state.v then
		imgui.Process = false
    end

    if main_window_state.v then
        local sw, sh = getScreenResolution()
        imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.SetNextWindowSize(imgui.ImVec2(350, 400), imgui.Cond.FirstUseEver)
        x, y, z = getCharCoordinates(PLAYER_PED)
        ip, port = sampGetCurrentServerAddress()
        maxid = sampGetMaxPlayerId()
        streamp = sampGetPlayerCount(true)
        idnr = getCurrentCharWeapon(PLAYER_PED)
        nrammo = getAmmoInCharWeapon(PLAYER_PED, idnr)
        XQ, YQ, ZQ, WQ = getCharQuaternion(PLAYER_PED)
    
        imgui.Begin(u8"H[0]i-Lite чит by gg.]VolodyaHoi[", main_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("TwoCWind", imgui.ImVec2(341, 300), true)
        imgui.Text(u8"Пользователь чита - " .. nick .. " [" .. id .."]")
		if imgui.Button(u8"H[0]i функс") then
			second_window_state.v = not second_window_state.v
	        imgui.Process = second_window_state.v
        end
        if imgui.Button(u8"Читы") then
			cheats_window_state.v = not cheats_window_state.v
	        imgui.Process = cheats_window_state.v
        end	
        if imgui.Button(u8"Кар функс") then
			carf_window_state.v = not carf_window_state.v
	        imgui.Process = carf_window_state.v
        end	
        if imgui.Button(u8"АнтиКрашеры") then
			antic_window_state.v = not antic_window_state.v
	        imgui.Process = antic_window_state.v
		end	
        if imgui.Button(u8"Крашеры") then
			crash_window_state.v = not crash_window_state.v
	        imgui.Process = crash_window_state.v
        end	
        if imgui.Button(u8"Дос/Эксплойты") then
			dos_window_state.v = not dos_window_state.v
	        imgui.Process = dos_window_state.v
        end	
        if imgui.Button(u8"Боты") then
			bots_window_state.v = not bots_window_state.v
	        imgui.Process = bots_window_state.v
        end	
        if imgui.Button(u8"Пакеты") then
			packet_window_state.v = not packet_window_state.v
	        imgui.Process = packet_window_state.v
        end	
        if imgui.Button(u8"Игроки") then
			players_window_state.v = not players_window_state.v
	        imgui.Process = players_window_state.v
        end	
        if imgui.Button(u8"Телепорты") then
			teleport_window_state.v = not teleport_window_state.v
	        imgui.Process = teleport_window_state.v
        end
        if imgui.Button(u8"Сервера") then
			servers_window_state.v = not servers_window_state.v
	        imgui.Process = servers_window_state.v
        end
        imgui.EndChild()
        imgui.BeginChild("ThrCWind", imgui.ImVec2(341, 65), true)
        imgui.Text(u8"Автор - gg.]VolodyaHoi[")
        imgui.Text(u8"ВКонтакте - vk.com/volodyahoi")
        imgui.Text(u8"BlastHack - https://www.blast.hk/members/411247/")
        imgui.EndChild()
		imgui.End()
    end

	if second_window_state.v then
        imgui.Begin(u8"H[0]i функс", second_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("OneCWind", imgui.ImVec2(300, 150), true)
        imgui.Checkbox(u8"H[0]i панель", checkbox5)
        if imgui.Button(u8"Фаст реконнект") then
            sampConnectToServer(ip, port)
        end
        imgui.Checkbox(u8"КиллАура", checkbox2)
        imgui.Checkbox(u8"АнимРеверс", checkbox1)
        if imgui.Button(u8"Выдать джетпак") then
            sampSetSpecialAction(2)
        end
        imgui.Checkbox(u8"Виз.ПНВ", checkbox3)
        imgui.Checkbox(u8"Виз.Тепловизор", checkbox4)
        imgui.Checkbox(u8"Логгер", checkbox6)
        imgui.Checkbox(u8"ГодМод", checkbox7)
        imgui.Checkbox(u8"Рванка пешком", checkbox19)
        imgui.EndChild()
        imgui.End()
    end
    
    if cheats_window_state.v then
        imgui.Begin(u8"Читы", cheats_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("FCWind", imgui.ImVec2(300, 150), true)
        if imgui.Button(u8"Пополнить HP") then
            setCharHealth(PLAYER_PED, 100)
        end
        if imgui.Button(u8"Пополнить Armour") then
            addArmourToChar(PLAYER_PED, 100)
        end
        if imgui.Button(u8"ВеапонХак") then
            weapon_window_state.v = not weapon_window_state.v
	        imgui.Process = weapon_window_state.v
        end
        if imgui.Button(u8"Удалить все оружие") then
            removeAllCharWeapons(PLAYER_PED)
        end
        imgui.Checkbox(u8"Нуб ГМ", checkbox8)
        if imgui.Button(u8"РеСпавн")  then
            sampSpawnPlayer()
        end
        imgui.Checkbox(u8"Беск.бег", checkbox9)
        imgui.Checkbox(u8"Пульсатор", checkbox10)
        if imgui.CollapsingHeader(u8"Выдать патроны") then
            imgui.InputText(u8"Кол-во", text_ammo)
            if imgui.Button(u8"Выдать аммо на оружие в руках") then
                idgive = getCurrentCharWeapon(PLAYER_PED)
                addAmmoToChar(PLAYER_PED, idgive, text_ammo.v)
            end
        end
        if imgui.Button(u8"Тп по метке") then
            mresult, X3, Y3, Z3 = getTargetBlipCoordinates()
            if mresult == true then 
                setCharCoordinates(PLAYER_PED, X3, Y3, Z3)
            end
        end
        imgui.Checkbox(u8"АнтиБайк фаил", checkbox22)
        imgui.Checkbox(u8"Беск.кислород", checkbox23)
        imgui.EndChild()
		imgui.End()
    end
    
    if carf_window_state.v then
        imgui.Begin(u8"Кар функс", carf_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("CarCWind", imgui.ImVec2(300, 150), true)
        imgui.Checkbox(u8"Фак кар", checkbox11)
        if imgui.Button(u8"Починить кар") then
            carf = storeCarCharIsInNoSave(PLAYER_PED)
            carresultf = isCharSittingInAnyCar(PLAYER_PED)
            if carresultf == true then
                fixCar(carf)
            end
        end
        if imgui.Button(u8"Взорвать кар") then
            carex = storeCarCharIsInNoSave(PLAYER_PED)
            carresultex = isCharSittingInAnyCar(PLAYER_PED)
            if carresultex == true then
                explodeCar(carex)
            end
        end
        if imgui.Button(u8"Уст.нитро") then
            carn = storeCarCharIsInNoSave(PLAYER_PED)
            carresultn = isCharSittingInAnyCar(PLAYER_PED)
            if carresultn == true then
                giveNonPlayerCarNitro(carn)
            end
        end
        if imgui.Button(u8"Уст/Удал.гидравлику") then
            carresult = isCharSittingInAnyCar(PLAYER_PED)
            if carresult == true then
                if gidr == 0 then
                    cargd = storeCarCharIsInNoSave(PLAYER_PED)
                    setCarHydraulics(cargd, true)
                    gidr = 1
                elseif gidr == 1 then
                    setCarHydraulics(cargd, false)
                    gidr = 0
                end
            end
        end
        imgui.Checkbox(u8"Рванка инкар", checkbox21)
        imgui.EndChild()
		imgui.End()
    end
    
    if antic_window_state.v then
        imgui.Begin(u8"АнтиКрашеры", antic_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("antiCWind", imgui.ImVec2(300, 150), true)
        imgui.Text(u8"Данная функа недоступна в Lite версии!")
        imgui.EndChild()
		imgui.End()
    end
    
    if crash_window_state.v then
        imgui.Begin(u8"Крашеры", crash_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("crashWind", imgui.ImVec2(300, 150), true)
        imgui.Text(u8"Данная функа недоступна в Lite версии!")
        imgui.EndChild()
		imgui.End()
	end
    
    if dos_window_state.v then
        imgui.Begin(u8"Дос/Эксплойты", dos_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("dosWind", imgui.ImVec2(300, 150), true)
        if imgui.Button(u8"Фаст-Флудер") then
            for flood = 1,120 do 
                sampSendChat(floodvh)
            end
        end
        if imgui.CollapsingHeader(u8"Про-флудер") then
            imgui.InputText(u8"мсек.", text_buffer)
            if imgui.Button(u8"Включить флуд") then
                thr:run()
            end 
        end
        if imgui.Button(u8"Ркон-флудер") then
            rcon:run()
        end
        if imgui.Button(u8"Флуд смертями") then
            dflood:run()
        end
        if imgui.CollapsingHeader(u8"Флуд командами") then
            imgui.InputText(u8"Команда (без /)", text_cmd)
            imgui.InputText(u8"мcек.", text_wait)
            if imgui.Button(u8"Включить флуд") then
                commandflood:run()
            end
        end
        imgui.EndChild()
		imgui.End()
    end
    
    if bots_window_state.v then
        imgui.Begin(u8"Боты", bots_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("botsCWind", imgui.ImVec2(300, 150), true)
        if imgui.CollapsingHeader(u8"Грузчик") then
            if imgui.Button(u8"ЧекПоинт 1") then
                x0, y0, z0 = getCharCoordinates(PLAYER_PED)
                sampCreate3dTextEx(1, "{00FFFF}Точка телепорта №1", 0xFF0000AA, x0, y0, z0, 1000, true, -1, -1)
                chekone = x0, y0, z0
            end
            if imgui.Button(u8"ЧекПоинт 2") then
                x1, y1, z1 = getCharCoordinates(PLAYER_PED)
                sampCreate3dTextEx(2, "{00FFFF}Точка телепорта №2", 0xFF0000AA, x1, y1, z1, 1000, true, -1, -1)
                chektwo = x1, y1, z1
            end
            if imgui.Button(u8"Работать") then
                botthr:run()
            end
            if imgui.Button(u8"Очистить пикапы") then
                sampCreate3dTextEx(1, "    ", 0xFF0000AA, x0, y0, z0, 1000, true, -1, -1)
                sampCreate3dTextEx(2, "    ", 0xFF0000AA, x1, y1, z1, 1000, true, -1, -1)
            end
        end
        imgui.EndChild()
		imgui.End()
    end
    
    if packet_window_state.v then
        imgui.Begin(u8"Пакеты", packet_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("PackCWind", imgui.ImVec2(300, 150), true)
        imgui.Checkbox(u8"АнтиРазоружение", checkbox16)
        imgui.Checkbox(u8"Получать инфу о новых игроках в стриме", checkbox17)
        imgui.Checkbox(u8"Блокировать тп", checkbox18)
        imgui.EndChild()
		imgui.End()
    end
    
    if players_window_state.v then
        imgui.Begin(u8"Игроки", players_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("playWind", imgui.ImVec2(300, 150), true)
        if imgui.CollapsingHeader(u8"ТП к игрокам") then
            imgui.InputText(u8"Ввoд id", text_tp)
            if imgui.Button(u8"Телепорт") then
                result, posX, posY, posZ = sampGetStreamedOutPlayerPos(text_tp.v)
                setCharCoordinates(PLAYER_PED, posX, posY, posZ)
            end
        end
        imgui.EndChild()
        imgui.End()
    end
    
    if teleport_window_state.v then
        imgui.Begin(u8"Телепорты", teleport_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("tpwind", imgui.ImVec2(300, 150), true)
        if imgui.Button(u8"Мерия") then
            setCharCoordinates(PLAYER_PED, 1480.95, -1771.27, 18.80)
        end
        if imgui.Button(u8"Банк") then
            setCharCoordinates(PLAYER_PED, 1411.96, -1699.79, 13.54)
        end
        if imgui.Button(u8"Автошкола") then
            setCharCoordinates(PLAYER_PED, -2026.62, -101.39, 35.16)
        end
        if imgui.Button(u8"Больница СФ") then
            setCharCoordinates(PLAYER_PED, -2655.05, 639.69, 14.45)
        end
        if imgui.Button(u8"ЛКН") then
            setCharCoordinates(PLAYER_PED, 1454.97, 750.99, 11.02)
		end
        if imgui.Button(u8"Русская Мафия") then
            setCharCoordinates(PLAYER_PED, 937.85, 1733.32, 8.85)
        end
        if imgui.Button(u8"Якудза") then
            setCharCoordinates(PLAYER_PED, 1456.92, 2773.42, 10.82)
        end
        if imgui.Button(u8"Грув") then
            setCharCoordinates(PLAYER_PED, 2495.26, -1690.99, 14.77)
        end
        if imgui.Button(u8"Баллас") then
            setCharCoordinates(PLAYER_PED, 2650.06, -2021.80, 14.18)
        end
        if imgui.Button(u8"Вагос") then
            setCharCoordinates(PLAYER_PED, 2770.72, -1628.43, 12.18)
        end
        if imgui.Button(u8"Рифа") then
            setCharCoordinates(PLAYER_PED, 2185.72, -1814.39, 13.55)
        end
        if imgui.Button(u8"Ацтек") then
            setCharCoordinates(PLAYER_PED, 1667.49, -2107.72, 14.07)
        end
        if imgui.Button(u8"Магазин одежды ЛС") then
            setCharCoordinates(PLAYER_PED, 461.18, -1500.94, 31.06)
        end
        if imgui.Button(u8"4 Дракона") then
            setCharCoordinates(PLAYER_PED, 2022.01, 1007.08, 10.82)
        end
        if imgui.Button(u8"Казино Калигула") then
            setCharCoordinates(PLAYER_PED, 2194.70, 1676.73, 12.37)
        end
        if imgui.Button(u8"Дерби") then
            setCharCoordinates(PLAYER_PED, -2126.56, -443.59, 35.53)
        end
        if imgui.Button(u8"Либерти-сити") then
            setCharCoordinates(PLAYER_PED, -750.80, 491.00, 1371.70, 1)
        end
        imgui.EndChild()
		imgui.End()
    end
    
    if servers_window_state.v then
        imgui.Begin(u8"Сервера", servers_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("servWind", imgui.ImVec2(300, 150), true)
        if imgui.CollapsingHeader(u8"Список серверов") then
            if imgui.Button(u8"Cheating ALLOWED") then
                sampConnectToServer("37.252.189.76", 7778)
            end
            if imgui.Button(u8"G00D Dr1FT") then
                sampConnectToServer("46.174.50.20", 7819)
            end
        end
        if imgui.CollapsingHeader(u8"Смена ника") then
            imgui.InputText(u8"Ввод ника", text_nick)
            if imgui.Button(u8"Сменить") then
                sampSetLocalPlayerName(text_nick.v)
                sampConnectToServer(ip, port)
            end
        end
        imgui.EndChild()
		imgui.End()
    end

    if weapon_window_state.v then
        imgui.Begin(u8"ВеапонХак", weapon_window_state, imgui.WindowFlags.NoResize)
        imgui.BeginChild("WeapCWind", imgui.ImVec2(300, 150), true)
        if imgui.Button(u8"Кулак") then
            giveWeaponToChar(PLAYER_PED, 0, 1)
        end
        if imgui.Button(u8"Кастет") then
            giveWeaponToChar(PLAYER_PED, 1, 1)
        end
        if imgui.Button(u8"Клюшка для гольфа") then
            giveWeaponToChar(PLAYER_PED, 2, 1)
        end
        if imgui.Button(u8"Полицейская дубинка") then
            giveWeaponToChar(PLAYER_PED, 3, 1)
        end
        if imgui.Button(u8"Нож") then
            giveWeaponToChar(PLAYER_PED, 4, 1)
        end
        if imgui.Button(u8"Бейсбольная бита") then
            giveWeaponToChar(PLAYER_PED, 5, 1)
        end
        if imgui.Button(u8"Лопата") then
            giveWeaponToChar(PLAYER_PED, 6, 1)
        end
        if imgui.Button(u8"Кий") then
            giveWeaponToChar(PLAYER_PED, 7, 1)
        end
        if imgui.Button(u8"Катана") then
            giveWeaponToChar(PLAYER_PED, 8, 1)
        end
        if imgui.Button(u8"Бензопила") then
            giveWeaponToChar(PLAYER_PED, 9, 1)
        end
        if imgui.Button(u8"Букет цветов") then
            giveWeaponToChar(PLAYER_PED, 14, 1)
        end
        if imgui.Button(u8"Трость") then
            giveWeaponToChar(PLAYER_PED, 15, 1)
        end
        if imgui.Button(u8"Граната") then
            giveWeaponToChar(PLAYER_PED, 16, 50)
        end
        if imgui.Button(u8"Слезоточивый газ") then
            giveWeaponToChar(PLAYER_PED, 17, 50)
        end
        if imgui.Button(u8"Коктейль Молотова") then
            giveWeaponToChar(PLAYER_PED, 18, 50)
        end
        if imgui.Button(u8"Пистолет 9мм") then
            giveWeaponToChar(PLAYER_PED, 22, 50)
        end
        if imgui.Button(u8"Пистолет 9мм с глушителем") then
            giveWeaponToChar(PLAYER_PED, 23, 50)
        end
        if imgui.Button(u8"Дезерт Игл") then
            giveWeaponToChar(PLAYER_PED, 24, 50)
        end
        if imgui.Button(u8"Дробовик") then
            giveWeaponToChar(PLAYER_PED, 25, 50)
        end
        if imgui.Button(u8"Обрез") then
            giveWeaponToChar(PLAYER_PED, 26, 50)
        end
        if imgui.Button(u8"Спас-4") then
            giveWeaponToChar(PLAYER_PED, 27, 50)
        end
        if imgui.Button(u8"Узи") then
            giveWeaponToChar(PLAYER_PED, 28, 50)
        end
        if imgui.Button(u8"МП5") then
            giveWeaponToChar(PLAYER_PED, 29, 50)
        end
        if imgui.Button(u8"Калашников") then
            giveWeaponToChar(PLAYER_PED, 30, 50)
        end
        if imgui.Button(u8"М4") then
            giveWeaponToChar(PLAYER_PED, 31, 50)
        end
        if imgui.Button(u8"Тек-9") then
            giveWeaponToChar(PLAYER_PED, 32, 50)
        end
        if imgui.Button(u8"Ружье") then
            giveWeaponToChar(PLAYER_PED, 33, 50)
        end
        if imgui.Button(u8"Снайперская винтовка") then
            giveWeaponToChar(PLAYER_PED, 34, 50)
        end
        if imgui.Button(u8"РПГ") then
            giveWeaponToChar(PLAYER_PED, 35, 50)
        end
        if imgui.Button(u8"Сам.Навод.Ракеты HS") then
            giveWeaponToChar(PLAYER_PED, 36, 50)
        end
        if imgui.Button(u8"Огнемет") then
            giveWeaponToChar(PLAYER_PED, 37, 50)
        end
        if imgui.Button(u8"Миниган") then
            giveWeaponToChar(PLAYER_PED, 38, 50)
        end
        if imgui.Button(u8"Взрыв пакет") then
            giveWeaponToChar(PLAYER_PED, 39, 50)
        end
        if imgui.Button(u8"Детонатор") then
            giveWeaponToChar(PLAYER_PED, 40, 50)
        end
        if imgui.Button(u8"Балончик") then
            giveWeaponToChar(PLAYER_PED, 41, 50)
        end
        if imgui.Button(u8"Огнетушитель") then
            giveWeaponToChar(PLAYER_PED, 42, 50)
        end
        if imgui.Button(u8"Фотоаппарат") then
            giveWeaponToChar(PLAYER_PED, 43, 50)
        end
        if imgui.Button(u8"Парашут") then
            giveWeaponToChar(PLAYER_PED, 46, 50)
        end
        imgui.EndChild()
		imgui.End()
    end
end

function pfthr()
    if pflood == 0 then
        while true do
            wait(text_buffer.v)
            sampSendChat(floodvh)
            pflood = 1
            FLOODERp = "00FF00"
        end
    elseif pflood == 1 then
        FLOODERp = "FF0000"
    end
end

function bots()
    if botg == 0 then
        while true do
            wait(700)
            setCharCoordinates(PLAYER_PED, x0, y0, z0)
            wait(700)
            setCharCoordinates(PLAYER_PED, x1, y1, z1)
            botg = 1
        end
    elseif botg == 1 then
        botg = 0
    end
end

function rconflooder()
    if rconf == 0 then
        while true do
            for rcon228flood = 1,1000 do 
                wait(0)
                sampSendRconCommand("volodyahoigoodgamersclan")
                rconf = 1
            end
            rconf = 1
            FLOODERp = "00FF00"
        end
    elseif rconf == 1 then
        rconf = 0
        FLOODERp = "FF0000"
    end
end

function deadflood()
    if flodead == 0 then
        while true do
            wait(0)
            sampSpawnPlayer()
            taskDead(PLAYER_PED)
            flodead = 1
            FLOODERp = "00FF00"
        end
    elseif flodead == 1 then
        flodead = 0
        FLOODERp = "FF0000"
    end
end

function comflood()
    if cmdflood == 0 then
        while true do
            wait(text_wait.v)
            text = text_cmd .v
            sampSendChat("/" .. text .. "")
            cmdflood = 1
            FLOODERp = "00FF00"
        end
    elseif cmdflood == 1 then
        cmdflood = 0
        FLOODERp = "FF0000"
    end
end
