#!/usr/bin/with-contenv bashio

export TESLAAPRS_EMAIL=$(bashio::config 'email')
if [[ "$TESLAAPRS_EMAIL" = "null" ]]; then
    TESLAAPRS_EMAIL=
fi
export TESLAAPRS_CALLSIGN=$(bashio::config 'callsign')
if [[ "$TESLAAPRS_CALLSIGN" = "null" ]]; then
    TESLAAPRS_CALLSIGN=
fi
export TESLAAPRS_MSG=$(bashio::config 'message')
if [[ "$TESLAAPRS_MSG" = "null" ]]; then
    TESLAAPRS_MSG=
fi
export TESLAAPRS_INTERVAL=$(bashio::config 'interval_sec')
if [[ "$TESLAAPRS_INTERVAL" = "null" ]]; then
    TESLAAPRS_INTERVAL=
fi
export TESLAAPRS_VEHICLE_NR=$(bashio::config 'vehicle_nr')
if [[ "$TESLAAPRS_VEHICLE_NR" = "null" ]]; then
    TESLAAPRS_VEHICLE_NR=
fi
export TESLAAPRS_REFRESH_TOKEN=$(bashio::config 'refresh_token')
if [[ "$TESLAAPRS_REFRESH_TOKEN" = "null" ]]; then
    TESLAAPRS_REFRESH_TOKEN=
fi

python3 -u /tesla-aprs/main.py
