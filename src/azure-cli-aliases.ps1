function docker-azure-cli {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm --mount type=bind,source='$HOME/.azure',target=/root/.azure mcr.microsoft.com/azure-cli az $commands"
        invoke-expression $cmd
    }
}

set-alias -Name az -Value docker-azure-cli