node default {
}
node 'master.puppet.vm' {
  incude role::master_server
}
