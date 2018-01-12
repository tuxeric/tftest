provider "aws" {
  region = "eu-central-1"
}

module "one" {
  source = "module-one/"

server_port = "80"
name = "unu - one"

}

module "two" {
  source = "module-two/"

server_port = "80"
name = "doi - two"

}
