# Reference
<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

**Classes**

_Public Classes_

* [`baculaweb`](#baculaweb): Installs bacula-web - A web based reporting and monitoring tool for Bacula.

_Private Classes_

* `baculaweb::config`: Configure the bacula-web application and set proper permissions
* `baculaweb::install`: Download the baculaweb source and install it in the root_dir

## Classes

### baculaweb

== Class: baculaweb

* **See also**
https://www.bacula-web.org/

#### Parameters

The following parameters are available in the `baculaweb` class.

##### `version`

Data type: `String`

This version of baculaweb will be installed

##### `archive_name`

Data type: `String`

The filename of the archive which will be fetched from the mirror

##### `user`

Data type: `String`

The user under which the webserver is running

##### `group`

Data type: `String`

The group under which the webserver is running

##### `archive_path`

Data type: `Stdlib::Compat::Absolute_path`

The path where the fetched archive from the mirror will be saved

##### `mirror_base_url`

Data type: `Variant[Stdlib::HTTPUrl,Stdlib::HTTPSUrl]`

The base url from where the archive will be downloaded

##### `mirror`

Data type: `Variant[Stdlib::HTTPUrl,Stdlib::HTTPSUrl]`

The complete URL to download the archive

##### `extract_base_dir`

Data type: `Stdlib::Compat::Absolute_path`

The base directory for extracting the archive

##### `extract_dir`

Data type: `Stdlib::Compat::Absolute_path`

The full path of the directory where to save the archive for the specific version

##### `extract_creates`

Data type: `Stdlib::Compat::Absolute_path`

The path of the directory that will be created after extracting the specific version

##### `archive_symlink_to_root_dir`

Data type: `Boolean`

Whether the extracted archive should be symlinked to the document root directory

##### `root_dir`

Data type: `Stdlib::Compat::Absolute_path`

The document root directory for the application

##### `config_path`

Data type: `Stdlib::Compat::Absolute_path`

The path of the application config file

##### `cache_path`

Data type: `Stdlib::Compat::Absolute_path`

The path of the application cache directory

##### `assets_protected_path`

Data type: `Stdlib::Compat::Absolute_path`

The path of the application assets directory

##### `show_inactive_clients`

Data type: `Boolean`

Show inactive clients or not

##### `hide_empty_pools`

Data type: `Boolean`

Hide empty pools

##### `datetime_format`

Data type: `String`

Change default date and time format

##### `enable_users_auth`

Data type: `Boolean`

Enable or disable users authentication - This settings is useful if you already authenticate users on Web server side, using .htpasswd or LDAP authentication (mod_auth_ldap or any other).

##### `debug`

Data type: `Boolean`

Enable or disable debug mode - Debug mode could be helpful to troubleshoot Bacula-Web setup problem

##### `language`

Data type: `Enum['en_US', 'be_BY', 'ca_ES', 'pl_PL', 'ru_RU', 'zh_CN', 'no_NO',
    'ja_JP', 'sv_SE', 'es_ES', 'de_DE', 'it_IT', 'fr_FR', 'pt_BR', 'nl_NL']`

Set displayed language - choose from ['en_US', 'be_BY', 'ca_ES', 'pl_PL', 'ru_RU', 'zh_CN', 'no_NO', 'ja_JP', 'sv_SE', 'es_ES', 'de_DE', 'it_IT', 'fr_FR', 'pt_BR', 'nl_NL']

##### `catalog_db`

Data type: `Array[Struct[{
    label     => String,
    host      => Optional[String],
    login     => Optional[String],
    password  => Optional[String],
    db_name   => Optional[String],
    db_type   => Enum['mysql', 'pgsql', 'sqlite'],
    db_port   => Optional[Integer],
  }]]`

Database connection settings for the bacula catalog databases
