# search-esgf

## Installation

First make sure you have [ESMValTool](https://esmvaltool.org/) [installed](https://docs.esmvaltool.org/en/latest/quickstart/installation.html) and [configured](https://docs.esmvaltool.org/en/latest/quickstart/configuration.html).

Next you can install this searcher:

```console
pip install https://github.com/WAM2layers/WAM2layers/archive/refs/heads/main.zip
```

## Usage
```python
from search_esgf import search

search.search_esgf(
    experiment="ssp585",
    frequency="day",
    variables=["pr", "tas", "rsdt", "orog"],
)
```

Will return something like:
```python
{
    'MPI-ESM1-2-HR': {'r1i1p1f1', 'r2i1p1f1'},
    'MPI-ESM1-2-LR': {'r10i1p1f1', 'r11i1p1f1', ...  'r9i1p1f1'},
    'INM-CM4-8': {'r1i1p1f1'},
    'MRI-ESM2-0': {'r1i1p1f1', 'r2i1p1f1', 'r3i1p1f1', 'r4i1p1f1',
        'r5i1p1f1'},
    'IPSL-CM6A-LR': {'r1i1p1f1'},
    'GFDL-CM4': {'r1i1p1f1'},
}
```
