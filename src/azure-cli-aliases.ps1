function docker-azure-cli {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        docker run --rm -v ~/.Azure:/root/.Azure mcr.microsoft.com/azure-cli az $commands
    }
}

set-alias -Name az -Value docker-azure-cli