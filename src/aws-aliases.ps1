function docker-aws {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli $commands"
        invoke-expression $cmd
    }
}

set-alias -Name aws -Value docker-aws