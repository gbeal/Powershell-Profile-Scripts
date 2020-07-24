function docker-aws {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli $commands
    }
}

set-alias -Name aws -Value docker-aws