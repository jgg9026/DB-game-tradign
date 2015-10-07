object :@user_games
attributes :name
child(user_games: :condition) do
    attributes :condition
end
child(platforms: :platform) do
    attributes :console
end