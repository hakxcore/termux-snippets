<p align="left">
  <a ><img title="Built With Love" src="https://forthebadge.com/images/badges/built-with-love.svg" ></a>
</p>

</p>
<p align="center">
<img src="https://raw.githubusercontent.com/hakxcore/Termux-snippets/main/media/snippets.png" width="100%" height="270"/>
<a href="https://github.com/hakxcore/Anonymous/watchers"><img title="Watching" src="https://img.shields.io/github/watchers/hakxcore/Termux-snippets?label=Watchers&color=2eb2ff&style=flat-square"></a>
<a href="https://github.com/hakxcore/followers"><img title="Followers" src="https://img.shields.io/github/followers/hakxcore?color=2eb2ff&style=flat-square"></a>
<a href="https://github.com/hakxcore/stargazers/"><img title="Stars" src="https://img.shields.io/github/stars/hakxcore/Termux-snippets?color=2eb2ff&style=flat-square"></a>
<a href="https://github.com/hakxcore/Anonymous/network/members"><img title="Forks" src="https://img.shields.io/github/forks/hakxcore/Termux-snippets?color=2eb2ff&style=flat-square"></a>
<a href="https://github.com/hakxcore/Termux-snippets/pulls"><img src="https://img.shields.io/github/issues-pr/hakxcore/Termux-snippets?color=2eb2ff&style=flat-square" alt="Pull Requests Badge"/></a>
<a href="#"><img title="Termux-snippets" src="https://img.shields.io/badge/-%20TERMUXSNIPPETS-green%3FcolorA%3D%2523ff0000%26colorB%3D%2523017e40"></a>
<a href="https://github.com/hakxcore/Termux-snippets/issues"><img src="https://img.shields.io/github/issues/hakxcore/Termux-snippets?color=2eb2ff&style=flat-square" alt="Issues Badge"/></a>
<a href="https://github.com/hakxcore/Termux-snippets/graphs/contributors"><img alt="GitHub contributors" src="https://img.shields.io/github/contributors/hakxcore/Termux-snippets?color=2eb2ff&style=flat-square"></a>
<a href="#"><img title="UNMAINTENED" src="https://img.shields.io/badge/UNMAINTENED-YES-2eb2ff.svg?style=flat-square"</a>
<a href="https://github.com/hakxcore/Termux-snippets/blob/master/LICENSE"><img src="https://img.shields.io/github/license/hakxcore/Termux-snippets?color=2eb2ff&style=flat-square" alt="License Badge"/></a></p>
<p align="center">
  <a href="https://github.com/hakxcore"><img title="Author" src="https://img.shields.io/badge/Author-mukesh%20kumar-2eb2ff.svg?style=for-the-badge&logo=github"></a>
</p>


# TOOLS
<details>
<summary>Cheat</summary>
  
The fastest way to find {command options|code pieces} you need

Supports multiple languages and many bash commands also

```bash
Cheat

Description: Cheatsheets for quick information about multiple programming languages along with terminal commands

Usage: cheat [flags] [command] or cheat [flags] [programming language] [subject]
  -s  Does a search for last argument rather than looking for exact match
  -i  Case insensitive search
  -b  Word boundaries in search
  -r  Recursive search
  -u  Update Termux-snippets Tools
  -h  Show the help
  -v  Get the tool version
Special Pages:
  hello      Describes building the hello world program written in the language
  list       This lists all cheatsheets related to previous arg if none it lists all cheatsheets
  learn      Shows a learn-x-in-minutes language cheat sheet perfect for getting started with the language
  1line      A collection of one-liners in this language
  weirdness  A collection of examples of weird things in this language

Examples:
  cheat c function
  cheat rust hello
  cheat -r -b -i go
  cheat julia Functions
  cheat -i go operators
  
  ```
</details>

<details>
<summary>Cipher</summary>

  Cipher encrypt and decrypts your text
  ```bash
  Cipher

Description: Encode and decode your text see examples below.

Usage: cipher [falgs] "your text to encode or decode"
  -e  Encode text
  -d  Decode text
  -u  Update Termux-snippet Tools
  -h  Show the help
  -v  Get the tool version

Examples:
  cipher -e <text to encode>
  cipher -d <text to decode>
  
  ```
