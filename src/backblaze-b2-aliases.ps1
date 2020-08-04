function docker-backblaze-b2 {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        docker run --rm -v $HOME\.b2:/root/.b2 b2-alpine:latest b2 $commands
    }
}

set-alias -Name b2 -Value docker-backblaze-b2