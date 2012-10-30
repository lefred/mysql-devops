Feature: Percona repositories
  In order to have a system that can install Percona packages
  As a sysadmin
  I want Percona repository to be available

  Scenario Outline: Check if percona repository is installed
    Given a node of class "percona::repository"
    When I compile the catalog
    Then compilation should succeed
    Then there should be a yum repository "percona"
    And all resource dependencies should resolve
