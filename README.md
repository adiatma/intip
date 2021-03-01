# intip

👀 Simple CLI to search local area by ip location.

## Install

```bash
curl https://raw.githubusercontent.com/adiatma/intip/master/install.sh -s | bash
```

## Usage

```bash
intip.sh
```

```
"status":"success"
"continent":"Asia"
"continentCode":"AS"
"country":"Indonesia"
"countryCode":"ID"
"region":"ST"
"regionName":"Central Sulawesi"
"city":"Palu"
"district":""
"zip":""
"lat":-0.9083
"lon":119.8708
"timezone":"Asia/Makassar"
"offset":28800
"currency":"IDR"
"isp":"PT. TELKOM INDONESIA"
"org":""
"as":"AS7713 PT Telekomunikasi Indonesia"
"asname":"telkomnet-as-ap"
"reverse":""
"mobile":false
"proxy":false
"hosting":false
"query":"125.167.114.25"
```

## More

```bash
intip.sh (--inline|--prompt)
```

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

