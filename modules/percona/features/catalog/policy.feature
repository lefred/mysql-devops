Feature: Percona Server
  In order to have a system that can run Percona Server 
  As a sysadmin
  I want Percona repository to be available

  Scenario Outline: Check if percona repository is installed
    #Given a node of class "percona::server"
    Given a node named "<hostname>"
    When I compile the catalog
    Then there should be a yum repository "percona"

    Examples:
      | hostname |
      | percona1 |

  Scenario Outline: Percona Server should be installed
    Given a node named "<hostname>"
    When I compile the catalog
    Then package "MySQL-client" should be "installed"
    Then package "MySQL-server" should be "installed"
    Then there should be a resource "Service[mysql]"
    And  the service should have "enable" set to "true"
    And  the state should be "running"  
    Then I run "/usr/bin/mysql -e 'status' | grep Percona >/dev/null 2>&1; echo $?"
    And  I should see "True" as return code 

    Examples:
      | hostname |
      | percona1 |
