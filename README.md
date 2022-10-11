--Still in beta phase--
# Termux-Postgres

 How to create Local Database On  `Termux Terminal`

- Install the Postgresql Servers first to your `Termux Terminal`. 
```
initdb ~/pg
```
- Start the `Server`
```
pg_ctl -D ~/pg start
```
-  Create a username for your `database` anything you want it to be: 
```
createuser -P -s -e Your_Username
```
- Make sure you change `Your_Usernams` to what ever you want.
- Now Let create `Database` Username:
```
createdb -O Your_Username Your_Database
```
- `Note:` You must change your username to the username you provided before and change your database to your new database name use any name you like also.


## Feel free to contact me via Telegram: [John on Telegram ](https://telegram.com/justasus)
