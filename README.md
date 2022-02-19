## Installation Guide
Please follow the following instruction for setup. Make sure you have ruby installed with version 2.5.5.


```bash
git clone https://github.com/karnveer1994/bulk-data.git
cd bulk-data/
bundle install
rake db:setup
```	 

## We can handle bulk data by adding proper indexes and key constraints while generating migrations.

## By adding find data by sql we can return multiple associated table record faster for large database.