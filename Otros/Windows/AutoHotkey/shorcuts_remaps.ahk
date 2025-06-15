; https://gist.github.com/csharpforevermore/11348986 | AutoHotKey Key List
; \\\\\\\\\\\ Teclas multimedia scrcpy para udemy app android \\\\\\\\\\\
; F8 para Pausar / Reproducir
^K::
Run, adb shell input tap 855 378
Return

; "Ctrl + J" para Retroceder 10 segundos
^J::
Run, adb shell input tap 489 353
Return

; "Ctrl + L" para Adelantar 10 segundos
^L::
Run, adb shell input tap 1208 367
Return

; "Ctrl + M" para para salir del video
^M::
Run, adb shell input tap 1535 663
Return

; \\\\\\\\\\\ Teclas Desplazamiento virtual desktops \\\\\\\\\\\
; Ctrl + Alt + J  →  Ctrl + Win + Right
^!j::
Send, ^#{Right}
Return

; Ctrl + Alt + L  →  Ctrl + Win + Left
^!l::
Send, ^#{Left}
Return

; Alt + F (como si fuera FN + Alt + F)  →  Alt + F4 'para portatiles'
!f::
Send, !{F4}
Return

; \\\\\\\\\\\ Teclas Desplazamiento letras en lugar de flechas \\\\\\\\\\\
; Alt + J → Flecha izquierda
!j::
Send, {Left}
Return

; Alt + L → Flecha derecha
!l::
Send, {Right}
Return

; Alt + I → Flecha abajo
!i::
Send, {Down}
Return

; Alt + K → Flecha arriba
!k::
Send, {Up}
Return

; \\\\\\\\\\\ Mouse Clic izquierdo \\\\\\\\\\\
!m::
Send, {LButton}
Return

; \\\\\\\\\\\ Teclas Desplazamiento letras en lugar de flechas agregando la tecla ctrl \\\\\\\\\\\
; Win + Alt + J → Ctrl + Flecha izquierda
#!j::
Send, ^{Left}
Return
; Win + Alt + L → Ctrl + Flecha derecha
#!l::
Send, ^{Right}
Return

; Win + Alt + I → Ctrl + Flecha abajo
#!i::
Send, {NumpadHome}
Return

; Win + Alt + K → Ctrl + Flecha arriba
#!k::
Send, {NumpadEnd}
Return

RAlt & p::ShiftAltTab
RAlt & o::AltTab

------------------------------------------------------

; teclas autohotkey
; # | Win
; ! | Alt
; ^ | Ctrl

; Combinacion AutoHotKey | Combinacion normal
; Altgr + Win + I 	| Numpad Fin 
; Altgr + x
