// create app development

resource "heroku_app" "development" {
  name = "partiel-development"
  region = "eu"

  buildpacks = [
  "heroku/go"
]
}

# Couple apps to different pipeline stages
resource "heroku_pipeline_coupling" "development" {
  app      = "${heroku_app.development.name}"
  pipeline = "${heroku_pipeline.test-app.id}"
  stage    = "development"
}

// create database
resource "heroku_addon" "development_database" {
  app  = "${heroku_app.development.name}"
  plan = "heroku-postgresql:hobby-dev"
}
