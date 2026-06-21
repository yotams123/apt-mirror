# apt-mirror

## To mirror archive.ubuntu.com
1. Copy this `mirror.list` to `/etc/apt/mirror.list`
2. Change the path after `set base_path` to where you want to download the mirror to
3. `apt install apt-mirror`
4. `apt-mirror`

## Use commands for monitoring
* `iotop` - to see disk I/O operations
* `tail -f $mirror_path/var/archive-log.0` - to see the logs for the apt-mirror threads (there is a file for each one)

## Mirroring changelogs.ubuntu.com (Offline Release Upgrade)

The `setup_offline_upgrade.sh` script downloads the Ubuntu release upgrade `meta-release` files to disk.

### Usage

Run the script to download the meta-release files to a target folder (default is `./ubuntu_upgrade_mirror`):
```bash
./setup_offline_upgrade.sh [destination_directory]
```