LaraShell
===================

The purpose of LaraShell is to make life easier for Laravel developers using windows by generating aliases/shortcuts within the PowerShell command line.<br>

Aliases are available for ..<br>
[Laravel](https://github.com/laravel/laravel) by [Taylor Otwell](https://twitter.com/taylorotwell)<br>
[Laravel-4-Generators](https://github.com/JeffreyWay/Laravel-4-Generators) by [Jeffrey Way](https://twitter.com/jeffrey_way)<br>
[Composer](https://github.com/composer/composer)

This is my first look into PowerShell programming so please excuse any sloppy coding :)

###Requirements

[Composer](http://getcomposer.org/download/) : As required by Laravel4.

###Setup
Copy the WindowsPowerShell folder to your Documents folder so you end up with the following<br>
C:\Users\\[USER]\Documents\WindowsPowerShell\Modules\LaraShell

Run Windows PowerShell as Administrator and type the following to allow PowerShell to run remote signed scripts<br>
```Set-ExecutionPolicy RemoteSigned```

You then have access to the following aliases

###Laravel

```laravel install [path]``` Install laravel to the desired path

######Migrations

```mig``` migrate<br>
```mig s``` migrate --seed<br>
```mig r``` migrate:refresh<br>
```mig r s``` migrate:refresh --seed<br>
```mig rb``` migrate:rollback<br>

###Composer

```com d``` composer dump-autoload -o<br>
```com u [options]``` composer update [options]<br>
```com i [options]``` composer install [options]<br>
```com [command] [options]``` Run any composer command<br>

### Laravel 4 Generators

```gen mig [name] [arguments]``` generate:migration [name] [arguments]<br>
```gen c [name]``` generate:controller [name]<br>
```gen m [name]``` generate:model [name]<br>
```gen v [name]``` generate:view [name]<br>
```gen s [name]``` generate:seed [name]<br>
```gen p [table1] [table2]``` generate:pivot [table1] [table2]<br>
```gen r [name] [arguments]``` generate:resource [name] [arguments]<br>
```gen sc [name]``` generate:scaffold [name]<br>
```gen pub [arguments]``` generate:publish-templates [arguments]<br>

***
##Tips

You can change the alias names to suite your needs by editing the last few lines within LaraShell.psm1

###PhpStorm

Phpstorm 7.* users you can change your default terminal to powershell by hitting<br>
```Ctrl+Alt+s``` > Terminal > Shell Path and change it to ```powershell.exe```<br>
Save the settings and restart.<br>

If you receive a SecurityError error while accessing the new aliases type the following to open a new window as a administrator<br>
```start-process powershell –verb runAs``` and then enter the following<br>
```Set-ExecutionPolicy RemoteSigned```<br>
Close the new PowerShell window and restart PhpStorm.