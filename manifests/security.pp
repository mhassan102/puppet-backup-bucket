class backup::security {
	ec2_securitygroup { 'default':
 		ensure => present,
 		region => 'eu-central-1',
 		ingress => [ {
   			protocol => 'tcp',
   			port => 22,
   			cidr => '0.0.0.0/0',
   		}]
 	}
}
