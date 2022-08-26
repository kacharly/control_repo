class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCds+2JuOQkpZ7iSuoiEYvHdMwAVUqtJSUuGq42QywFZJWhY1wCkuvMmWOFcoV9FiYV4eGrPaD/HJI1cN1dyYXy9CkQUfP/nOpl8CJH14Z+ga8lGqvxHayYRbLrPQGTOHsGhtEkIztB6Wov1eZ68QNGqIw+rUX5HgkWfdYHqajM62PvMbqpvc9KJmLCFfSXYLwzUzla8BbiecPVUhCBVyHQdL5ASsnvEtDOPS9SsNm9HLgOop8BXbqGWyC3B/TrHQGeAaJFXEWqKLvFW8NGAaOTey1DbXfCUO/TZLXDkN/kT/ByHzCaywHjxA58e2tXMOhXEVMMQVh6VL4WpkPD/XPv',
	}  
}
