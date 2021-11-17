用于部署 [MeterSphere](https://github.com/metersphere/metersphere) 的 Helm Chart

## 使用指引

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add metersphere https://metersphere.github.io/helm-chart/
helm repo update  # 从 chart 仓库中更新本地可用chart的信息
helm install metersphere metersphere/metersphere
```
