include: "//hns_domain_a_hub/base_views/users.view.lkml"

view: +users {

  # fields_hidden_by_default: yes

  dimension: first_name {
    hidden: yes
  }

  dimension: last_name {
    hidden: yes
  }

  dimension: full_name {
    type: string
    sql: CONCAT(${first_name}, ' ', ${last_name}) ;;
  }
}
