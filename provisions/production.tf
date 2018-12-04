// create production app
resource "heroku_app" "production" {
  name = "partiel-production"
  region = "eu"
}

resource "heroku_pipeline_coupling" "production" {
  app      = "${heroku_app.production.name}"
  pipeline = "${heroku_pipeline.test-app.id}"
  stage    = "production"
}

//create database

resource "heroku_addon" "production_database" {
  app  = "${heroku_app.production.name}"
  plan = "heroku-postgresql:hobby-dev"
}
