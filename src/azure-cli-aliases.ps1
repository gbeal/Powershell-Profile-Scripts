function docker-azure-cli {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        docker run --rm -it -v ~/.Azure:/root/.Azure mcr.microsoft.com/azure-cli $commands
    }
}

set-alias -Name az -Value docker-azure-cli