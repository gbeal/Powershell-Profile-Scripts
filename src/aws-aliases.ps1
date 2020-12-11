function docker-aws {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm -it --mount type=bind,source='$HOME/.aws',target=/root/.aws amazon/aws-cli $commands"
        invoke-expression $cmd
    }
}

set-alias -Name aws -Value docker-aws