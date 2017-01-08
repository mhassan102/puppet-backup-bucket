class backup::backup_instance {
	ec2_instance { 'backup_instance2':
 		ensure => present,
 		region => 'eu-central-1',
 		availability_zone => 'eu-central-1a',
 		image_id => 'ami-7612d319',
 		instance_type => 't2.micro',
 		monitoring => false,
 		key_name => 'puppet',
 		security_groups => 'default',
 		subnet => 'subnet-5652df3e',
 		user_data => template('backup/execute.sh.erb'),
 		associate_public_ip_address=> true,
		instance_initiated_shutdown_behavior => terminate,
	}
}