</details>
  
  
<details>
<summary>Covidinfo</summary>

 Tool that get the country wise information about covid-19 on the terminal itself   
  
```bash
Covidinfo

Description: Get the full detailed information of COVID19 in your terminal.

Usage: 
  -u  Update Termux-snippet Tools
  -h  Show the help
  -v  Get the tool version

Examples:
  covidinfo

```
</details>
  
<details>
<summary>Crypt</summary>

A wrapper for openssl that allows for quickly encrypting and decrypting files

```bash
crypt -e [original file] [encrypted file] # encrypts files
crypt -d [encrypted file] [output file] # decrypts files
```
#### Encryption Details
* Uses AES 256 level encryption
* Key is salted before creation
* Password is never in plain text, and OpenSSL generates key based on password
* Encrypted data is encoded in Base64, so it can be used as plain text in an email. (Not usually necessary if attached as a file)

**Tested With**  .pdf, .txt, .docx, .doc, .png, .jpeg

**CAUTION**  Make sure to use different filenames, otherwise your file will be overwritten!

```bash
Crypt

Description: A wrapper around openssl that facilitates encrypting and decrypting files.

Usage: crypt [flag] [inputFile] [outputFile]
  -e  Encrypt the inputFile and store it in the outputFile
  -d  Decrypt the inputFile and store it in the outputFile
  -u  Update Termux-snippets Tools
  -h  Show the help
  -v  Get the tool version

Examples:
  crypt -e mySecretFile.txt myEncryptedFile.jpg (change filetype so default program is incorrect)
  crypt -d myEncryptedFile.jpg thisIsNowDecrypted.txt (change filetype back so now default program is correct)

  ```
</details>
  
  
<details>
<summary>Cryptocurrency</summary>

Shows Cryptocurrency based on realtime exchange rates of the top 10 cryptos and a realtime chart of anyone crypto.

```bash
CryptoCurrency

Description: A realtime cryptocurrency converter.
With no flags it will pull down the latest stats of the top 10 cryptos also will extract real time graph of one crypto.

Usage: cryptocurrency or cryptocurrency [flag] or cryptocurrency [flag] [arg]
   -o Utilize the old functionality of the tool
   -f Fiat currency for conversions
   -u Update Termux-snippets Tools
   -h Show the help
   -v Get the tool version

Examples:
   cryptocurrency
   cryptocurrency -o #for all the functionalities of tool
  ```
</details>


<details>
<summary>Geo</summary>

Provides data for  wan address, lan address, router address, dns address, mac address, and ip geolocation

```bash
Geo

Description: Provides quick access for wan, lan, router, dns, mac, and ip geolocation data

Usage: geo [flag]
  -w  Returns WAN IP
  -l  Returns LAN IP(s)
  -r  Returns Router IP
  -d  Returns DNS Nameserver
  -m  Returns MAC address for interface. Ex. eth0
  -g  Returns Current IP Geodata

Examples:
  geo -g
  geo -wlrdgm eth0
Custom Geo Output => [all] [query] [city] [region] [country] [zip] [isp]

Example: geo -a 8.8.8.8 -o city,zip,isp
  -o [options]  Returns Specific Geodata
  -a [address]  For specific IP in -s
  -v            Returns Version
  -h            Returns Help Screen
  -u            Updates Termux-snippets
```
</details>
  
  
<details>
<summary>Gif</summary>

Gif gets the gifs related to the keyword which you gave as an argument and continuously play|prints on the terminal.


```bash
Gif

Description: Get any type of gif on your terminal.

Usage: gif <any_type_of_keyword_for_gif> use underscore "_" to seprate keywords.
  -u  Update Termux-snippets Tools
  -h  Show the help
  -v  Get the tool version

Examples:
  gif <you_desired_keyword>
  gif krishna
  gif going_to_school
```
</details>
  
  

<details>
<summary>Googler</summary>

Googler to directly make search on terminal. 

basic usage

```bash
googler search <you_wanna_search_about>
use ? after search for options
```

Main usage

