# setenvironmetvariable(<name>, <value>) - temporary environment variable adding with name "name" and value "value"
# setenvironmentvariable(<name>, '') - temporary environent variable named "name" deleting
# setenvironmentvariable(<name>, <value>, 'Machine') - environment variable adding with name "name" and value "value"

[Environment]::setenvironmentvariable('MYENVVAR', 'VARENVMY')
$env:myenvvar
[Environment]::setenvironmentvariable('MYENVVAR', '')

[Environment]::setenvironmentvariable('MYENVVAR', 'VARENVMY', 'Machine')
$env:myenvvar
[Environment]::setenvironmentvariable('MYENVVAR', '', 'Machine')

