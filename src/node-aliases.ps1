function Docker-Node {
    param (
        [string]
        $parameters
    )

    process {
        docker run --rm node $parameters
    }
}

function Docker-npm {
    param (
        [string]$parameters
    )

    process {
        docker run --rm node npm $parameters
    }
}



function Docker-npx {
    param (
        [string]$parameters
    )

    process {
        docker run --rm node npx $parameters
    }
}


Set-Alias -Name node -Value Docker-Node
Set-Alias -Name npm -Value Docker-npm
Set-Alias -Name npx -Value Docker-npx