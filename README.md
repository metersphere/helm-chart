用于部署 [MeterSphere](https://github.com/metersphere/metersphere) 的 Helm Chart

## 使用指引

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add metersphere https://metersphere.github.io/helm-chart/
helm repo update  # 从 chart 仓库中更新本地可用chart的信息
helm dependency update #更新依赖包
helm install metersphere metersphere/metersphere  --namespace=ms --create-namespace
```

## 问题反馈

如果您在使用过程中遇到什么问题，或有进一步的需求需要反馈，请提交 GitHub Issue 到 [MeterSphere 项目的主仓库](https://github.com/metersphere/metersphere/issues)
