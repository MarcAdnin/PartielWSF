// create app staging

resource "heroku_app" "staging" {
  name = "partiel-staging"
  region = "eu"

  buildpacks = [
  "heroku/go"
]
}

# Couple apps to different pipeline stages
resource "heroku_pipeline_coupling" "staging" {
  app      = "${heroku_app.staging.name}"
  pipeline = "${heroku_pipeline.test-app.id}"
  stage    = "staging"
}

// create database
resource "heroku_addon" "staging_database" {
  app  = "${heroku_app.staging.name}"
  plan = "heroku-postgresql:hobby-dev"
}
