project_name: "hns_domain_b_spoke"

remote_dependency: hns_domain_a_hub {
  url: "git@github.com:vishal-dharm/hns_domain_a_hub.git"
  ref: "master"
  override_constant: CONNECTION_NAME {
    value: "bq-lookerplus-b"
  }
}

remote_dependency: hns_domain_b_hub {
  url: "git@github.com:vishal-dharm/hns_domain_b_hub.git"
  ref: "master"
  override_constant: CONNECTION_NAME {
    value: "bq-lookerplus-b"
  }
}
