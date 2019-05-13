### About:
Container wrapper for [youtube-dl](https://github.com/ytdl-org/youtube-dl). Based on alpine python image. Image size 100-120mb.

### Build and run:
Build image:
```sh
docker build -t crwnl3ss/youtube-dl .
```
Run container, set bind-mount direcotry for downloaded files and pass command line arguments to `youtube-dl` executable.
```sh
docker run --rm -v //c/Users/crownless/Downloads/youtube-dl:/tmp/Downloads/ crwnl3ss/youtube-dl --help --verbose
```

### Examples:
List all available download formats for video:
```sh
docker run --rm crwnl3ss/youtube-dl -F https://youtu.be/<some-id>
```
Output:
```sh
[youtube] <some-id>: Downloading webpage
[youtube] <some-id>: Downloading video info webpage
[info] Available formats for <some-id>:
format code  extension  resolution note
249          webm       audio only DASH audio   57k , opus @ 50k, 37.75MiB
250          webm       audio only DASH audio   71k , opus @ 70k, 47.30MiB
...
```
Download video as audio file:
```sh
docker run --rm -v //c/Users/crownless/Downloads/youtube-dl:/tmp/Downloads/ crwnl3ss/youtube-dl -f
140 https://youtu.be/<some-id>
```
