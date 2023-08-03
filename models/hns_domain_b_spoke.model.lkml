connection: "bq-lookerplus-b"

# include: "//hns_domain_a_hub/base_views/users.view.lkml"
include: "/views/users.view.lkml"

include: "//hns_domain_b_hub/base_explores/events.explore.lkml"

explore: +events {
  label: "Domain B Spoke: Events"
  # fields: [-ALL_FIELDS*]
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
