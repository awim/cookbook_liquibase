time =  Time.new.strftime("%Y%m%d_%H%M%S")

default['user'] = default['group'] = 'awim'

default['liquibase']['source'] = 'liquibase-3.5.1-bin.zip'
default['liquibase']['path'] = '/opt/liquibase'
default['liquibase']['version'] = '3.5.1'

default['liquibase']['db']['user'] = 'awim'
default['liquibase']['db']['password'] = 'awim'
# default['liquibase']['db']['url'] = "jdbc:oracle:thin:@//#{node['ipaddress']}:1521/XE"
default['liquibase']['db']['url'] = "jdbc:oracle:thin:@//localhost:1521/XE"
default['liquibase']['db']['driver'] = "oracle.jdbc.driver.OracleDriver"
default['liquibase']['db']['lib'] = "ojdbc14.jar"
default['liquibase']['db']['changeLogFile'] = "/opt/liquibase/snapshots/changelog_#{time}.xml"