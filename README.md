Rustfmt-Expander
=======================

What is this?
-------------
This script expands the default *rustfmt.toml* file (as generated by `rustfmt --print-config default`) with descriptions of each configuration setting and their default values.

What does it do?
-----------------

The default *rustfmt.toml* file generated by **rustfmt** is a list of key-value pairs for each supported configuration setting, along with their default value:


```toml
#...
max_width = 100
#...
```


The rustfmt-expander.awk script matches key-value lines in the toml file, and expands them to a toml comment block (comments and other lines are passed through unchanged) that looks like this:


```toml
#...
# Maximum width of each line.
# Default: 100
#   max_width =

#...
```


Because **rustfmt** assumes a default value for any configuration setting it doesn't find in *rustfmt.toml*, the awk script can simply convert the explicit defaults to documentation without changing the meaning of the toml file.

By uncommenting the configuration setting (`max_with =`, above) and providing your own value, it will be easy to see which settings you have changed from the defaults, and to diff your configuration against future versions of the **rustfmt** default configuration.

Using the script
-------------------------

The script has been tested with **GNU AWK (gawk)**, and expects the default *rustfmt.toml* file generated by rustfmt as input.

```shell
rustfmt --print-config default ./rustfmt.toml
gawk -f rustfmt-expander.awk -- rustfmt.toml >> rustfmt.toml
```

The first time you use this script, you'll modify the expanded file to include your own configuration settings.

When **rustfmt** is updated, run the commands again to pick up any new, stabilized, or deprecated configuration settings from **rustfmt**, then merge your configuration settings from your existing *rustfmt.toml* file.


Contributing
------------

Your contributions are welcome and appreciated. Please submit Pull Requests and Issues at <https://github.com/ravyne/rustfmt-expander>.

License
-------

All code is licensed under the terms of the MIT License (See [LICENSE](LICENSE))
