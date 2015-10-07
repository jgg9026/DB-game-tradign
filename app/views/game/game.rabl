collection :@user_games
child(game: :game) do
    attributes :name, :maker, :launch_date
    child(platforms: :platforms) do
    attributes :console
end
end
attributes :condition, :id
child(user: :user) do
    attributes :nickname
end
