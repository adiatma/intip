# intip

👀 Simple CLI to search local area by ip location.

## Usage

```bash
git clone git@github.com:adiatma/intip.git
cd intip
source ./intip.sh
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

## Convert `intip.sh` to an executable binary

```bash
cd intip/
# copy `intip.sh` to path binary
cp ./intip.sh /usr/local/bin/intip.sh
chmod +x /usr/local/bin/intip.sh

# execute
intip.sh
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

