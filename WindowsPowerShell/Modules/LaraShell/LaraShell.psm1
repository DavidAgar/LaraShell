Write-Host "Loading Laravel Module" -ForeGroundColor green

	### Migrations ###
	#Usage
	#mig => migrate
	#mig s => migrate --seed
	#mig r => migrate:refresh
	#mig r s => migrate:refresh --seed
	#mig rb => migrate:rollback

Function Invoke-Migration ($arg1,$arg2,$arg3,$arg4,$arg5) {

	if ($arg1 -eq "r") {
        if ($arg2 -eq "s") {
            Write-Host "Artisan Migrate:Refresh --Seed" -ForeGroundColor cyan
            php artisan migrate:refresh --seed
        } else {
            Write-Host "Artisan Migrate:Refresh" -ForeGroundColor cyan
            php artisan migrate:refresh
        }
    }

	elseif ($arg1 -eq "s") {
	    Write-Host "Artisan Migrate --seed" -ForeGroundColor cyan
	    php artisan migrate --seed
	}

	elseif ($arg1 -eq "rb") {
    	    Write-Host "Artisan Migrate:Rollback" -ForeGroundColor cyan
    	    php artisan migrate:rollback
    	}

	else {
	    Write-Host "Artisan Migrate" -ForeGroundColor cyan
	     php artisan migrate
	}

}

    ### Artisan ###
    #Usage
    #art [argument] [argument] [argument] [argument] [argument] => php artisan [argument] ...

function Invoke-Artisan($arg1,$arg2,$arg3,$arg4,$arg5)
{
    Write-Host "Artisan Command" -ForeGroundColor cyan
    php artisan $arg1 $arg2 $arg3 $arg4 $arg5
}

    ### Generators ###
	#Usage
	#gen mig [name] [arguments] => generate:migration [name] [arguments]
	#gen c [name] => generate:controller [name]
	#gen m [name] => generate:model [name]
	#gen v [name] => generate:view [name]
	#gen s [name] => generate:seed [name]
	#gen p [table1] [table2] => generate:pivot [table1] [table2]
	#gen r [name] [arguments] => generate:resource [name] [arguments]
	#gen sc [name] => generate:scaffold [name]
	#gen pub [arguments] => generate:publish-templates [arguments]

function Invoke-Generators($arg1,$arg2,$arg3,$arg4,$arg5)
{
    if ($arg1 -eq "mig") {
        Write-Host "Generate Migration $arg2 $arg3" -ForeGroundColor cyan
        php artisan generate:migration $arg2 $arg3
    }

    if ($arg1 -eq "c") {
        Write-Host "Generate Controller" -ForeGroundColor cyan
        php artisan generate:controller $arg2
    }

    if ($arg1 -eq "m") {
        Write-Host "Generate Model" -ForeGroundColor cyan
        php artisan generate:model $arg2
    }

    if ($arg1 -eq "v") {
        Write-Host "Generate View" -ForeGroundColor cyan
        php artisan generate:view $arg2
    }

    if ($arg1 -eq "s") {
        Write-Host "Generate Seed" -ForeGroundColor cyan
        php artisan generate:seed $arg2
    }

    if ($arg1 -eq "p") {
        Write-Host "Generate Pivot" -ForeGroundColor cyan
        php artisan generate:pivot $arg2 $arg3
    }

    if ($arg1 -eq "r") {
        Write-Host "Generate Resource" -ForeGroundColor cyan
        php artisan generate:resource $arg2 $arg3
    }

    if ($arg1 -eq "sc") {
        Write-Host "Generate Scaffold" -ForeGroundColor cyan
        php artisan generate:scaffold $arg2
    }

    if ($arg1 -eq "pub") {
        Write-Host "Generate Publish" -ForeGroundColor cyan
        php artisan generate:publish-templates $arg2
    }
}

    ### Composer ###
	#Usage
	#com d => composer dump-autoload -o
	#com u [options] => composer update [options]
	#com i [options] => composer install [options]
	#com [command] [options] [options] [options] [options] [options] => composer [command] [options] ...

function Invoke-Composer($arg1,$arg2,$arg3,$arg4,$arg5)
{
    if ($arg1 -eq "d") {
        Write-Host "Composer Dump" -ForeGroundColor cyan
        composer dump-autoload -o
    }

    elseif ($arg1 -eq "u") {
        Write-Host "Composer Update" -ForeGroundColor cyan
        composer update $arg2
    }

    elseif ($arg1 -eq "i") {
        Write-Host "Composer Install" -ForeGroundColor cyan
        composer install $arg2
    }

    else {
        Write-Host "Composer Command" -ForeGroundColor cyan
        composer $arg1 $arg2 $arg3 $arg4 $arg5
    }
}

### Laravel ###
	#Usage
	#laravel install [path/folder] => Install laravel to given path/folder.

function Invoke-Laravel($arg1,$arg2,$arg3,$arg4,$arg5)
{
    if ($arg1 -eq "install") {
        Write-Host "Installing Laravel" -ForeGroundColor cyan
        composer create-project laravel/laravel $arg2 --prefer-dist
    }
}




### Aliases ###

set-alias mig Invoke-Migration;
Export-ModuleMember -alias mig -function Invoke-Migration

set-alias art Invoke-Artisan;
Export-ModuleMember -alias art -function Invoke-Artisan

set-alias gen Invoke-Generators;
Export-ModuleMember -alias gen -function Invoke-Generators

set-alias com Invoke-Composer;
Export-ModuleMember -alias com -function Invoke-Composer

set-alias laravel Invoke-Laravel;
Export-ModuleMember -alias laravel -function Invoke-Laravel