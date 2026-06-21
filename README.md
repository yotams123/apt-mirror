# apt-mirror

## To mirror archive.ubuntu.com
1. Copy this `mirror.list` to `/etc/apt/mirror.list`
2. Change the path after `set base_path` to where you want to download the mirror to
3. `apt install apt-mirror`
4. `apt-mirror`

## Use commands for monitoring
* `iotop` - to see disk I/O operations
* `tail -f $mirror_path/var/archive-log.0` - to see the logs for the apt-mirror threads (there is a file for each one)
 