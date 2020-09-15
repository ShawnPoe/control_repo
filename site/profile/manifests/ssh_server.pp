class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enabe  => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDig7IRjaj43MtFHHl/sb6z0vo2UI8UGOCuSOjFoT2ERljMewobKHlyTTY86SrAEaFJYnDDcaxgDEmSV7izhxbUWYmuI4qfgWa1BWTVa8axhiM+NdppRnu3y+uZd5NBf2yM/vPPHtlB+5o6sOrbDU9TjxQvgUYS/HKgQ62E2yP4gJSW0NV8dWENnYEXYwhnksIrhuBlqL8BAoZhXlVZmMKLCQ4fb5n0Bz98u0qVIPYWFVG5C5IBrN5k5GmFs22zukRr7d2KtOd71IAfKzVVdURB/A8EB1wLGQ48JFGZ9DjhvS9O1Dvh775ClmGeaoVy55e5XCZJ6n11nBbjUzJIKeY1',
  }
