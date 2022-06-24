### Terraform
- マルチクラウド上のコンピュータやネットワークの構築を自動化するツール

### コマンド
- Azure ログイン
```
$ az login
```

- サービスプリンシパル作成
```
$ az ad sp create-for-rbac --name TerraformApp --role Contributor --scopes /subscriptions/7daaf50d-dde4-4dfe-8896-6fba628d6a79
```

### メモ
terraform plan -var-file env.tfvars
terraform apply -var-file env.tfvars