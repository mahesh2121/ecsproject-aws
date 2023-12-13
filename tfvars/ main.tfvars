region = ap.south-1
cluster_name = "webapp-cluster"
service_name = "webapp"
task_family = "wordpress"
target_group_arn = dependency.lb.outputs.target_group_arn
container_definitions = [
    {
      name      = "wordpress"
      image     = "wordpress:latest"
      cpu       = 256
      memory    = 512
      essential = true
      container_port = 80
      environment = {
          WORDPRESS_DB_HOST = dependency.db.outputs.dbhost
          WORDPRESS_DB_USER = dependency.db.outputs.dbuser
          WORDPRESS_DB_NAME = dependency.db.outputs.dbname
      }
      secrets = {
          WORDPRESS_DB_PASSWORD = dependency.db.outputs.dbpassword_arn
      }
    }]
launch_type = {
    type = "FARGATE"
    cpu = 256
    memory = 512



