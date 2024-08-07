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
export TESLAAPRS_APRS_SYMBOL_TABLE_CHAR=$(bashio::config 'aprs_symbol_table_char')
if [[ "$TESLAAPRS_APRS_SYMBOL_TABLE_CHAR" = "null" ]]; then
    TESLAAPRS_APRS_SYMBOL_TABLE_CHAR=
fi
export TESLAAPRS_APRS_SYMBOL_CODE_CHAR=$(bashio::config 'aprs_symbol_code_char')
if [[ "$TESLAAPRS_APRS_SYMBOL_CODE_CHAR" = "null" ]]; then
    TESLAAPRS_APRS_SYMBOL_CODE_CHAR=
fi

python3 -u /tesla-aprs/main.py
