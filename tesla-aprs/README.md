# Tesla APRS Home Assistant addon

Sends Tesla vehicle location and status to the APRS-IS.

This addon runs the [tesla-aprs](https://github.com/nonoo/tesla-aprs) app.

## Configuration

- `refresh_token`: Mandatory. See [tesla-aprs](https://github.com/nonoo/tesla-aprs)
  for information on how to get a refresh token
- `email`: Mandatory. Enter your Tesla account's email address
- `callsign`: Mandatory. Needs to be a valid and registered amateur radio callsign
  with suffix (for example: AB1CDE-12)
- `message`: APRS message
- `interval_sec`: Seconds between vehicle location uploads
- `vehicle_nr`: number of the vehicle if you have multiple Teslas
