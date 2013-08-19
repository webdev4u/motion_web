task :clean => :environment do
	# records = Record.new
	Record.clean_old_records
end