terraform {
  backend "s3" {
    bucket         = "sbalpk-mrofarret-dnekcab23"
    key            = "network/tmp.tfstate"
    region         = "us-east-1"
    dynamodb_table = "name-of-table"
  }
}

resource "time_sleep" "wait_300_seconds" {
  create_duration = "300s"
}