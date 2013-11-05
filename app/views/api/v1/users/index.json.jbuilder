json.array! @users do |user|
  #TODO: Render this via partial instead of hardcoding it.

  json.id                 user.id.to_s # If you don't convert to string, the JSON will contain a nested hash with an OID attr.
                           # I would rather just return a string representation of it.
  json.email               user.email
  json.sign_in_count       user.sign_in_count
  json.current_sign_in_at  user.current_sign_in_at
  json.last_sign_in_at     user.last_sign_in_at
  json.current_sign_in_ip  user.current_sign_in_ip
  json.last_sign_in_ip     user.last_sign_in_ip
end