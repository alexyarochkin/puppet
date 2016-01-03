class profiles::nameservers {

	$name_servers = hiera ('name_servers')
	$search_domain = hiera ('search_domain')
	$file = hiera ('file')

	file { $file:
		content => "$name_servers$search_domain",
	}


}
