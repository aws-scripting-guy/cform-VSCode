CloudFormation support for Visual Studio Code 
===================
[![Build Status](https://dev.azure.com/aws-scripting-guy/cform-VSCode/_apis/build/status/cform-VSCode-CI?branchName=master)](https://dev.azure.com/aws-scripting-guy/cform-VSCode/_build/latest?definitionId=6&branchName=master)

This is a fork of [ST3 CloudFormation plugin](https://github.com/beaknit/cform).

News
-------------
Introducing two release channels:
1. Stable for scheduled update cycle 
2. Nightly for fast updates based on community commits 

You can find both under section **Releases** on Github: 

[https://github.com/aws-scripting-guy/cform-VSCode/releases](https://github.com/aws-scripting-guy/cform-VSCode/releases)

Only Stable channel is being published to VS Code marketplace. Nightly build needs to be installed manually from .vsix file. 

Usage
-------------

 1. Install the extension
 2. Create **new file**
 3. Set syntax to **JSON** or **YAML**
 4. Type **start** and press ```tab``` key to populate basic template skeleton
 5. **Start typing** desired **resource name** and hit ```tab``` key


> **Note:** CloudFormation support works with YAML/JSON syntax selected or .json, .cform, .template file extensions. These are commonly used CloudFormation template extensions.

![New template file](https://raw.githubusercontent.com/aws-scripting-guy/cform-VSCode/master/assets/new_template_file.gif)

YAML templates
------------------

Extension fully supports YAML templates. YAML template creation follows the same syntax rules: 

1. Create new YAML document
2. Type **start** to populate new template
3. **Start typing** desired **resource name** and hit ```tab``` key

> **Note:** YAML support is dependent on YAML Language Server.
By default,  YAML Language Server (Red Hat YAML recommended) will be installed automatically as prerequisite. 

> **Note:** If you do not want to install YAML Language Server, install version **cform-noyaml.vsix** from [GitHub](https://github.com/aws-scripting-guy/cform-VSCode). 

YAML setup
------------------

After installation, open your User Settings ```(Ctrl + ,)``` and paste preferences below into your settings file. 

> **Note:** This will whitelist CloudFormation intrinsic functions tags. Otherwise you will end up with *Unknown Tag* showing up in your YAML document.

```json
    // Custom tags for the parser to use
    "yaml.customTags": [
        "!And",
        "!If",
        "!Not",
        "!Equals",
        "!Or",
        "!FindInMap sequence",
        "!Base64",
        "!Cidr",
        "!Ref",
        "!Sub",
        "!GetAtt",
        "!GetAZs",
        "!ImportValue",
        "!Select",
        "!Select sequence",
        "!Split",
        "!Join sequence"
    ],
    // Enable/disable default YAML formatter (requires restart)
    "yaml.format.enable": true,
```

Troubleshooting
-------------------

* Users behing proxy: 
Download latest version of .vsix file under Releases from GitHub repo for manual install
[https://github.com/aws-scripting-guy/cform-VSCode/releases](https://github.com/aws-scripting-guy/cform-VSCode/releases)

Known issues
-------------------

When working with YAML documents, your current YAML language interpreter might not support syntax of AWS intrinsic functions, thus marking them as *unknown tag*. 
This however has no effect on validity of the YAML document. 

> **Note:** You can solve this issue by whitelisting specific tags following instructions under section **YAML Setup**. 

> **Note:** Tested only with Red Hat YAML Language Server

![YAML known issue](https://raw.githubusercontent.com/aws-scripting-guy/cform-VSCode/master/assets/known_issue1.png)

Contributions
-------------------
Contributions: 

1. Fork
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

Your feedback is welcome on GitHub.

Donations
-------------------

Paypal

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=5DE3L7KRM6RB8&lc=US&item_name=AWS%20Scripting%20Guy&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)

