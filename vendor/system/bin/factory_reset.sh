#!/system/bin/sh

function start_svc()
{
    echo "start $1"
    start $1
}

function stop_svc()
{
    echo "stop $1"
    stop $1
}
stop_svc servicemanager
stop_svc surfaceflinger
stop_svc zygote
stop_svc media
stop_svc drm
stop_svc netd
stop_svc keystore
stop_svc healthd

sleep 2
testmode factoryreset

start_svc healthd
start_svc servicemanager
start_svc surfaceflinger
start_svc zygote
start_svc media
start_svc netd
start_svc keystore
start_svc drm

