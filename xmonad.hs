import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.SetWMName
import System.IO

main :: IO()
main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/amilkov3/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                        { 
                          ppOutput = hPutStrLn xmproc,
                          ppTitle = xmobarColor "green" "" . shorten 10
                        }
        , modMask = mod1Mask     -- Rebind Mod to the Windows key
        , handleEventHook = handleEventHook defaultConfig <+> docksEventHook 
        , startupHook = start
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock; xset dpms force off")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        , ((mod1Mask, xK_q), kill)
        ]

start :: X ()
start = do
  setWMName "LG3D"
  spawn "xset r rate 170 22" 



