class kannel::service {
#TODO create RPM from compiled source and bundle installer,service Or puppet to ensure running on boot etc etc

        service { 'kannel':
                ensure          => running,
                name            => 'kannel',
		require => Package["kannel"],
        }       
}