```bash
usage: googler [-h] [-s N] [-n N] [-N] [-V] [-c TLD] [-l LANG] [-g CC] [-x]
               [--colorize [{auto,always,never}]] [-C] [--colors COLORS] [-j]
               [-t dN] [--from FROM] [--to TO] [-w SITE] [-e SITE] [--unfilter]
               [-p PROXY] [--notweak] [--json] [--url-handler UTIL]
               [--show-browser-logs] [--np] [-4] [-6] [-u] [--include-git] [-v]
               [-d]
               [KEYWORD ...]

Google from the command-line.

positional arguments:
  KEYWORD               search keywords

optional arguments:
  -h, --help            show this help message and exit
  -s N, --start N       start at the Nth result
  -n N, --count N       show N results (default 10)
  -N, --news            show results from news section
  -V, --videos          show results from videos section
  -c TLD, --tld TLD     country-specific search with top-level domain .TLD,
                        e.g., 'in' for India
  -l LANG, --lang LANG  display in language LANG
  -g CC, --geoloc CC    country-specific geolocation search with country code
                        CC, e.g. 'in' for India. Country codes are the same as
                        top-level domains
  -x, --exact           disable automatic spelling correction
  --colorize [{auto,always,never}]
                        whether to colorize output; defaults to 'auto', which
                        enables color when stdout is a tty device; using
                        --colorize without an argument is equivalent to
                        --colorize=always
  -C, --nocolor         equivalent to --colorize=never
  --colors COLORS       set output colors (see man page for details)
  -j, --first, --lucky  open the first result in web browser and exit
  -t dN, --time dN      time limit search [h5 (5 hrs), d5 (5 days), w5 (5
                        weeks), m5 (5 months), y5 (5 years)]
  --from FROM           starting date/month/year of date range; must use
                        American date format with slashes, e.g., 2/24/2020,
                        2/2020, 2020; can be used in conjunction with --to, and
                        overrides -t, --time
  --to TO               ending date/month/year of date range; see --from
  -w SITE, --site SITE  search a site using Google
  -e SITE, --exclude SITE
                        exclude site from results
  --unfilter            do not omit similar results
  -p PROXY, --proxy PROXY
                        tunnel traffic through an HTTP proxy; PROXY is of the
                        form [http://][user:password@]proxyhost[:port]
  --notweak             disable TCP optimizations and forced TLS 1.2
  --json                output in JSON format; implies --noprompt
  --url-handler UTIL    custom script or cli utility to open results
  --show-browser-logs   do not suppress browser output (stdout and stderr)
  --np, --noprompt      search and exit, do not prompt
  -4, --ipv4            only connect over IPv4 (by default, IPv4 is preferred
                        but IPv6 is used as a fallback)
  -6, --ipv6            only connect over IPv6
  -u, --upgrade         perform in-place self-upgrade
  --include-git         when used with --upgrade, get latest git master
  -v, --version         show program's version number and exit
  -d, --debug           enable debugging

omniprompt keys:
  n, p                  fetch the next or previous set of search results
  index                 open the result corresponding to index in browser
  f                     jump to the first page
  o [index|range|a ...] open space-separated result indices, numeric ranges
                        (sitelinks unsupported in ranges), or all, in browser
                        open the current search in browser, if no arguments
  O [index|range|a ...] like key 'o', but try to open in a GUI browser
  g keywords            new Google search for 'keywords' with original options
                        should be used to search omniprompt keys and indices
  c index               copy url to clipboard
  u                     toggle url expansion
  q, ^D, double Enter   exit googler
  ?                     show omniprompt help
  *                     other inputs issue a new search with original options

Version 4.3.2
Copyright © 2008 Henri Hakkinen
Copyright © 2015-2021 Arun Prakash Jana <engineerarun@gmail.com>
Zhiming Wang <zmwangx@gmail.com>
License: GPLv3
Webpage: https://github.com/jarun/googler
Modifications BY: Hakxcore https://github.com/hakxcore
```
</details>
  
  
<details>
<summary>IPinfo</summary>

Similar to geo but have some different functionalty.

basic usage

```bash
ipinfo -a <ip_address>
```

Main usage

