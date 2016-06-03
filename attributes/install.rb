#
# Cookbook Name:: solr_6
# Attributes:: install
#
# Copyright 2016, ECHO Inc
#

# Java Defaults
default['solr']['install_java'] = true
# Java version needed for this version of Solr
# (All other attributes are set at defaults but can be overridden)
default['java']['jdk_version'] = '8'

# Solr Defaults
# rubocop:disable Metrics/LineLength
default['solr']['version'] = '6.0.0'
default['solr']['url'] = "https://archive.apache.org/dist/lucene/solr/#{node['solr']['version']}/#{node['solr']['version'].split('.')[0].to_i < 4 ? 'apache-' : ''}solr-#{node['solr']['version']}.tgz"
default['solr']['dir'] = '/opt'
default['solr']['user']	= 'solr'
default['solr']['group'] = 'solr'
default['solr']['data_dir']	= '/var/solr'
default['solr']['port']	= '8983'
default['solr']['java_mem']	= '-Xms512m -Xmx512m'
default['solr']['host']	= node['fqdn']
default['solr']['timezone']	= 'UTC'
default['solr']['zk_host'] = ''
default['solr']['zk_client_timeout'] = '15000'
default['solr']['gc_log_opts'] = '-verbose:gc -XX:+PrintHeapAtGC -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCTimeStamps -XX:+PrintTenuringDistribution -XX:+PrintGCApplicationStoppedTime'
default['solr']['enable_remote_jmx_opts'] = 'false'
# rubocop:enable Metrics/LineLength
