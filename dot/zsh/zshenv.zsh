
# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export AWS_DEFAULT_REGION="eu-central-1"
export AWS_PROFILE="saml"
export PATH="/usr/local/go/bin:/home/msch/src/vodafone/dxl-aws-config/bin:/home/msch/.asdf/installs/python/3.7.4/bin:$PATH"


# export HTTP_PROXY="http://webproxy.kabeldeutschland.de:3128"
# export HTTP_PROXY_HOST="http://webproxy.kabeldeutschland.de"
# export VF_PROXY_HOST="webproxy.kabeldeutschland.de"
# export http_proxy="http://webproxy.kabeldeutschland.de:3128"
# export no_proxy=".local,localhost,127.0.0.1,10.242.125.15,.kabeldeutschland.de,viola.local,clearquest.viola.local,10.32.26.144,.vf-web-services.de,.internal.cd.dxl-vf.de,.internal.cdlab.dxl-vf.de,.internal.test.dxl-vf.de,.mgmt.dxl-vf.de,.test.dxl-vf.de,.citt.dxl-vf.de,.cont.dxl-vf.de,.prod.dxl-vf.de,.dev1.dxl-vf.de,.dev.dxl-vf.de,corp-sts-prod.vodafone.com,.preprod.dxl-vf.de,.devtest.dxl-vf.de"
# export HTTPS_PROXY="http://webproxy.kabeldeutschland.de:3128"
# export https_proxy="http://webproxy.kabeldeutschland.de:3128"


alias auth_mgmt='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::971374528884:role/SysAdmin --profile 971374528884_mgmt_sysadmin-dxl'
alias auth_citt='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::799540856289:role/SysAdmin --profile 799540856289_citt_sysadmin-dxl'
alias auth_cont='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::473753139407:role/SysAdmin --profile 473753139407_cont_sysadmin-dxl'
alias auth_test='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::920424700414:role/SysAdmin --profile 920424700414_test-sysadmin-dxl'
alias auth_preprod='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::465526149301:role/SysAdmin --profile 465526149301_preprod_sysadmin-dxl'
alias auth_dev='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::944117353120:role/SysAdmin --profile 944117353120_dev_sysadmin-dxl'
alias auth_devtest='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::752221279984:role/SysAdmin --profile 752221279984_devtest_sysadmin-dxl'
alias auth_prod='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::060247505350:role/SysAdmin --profile "060247505350_prod_sysadmin-dxl"'

alias auth_msch='env -u AWS_PROFILE aws-mfa --duration 43200 --device "arn:aws:iam::764622715927:mfa/Manuel.Schmidt1@vodafone.com" --assume-role "arn:aws:iam::764622715927:role/admin" --profile "msch-iam" --long-term-suffix 'none' --short-term-suffix "764622715927"'


alias with_mgmt='AWS_PROFILE=971374528884_mgmt_sysadmin-dxl'
alias with_test='AWS_PROFILE=920424700414_test_sysadmin-dxl'
alias with_dev='AWS_PROFILE=944117353120_dev_sysadmin-dxl'
alias with_citt='AWS_PROFILE=799540856289_citt_sysadmin-dxl'
alias with_cont='AWS_PROFILE=473753139407_cont_sysadmin-dxl'
#alias with_anden='AWS_PROFILE=anden-iam-764622715927'
alias with_msch='AWS_PROFILE=msch-iam-764622715927'
alias with_blang='AWS_PROFILE=bss-dxl-blang-admin'
alias with_devtest='AWS_PROFILE=752221279984_devtest_sysadmin-dxl'
alias with_prod='AWS_PROFILE=060247505350_prod_sysadmin-dxl'
alias with_preprod='AWS_PROFILE=465526149301_preprod_sysadmin-dxl'

alias stackwatch='watch $HOME/bin/stackstatus.sh </dev/null'
