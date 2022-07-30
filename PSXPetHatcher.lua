--[[

// PSX Pet Hatcher V2 \\

Credits:
[PetSimXPlayer]: Owner, developer
[Aqcul]: Huge Pet Hatches Bot Owner (Discontinued now sadly)
[Cor]: Helps with a few functions and other stuff
I could list many others that helped me

This Pet Hatcher is owned and developed by PetSimXPlayer alone. If anyone else claims to own this hatcher, they are lying.
The code is completly open source. I want to be open with everyone who uses this hatcher. (No Ip grabbers etc)
If you want to use parts of this hatcher for yourself, go ahead! I dont mind. Just please dont impersonate as me, thanks! 

Thanks for using My Hatcher! :D

]]

if game.PlaceId == 6284583030 or game.PlaceId == 7722306047 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Buddy25112/PetHatchers/main/PSXPetHatcherNormal.lua"),true))()
elseif game.PlaceId == 10321372166 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Buddy25112/PetHatchers/main/PSXPetHatcherHardCore.lua"),true))()
else
	game.Players.LocalPlayer:Kick("Error while trying to load PSX Pet Hatcher.\n\nThis game is not supported.\n\nPlease join a supported game.")
end
