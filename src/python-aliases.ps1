function docker-python-base {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm -it -w /work --mount type=bind,source='$PWD',target=/work python $commands"
        invoke-expression $cmd
    }
}

function docker-python {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker-python-base python $commands"
        invoke-expression $cmd
    }
}

function docker-pip {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker-python-base pip $commands"
        invoke-expression $cmd
    }
}

set-alias -Name python -Value docker-python
set-alias -Name pip -Value docker-pip