```bash
Ipinfo

Description: Fetch Information about an IP Address.

Usage: ipinfo [flag] <ip-address>
  -a  IP Address of vectim
  -u  Update Termux-snippet Tools
  -h  Show the help
  -v  Get the tool version

Examples:
  ipinfo 8.8.8.8 #For your ip address
  ipinfo -a <someone's ip-addr>

```
</details>
    
    
<details>
<summary>Jukebox</summary>

There so many tools to play within jukebox.



```bash
jukebox

Description: Get so many options to play with Enjoy.
Usage: 
  -u  Update Termux-snippet Tools
  -h  Show the help
  -v  Get the tool version

Examples:
  jukebox

```
</details>
    
    
<details>
<summary>Lyrics</summary>

Grab lyrics for a given song quickly from the command line.


```bash
Lyrics

Description: Fetch lyrics for a certain song.

Usage: lyrics [flags] or tool [-a] [arg] [-s] [arg]
  -a  Artist of the song to fetch lyrics for
  -s  Song of the artist to fetch lyrics for
  -f  Export the lyrics to file rather than outputting to stdout
  -u  Update Termux-snippets Tools
  -h  Show the help
  -v  Get the tool version

Examples:
   lyrics -a logic -s run it
   lyrics -a logic -s run it -f ~/runItLyrics.txt

```
</details>

    
<details>
<summary>Meme</summary>

A lightning fast meme generator.

```bash
Meme

Description: A lightning fast meme generator from terminal.

Usage: meme [flags] or meme
  -b  See all Backgrouds
  -u  Update Termux-snippets you can use [update] also
  -h  Show help you can use [help] also
  -v  Tool version you can use [version] also

Examples:
   meme
    
```

</details>
    
    
<details>
<summary>Movie</summary>

Quick search that grabs relevant information about a movie

```bash
Movie

Description: Provides relevant information about a certain movie.

Usage: movie [flag] or movies [movieToSearch]
  -u  Update Termux-snippets Tools
  -h  Show the help
  -v  Get the tool version
  -d  Show detailed information

Examples:
  movie Argo
  movie Inception
```
</details>

    
<details>
<summary>News</summary>

Get latest news and headlines directly on your terminal.

```bash
News

Description: Latest news updates or get your desired latest headlines of news.

Usage: 
  -u  Update Termux-snippets Tools
  -h  Show the help
  -v  Get the tool version

Examples:
  news
  news <news_about>
```
</details>

    
    
<details>
<summary>Pwned</summary>

Know if your data is breached in any data breach.

```bash
Pwned

Description: Tells you when your account was last breached
Usage: pwned [flag] or pwned [tag]
  -u  Update Termux-snippets Tool
  -h  Show the help
  -v  Get the tool version

Examples:
  pwned anonymous007@gmail.com
  pwned anyones@gmail.com
```
</details>
    
    
    
<details>
<summary>Qrify</summary>

Takes any string of text and turns it into a qr code

This is useful for sending links or saving a string of commands to your phone


```bash
Qrify

Description: Converts strings or URLs into a QR code.

Usage: qrify [stringtoturnintoqrcode]
    -u  Update Termux-snippets Tools
    -m  Enable multiline support (feature not working yet)
    -h  Show the help
    -v  Get the tool version
    -f  Store the QR code as a PNG file
    -d  Decode the QR code from a PNG/GIF/JP(E)G file

Examples:
    qrify this is a test string
    qrify -m two\\nlines
    qrify github.com (no http:// or https://)
    qrify -f fileoutputName google.com
    qrify -d fileName.png

Please pay attention:
This script needs access to an external API.
Do not use it to encode sensitive data.
```
</details>
    
    
    
<details>
<summary>Shorturl</summary>

Gets the link that is being masked by a url shortner

```bash
Shorturl

Description: Shorten urls and unmask shortended urls.

Usage: shorturl [flag] [URL] or short [flag]
  -s  Shorten the URL
  -e  Expand a shortened URL
  -u  Update Termux-snippets Tools
  -h  Show the help
  -v  Get the tool version

Example:
   Input: shorturl -s https://possiblemaliciouswebsiteornot.com
   Output: https://tinyurl.com/jkkj
   Input:  shorturl -e tinyurl.com/jhkj
   Output: http://possiblemaliciouswebsiteornot.com
```
</details>
    
    

