class profiles::ntp {

	        $ntp_servers    = hiera ('ntp_servers')	
		$file 		= hiera ('file')

		file { $file:
			content => $ntp_servers,
		}
		 
}

