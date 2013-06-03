guardrblackbox
==============

BDD test example to scan the Guardr page on drupal.org from Jenkins

Example BDD test of Guardr project page

Assumes the following are installed and working

 * Jenkins
 * Jenkins plugins
   * GitHub plugin
   * Jenkins Workspace Cleanup Plugin
 * Drush

Install the Github plugin for Jenkins

Install Composer using Drush

```Shell
sudo drush dl composer-8.x-1.0-alpha10
sudo 755 /usr/share/drush/commands/composer
sudo find /usr/share/drush/commands/composer -type f -exec chmod 644 \{} \;
sudo find /usr/share/drush/commands/composer -type d -exec chmod 755 \{} \;
```

Create a new job in Jenkins

 * Discard old builds
   * Set something so it doesn't go infiniately

 * Github project: https://github.com/CharDUG/guardrblackbox/
 * Source Code Management: Git
   * Repository URL: git://github.com/CharDUG/guardrblackbox.git
   * Branches to build: master

 * Build Environment
   * Delete workspace before build starts

 * Build
    * Execute shell

```Shell
drush cache-clear drush
drush composer install
${WORKSPACE}/bin/behat
```

* Post-build Actions
  * Delete workspace when build is done
