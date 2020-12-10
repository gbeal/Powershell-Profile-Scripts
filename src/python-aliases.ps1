function docker-python {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm python $commands"
        invoke-expression $cmd
    }
}

set-alias -Name python -Value docker-python
set-alias -Name pip -Value docker-python
