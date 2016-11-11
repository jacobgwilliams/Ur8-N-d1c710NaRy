content_for_users = [
  { :username => "testman",
    :password => "password"},
  { :username => "mantest",
    :password => "password"}
]

content_for_faved_definitions = [
  { :word => "jive turkey",
    :definition => "a. One who speaks as though they know what they're talking about...though they do not. b. a bullshitter.",
    :user_id => 1},
  { :word => "blueberry yum yum",
    :definition => "chronic ass weed- the kind that makes you choke and reach an inner peace; derived from Ludacris with help from the language Jag.",
    :user_id => 2}
]

User.create!(content_for_users)
FavedDefinition.create!(content_for_faved_definitions)
