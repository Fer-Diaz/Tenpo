# tenpo
Ejercicio 2:
Escriba la definición para los siguientes recursos en la nube de su elección:
● Un recurso de almacenamiento genérico (Azure Storage Account, S3, GCS, etc.)
● Un cluster Kubernetes (AKS, GKE, EKS)
● Una Base de datos relacional
● Un usuario/cuenta con acceso de lectura sobre los recursos creados
● Un usuario/cuenta de acceso administrador sobre los recursos creados
● Cree un Pipeline que implemente el código del repositorio de Git en la nube
elegida implementando algunas pruebas sobre el código terraform (linting,
checkov, tfsec, etc)

-------------------------
En GitHub agregar los siguientes secretos:

ARM_CLIENT_ID: El ID del app_registration de Azure para la aplicacion.
ARM_CLIENT_SECRET: El secret del app_registration de Azure para la applicacion.
ARM_TENANT_ID: El tenant ID de Azure AD.

-----------------------------------------
# Inicializar Terraform
terraform init

# Validate configuration
terraform validate

# Planear Terraform 
terraform plan

# Aplicar cambios
terraform apply