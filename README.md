# verilog_testbench_gen
A stripped down version of VSCode_Extension_Verilog to automatically generate a testbench.

``` bash
tgen() {
    proj="<LOCATION_OF_REPO>/"
    loc=$(PWD)
    if [ -z "$1" ]; then
        echo "Usage: sloc [file(s)]";
    fi
    cp $1 $proj
    cd $proj
    make gen
    rm $proj*.v
    cd $loc
}
```

## Usage

```
# 1) Clone repo.

# 2) Setup bash funciton in .bashrc and source.

# 3) tgen <.v file>
```