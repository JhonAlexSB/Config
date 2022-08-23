
#!/usr/bin/bash

roffmonitors=$(echo -e "Poweroff\nReboot\nHibernate\nLogout" | dmenu -i -p "Selecciona Opcion:" -fn "Cantarell-10" -nf '#ffb52a' -sb '#ffb52a' -sf '#222')

case "$r" in
    Poweroff) poweroff ;;
    Reboot) reboot ;;
    Hibernate) suspend ;;
    Logout) i3-msg exit ;;
    *) echo "No s'ha trobat $r (Poweroff|Reboot|Hibernate|Logout|)" ;;
esac

