function Docker-Node {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
	write-host $parameters|format-list
        $cmd = "docker run --rm -it --mount type=bind,source='$PWD',target=/work -w /work node $commands"
		write-host $cmd
        Invoke-Expression $cmd
    }
}

function Docker-npm {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker-node npm $commands"
        Invoke-Expression $cmd
    }
}



function Docker-npx {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker-node npx $commands"
        Invoke-Expression $cmd
    }
}


Set-Alias -Name node -Value Docker-Node
Set-Alias -Name npm -Value Docker-npm
Set-Alias -Name npx -Value Docker-npx