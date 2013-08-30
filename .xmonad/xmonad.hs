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
      , borderWidth = 2
      }
      `additionalKeys`
      [ ((mod1Mask, xK_p), spawn "dmenu_run -b -fn -*-terminus-medium-*-*-*-14-*-*-*-*-*-*-* -nb black -nf grey -sb grey -sf black") ]
