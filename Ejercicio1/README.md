# tenpo
Ejercicio 1:
Despliegue una aplicación en Kubernetes con los siguientes requisitos:
● Ejecute un servicio web que responde a solicitudes HTTP (siéntase libre de usar
cualquier imagen Docker existente o cree la suya propia)
● Configure su aplicación para servir en 443 apuntando a 80 (Deseable)
● Use un certificado autofirmado para habilitar SSL (Deseable)
● Configure el escalado automático de su aplicación usando la CPU como
indicador con mínimo 2 y máximo 10 réplicas
● Cree un archivo de configuración de Kubernetes que podamos aplicar a un
clúster existente usando kubectl

-----------------------
# Crear clave privada
openssl genrsa -out private-key 2048

# Generar certificado
openssl req -new -x509 -key private-key -out certificado -days 365

# Asegurarse que la clave privada y el certificado esten en formato PEM para poder ser usados por Kubernetes
openssl rsa -in private-key -outform PEM -out private-key.pem
openssl x509 -in certificado -outform PEM -out certificado.pem

# Crear el secret en Kubernetes
kubectl create secret tls aplicacion-tls --key private-key.pem --cert certificado.pem

# Para aplicar este manifiesto
kubectl apply -f application.yml

-----------------------------------

# Automatizando la generacion de certificados en Kubernetes
Para automatizar esto se podria usar un servicio como CERT-Manager
https://cert-manager.io/

