require 'github_api'



github = Github.new


p "Digite o nome do usuario para ver seus repositorios"
option = gets.chomp.to_s

var = github.repos.list user: option


var.each do |x|
  puts "#{x.description} - #{x.ssh_url}"
end

