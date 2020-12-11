function docker-backblaze-b2 {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$commands
    )

    process {
        $cmd = "docker run --rm --mount type=bind,source='$PWD\.b2',target=/root/.b2 b2-alpine:latest b2 $commands"
        invoke-expression $cmd
    }
}

set-alias -Name b2 -Value docker-backblaze-b2
