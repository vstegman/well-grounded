namespace :vince do
	desc "Complicated ls"
	task :print_me do
		puts "This is a complicated ls"
		Dir["./*"].each do |f|
			puts f
		end
	end
end