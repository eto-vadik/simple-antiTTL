ui_print "Simpe AntiTTL v1"

if grep -q 'TTL' /proc/net/ip_tables_targets
then
    ui_print ":)"
    ui_print "Ядро поддерживает работу с TTL"
    ui_print "Установка..."
else
    ui_print ":("
    abort "Ядро не поддерживает работу с TTL. Модуль работать не будет"
fi