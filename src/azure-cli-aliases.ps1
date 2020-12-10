function docker-azure-cli {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm -v ~/.Azure:/root/.Azure mcr.microsoft.com/azure-cli az $commands"
        invoke-expression $cmd
    }
}

set-alias -Name az -Value docker-azure-cli