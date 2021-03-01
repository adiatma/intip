# intip

A simple bash scripting for searching geo location base on ip 👀.

> easy to install, no need dependencies, you just need `bash`.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/adiatma/intip/master/install.sh -s | bash
```

## Usage

```bash
intip.sh --inline <ip>
```

```json
{
  "status": "success",
  "continent": "Asia",
  "continentCode": "AS",
  "country": "Indonesia",
  "countryCode": "ID",
  "region": "SN",
  "regionName": "South Sulawesi",
  "city": "Malili",
  "district": "",
  "zip": "",
  "lat": -2.6351,
  "lon": 121.095,
  "timezone": "Asia/Makassar",
  "offset": 28800,
  "currency": "IDR",
  "isp": "PT. TELKOM INDONESIA",
  "org": "",
  "as": "AS7713 PT Telekomunikasi Indonesia",
  "asname": "telkomnet-as-ap",
  "reverse": "",
  "mobile": false,
  "proxy": false,
  "hosting": false,
  "query": "36.83.131.186"
}
```

## More

Usage with inline

```bash
intip.sh --inline # get your ip location
# or
intip.sh --inline <ip>
```

Usage with prompt

```bash
intip.sh --prompt
```

Export to json

```bash
intip.sh --inline <ip> >> to.json | cat to.json
```

Get in one field

```bash
intip.sh --inline | jq '.isp'
```

```
PT. TELKOM INDONESIA
```
