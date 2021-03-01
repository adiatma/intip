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

## Convert `intip.sh` to binary

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

