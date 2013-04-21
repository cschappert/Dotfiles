import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.NoBorders
import System.IO

myManageHook = composeAll
   [ className =? "Gimp" --> doFloat
   ]

main = do
   xmproc <- spawnPipe "xmobar"
   xmonad $ defaultConfig
      { manageHook = manageDocks <+> myManageHook <+> manageHook defaultConfig
      , layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig
      , logHook = dynamicLogWithPP xmobarPP
         { ppOutput = hPutStrLn xmproc
         , ppTitle = xmobarColor "#ee9a00" "" . shorten 50
         }
      , terminal = "urxvtc"
      , borderWidth = 3
      }
      `additionalKeys`
      [ ((mod1Mask, xK_p), spawn "/home/chris/.xmonad/dmenu_run -b -fn -*-Fixed-Bold-R-Normal-*-13-*-*-*-*-*-*-* -nb black -nf white -sb '#ee9a00' -sf black") ]
