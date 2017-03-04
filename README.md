# Astrotools for Scilab
Astronomy functions for [Scilab](http://www.scilab.org/). Based on the [CelestLab](https://atoms.scilab.org/toolboxes/celestlab/)-Toolbox from [CNES](https://cnes.fr/en) (French space agency).

> Just for my own purpose. Still under development. Use it if you find it useful.

## Functions description

Refer [`doc-table.csv`](https://github.com/haniibrahim/scilab-astrotools/blob/master/doc-table.csv "") as a quick reference manual. Functions make use of [SI units](https://en.wikipedia.org/wiki/International_System_of_Units "") only.

## Usage

 * Save the (sci-)files in an arbitrary directory. 
 * Load all sci-files into Scilab by typing  `getd('/path/to/sci-files/')` in the Scilab console

> You have to repeat this procedure after every restart of Scilab. If you want to avoid this, use the [library functionality](https://help.scilab.org/doc/5.3.3/en_US/lib.html "") of Scilab.

To use the physical and astromical constants type `AT_astroconst()` in the Scilab console. E.g. to get the radius of the earth you get it by `earth.r`. Open the file `AT_astroconst.sci` for details.

Get started:

```
getd('/path/to/sci-files')
AT_astroconst()
AT_gravity(earth.mass, earth.r, 400000) // Gravity @ISS in m/s²
```

Help is available in the headers of the sci-files, too.


## Licence

These scripts are free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

These scripts are distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.