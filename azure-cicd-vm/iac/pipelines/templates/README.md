# Alterações

## ci-main.yaml
-> Alterar variáveis

## job-versioning-template.yml
-> Criar library variable group = iac-versions de major=0, minor=0 e patch=0
<!-- -> Alterar para retirar pre release -->
-> Permitir build service no projeto - https://stackoverflow.com/questions/56541458/azure-pipeline-doest-allow-to-git-push-throwing-genericcontribute-permission
-> Permitir alterar variable group - https://stackoverflow.com/questions/52986076/having-no-permission-for-updating-variable-group-via-azure-devops-rest-api-from
-> Atentar-se ao fato de que as branchs devem ser feature/ ou patch/
-> Alterar git config user e user.email 

## job-publish-template.yml
-> Alterar para artifacts da organização e projeto. Linha 44