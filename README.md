# intip

👀 Simple CLI to search local area by ip location.

## Usage

```bash
git clone git@github.com:adiatma/intip.git
cd intip
source ./intip.sh
# or 
chmod +x ./intip.sh
./intip.sh
```

```
"status":"success"
"country":"Indonesia"
"countryCode":"ID"
"region":"ST"
"regionName":"Central Sulawesi"
"city":"Palu"
"zip":""
"lat":-0.9083
"lon":119.8708
"timezone":"Asia/Makassar"
"isp":"PT. TELKOM INDONESIA"
"org":""
"as":"AS7713 PT Telekomunikasi Indonesia"
"query":"125.167.114.25"
```

## More

```bash
./intip.sh (--inline|--prompt)
```

Usage with inline

```bash
./intip.sh --inline # get your ip location
# or
./intip.sh --inline <ip>
```

Usage with prompt

```bash
./intip.sh --prompt
```

