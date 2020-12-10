function docker-python {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm -it -v ${PWD}:/work -w /work python python $commands"
        invoke-expression $cmd
    }
}

function docker-pip {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm python pip $commands"
        invoke-expression $cmd
    }
}

set-alias -Name python -Value "docker-python"
set-alias -Name pip -Value "docker-pip"
