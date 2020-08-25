--[[
─────────────────────────────────────────────────────────────────
─██████──────────██████─██████████─██████─────────████████████───
─██░░██──────────██░░██─██░░░░░░██─██░░██─────────██░░░░░░░░████─
─██░░██──────────██░░██─████░░████─██░░██─────────██░░████░░░░██─
─██░░██──────────██░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░██──██████──██░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░██──██░░██──██░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░██──██░░██──██░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░██████░░██████░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░░░░░░░░░░░░░░░░░██─████░░████─██░░██████████─██░░████░░░░██─
─██░░██████░░██████░░██─██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░████─
─██████──██████──██████─██████████─██████████████─████████████───
─────────────────────────────────────────────────────────────────
]]--

local spiller = PlayerPedId()

Citizen.CreateThread(function()
    while true do 
      Citizen.Wait(0) 
      if GetDistanceBetweenCoords(-1103.0952148438,-829.27978515625,14.322790184021, GetEntityCoords(GetPlayerPed(-1))) < 1.0 then
        DrawMarker(25, -1103.0952148438,-829.27978515625,14.322790184021 - 1, 0, 0, 0, 0, 0, 0, 0.800, 0.800, 0.800, 255, 255, 0, 255, 0, 1, 0, 50)
           DrawText3Ds( -1103.0952148438,-829.27978515625,14.282790184021, "~y~E~s~ | Få Attachments på dine våben")
           if IsControlJustPressed(1, 38) then
            TriggerServerEvent("wild:permission")
           end
        end
    end
end)

RegisterNetEvent('wild:okay')
AddEventHandler('wild:okay', function()
    SetEntityHeading(spiller, 48.975063323975)
    FreezeEntityPosition(spiller, true)
    TaskStartScenarioInPlace(spiller, "WORLD_HUMAN_CLIPBOARD")
    local finished = exports["np-taskbar"]:taskBar (6000, "Finder attachments")
    FreezeEntityPosition(spiller, false)
   --COMBATPISTOL
    GiveWeaponComponentToPed(PlayerPedId(), 0x5EF9FEC4, 'COMPONENT_COMBATPISTOL_CLIP_02')
    GiveWeaponComponentToPed(PlayerPedId(), 0x5EF9FEC4, 'COMPONENT_AT_PI_FLSH')
    GiveWeaponComponentToPed(PlayerPedId(), 0x5EF9FEC4, 'COMPONENT_AT_PI_SUPP')
   --PUMPSHOTGUN
    GiveWeaponComponentToPed(PlayerPedId(), 0x1D073A89, 'COMPONENT_AT_SR_SUPP')
    GiveWeaponComponentToPed(PlayerPedId(), 0x1D073A89, 'COMPONENT_AT_AR_FLSH')
   --SPECIAL CARBINE RIFFEL MK2
    GiveWeaponComponentToPed(PlayerPedId(), 0x969C3D67, 'COMPONENT_SPECIALCARBINE_MK2_CLIP_02')
    GiveWeaponComponentToPed(PlayerPedId(), 0x969C3D67, 'COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER')
    GiveWeaponComponentToPed(PlayerPedId(), 0x969C3D67, 'COMPONENT_AT_SCOPE_MACRO_MK2')
    GiveWeaponComponentToPed(PlayerPedId(), 0x969C3D67, 'COMPONENT_AT_AR_AFGRIP_02')
    GiveWeaponComponentToPed(PlayerPedId(), 0x969C3D67, 'COMPONENT_AT_SC_BARREL_02')
    GiveWeaponComponentToPed(PlayerPedId(), 0x969C3D67, 'COMPONENT_AT_AR_SUPP_02')
    GiveWeaponComponentToPed(PlayerPedId(), 0x969C3D67, 'COMPONENT_AT_AR_FLSH')
    --MP5
    GiveWeaponComponentToPed(PlayerPedId(), 0x2BE6766B, 'COMPONENT_ASSAULTSMG_CLIP_02')
    GiveWeaponComponentToPed(PlayerPedId(), 0x2BE6766B, 'COMPONENT_AT_AR_SUPP_02')
    GiveWeaponComponentToPed(PlayerPedId(), 0x2BE6766B, 'COMPONENT_AT_SCOPE_MACRO')
    GiveWeaponComponentToPed(PlayerPedId(), 0x2BE6766B, 'COMPONENT_AT_AR_FLSH')
    GiveWeaponComponentToPed(PlayerPedId(), 0x2BE6766B, 'COMPONENT_AT_AR_SUPP_02')
end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end
