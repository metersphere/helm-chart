# MeterSphere Helm Chart 部署

## 使用示例

- 下载依赖

```bash
helm dependency update
```

- 创建一个 Namespace

```bash
kubectl create ns metersphere
```

- 安装 MeterSphere，以 Helm3 为例

```bash
helm install metersphere -n metersphere -f values.yaml .
```

- 访问服务

```bash
kubectl get ingress -n metersphere

NAME          HOSTS                         ADDRESS   PORTS   AGE
metersphere   ms-dev.apps.metersphere.com   x.x.x.x      80    4s
```

本地配置 hosts 将 ms-dev.apps.metersphere.com 指向服务地址，即可访问。

如果没有部署 Ingress Controller，也可以将 metersphere-server 改为 NodePort 进行访问。

```bash
kubectl patch svc metersphere-server --patch '{"spec": { "type": "NodePort" } }' -n metersphere
```

查看服务端口:

```bash
kubectl get svc metersphere-server -n metersphere

NAME                 TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
metersphere-server   NodePort   10.233.61.153   <none>        8081:31222/TCP   66m
```

通过 IP:31222 的方式，同样可以访问页面。
