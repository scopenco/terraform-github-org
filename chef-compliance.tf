module "chef-compliance" {
  source         = "modules/repository"
  name           = "chef-compliance"
  description    = "Development repository for the chef-compliance cookbook"
  homepage_url   = "https://supermarket.chef.io/cookbooks/chef-compliance"
  cookbook_team  = "${github_team.chef-compliance.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "chef-compliance" {
  name        = "chef-compliance"
  description = "chef-compliance Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-compliance-maintainer" {
  team_id  = "${github_team.chef-compliance.id}"
  username = "mengesb"
  role     = "maintainer"
}
