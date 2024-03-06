apiVersion: v1
kind: Service
metadata:
  annotations:
    meta.helm.sh/release-name: my-mysql
    meta.helm.sh/release-namespace: default
  creationTimestamp: "2024-03-05T14:27:46Z"
  labels:
    app.kubernetes.io/component: primary
    app.kubernetes.io/instance: my-mysql
    app.kubernetes.io/managed-by: Helm
    app.kubernetes.io/name: mysql
    app.kubernetes.io/version: 8.0.36
    helm.sh/chart: mysql-9.22.0
  name: my-mysql
  namespace: default
  resourceVersion: "1025"
  uid: fbfe7b08-526b-4e99-b149-f4c6a1ba4f5a
spec:
  clusterIP: 10.97.132.254
  clusterIPs:
  - 10.97.132.254
  internalTrafficPolicy: Cluster
  ipFamilies:
  - IPv4
  ipFamilyPolicy: SingleStack
  ports:
  - name: mysql
    port: 3306
    protocol: TCP
    targetPort: mysql
  selector:
    app.kubernetes.io/component: primary
    app.kubernetes.io/instance: my-mysql
    app.kubernetes.io/name: mysql
  sessionAffinity: None
  type: ClusterIP
status:
  loadBalancer: {}
