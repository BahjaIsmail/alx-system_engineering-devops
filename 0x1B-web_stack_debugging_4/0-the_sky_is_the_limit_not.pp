#Increase Nginx server capacity
exec { 'fix--for-nginx':
  command  => 'sudo sed -i \'s/15/30000/\' /etc/default/nginx && sudo service nginx restart',
  provider => shell,
}
