function Docker-Node {
    param (
        [string[]]
        $parameters
    )

    process {
        $cmd = "docker run --rm node $parameters"
        Invoke-Expression $cmd
    }
}

function Docker-npm {
    param (
        [string[]]$parameters
    )

    process {
        $cmd = "docker run --rm node npm $parameters"
        Invoke-Expression $cmd
    }
}



function Docker-npx {
    param (
        [string[]]$parameters
    )

    process {
        $cmd = "docker run --rm node npx $parameters"
        Invoke-Expression $cmd
    }
}


Set-Alias -Name node -Value Docker-Node
Set-Alias -Name npm -Value Docker-npm
Set-Alias -Name npx -Value Docker-npx

npm adduser -h