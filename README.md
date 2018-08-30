CloudFormation support for Visual Studio Code 
===================

This is a fork of [ST3 CloudFormation plugin](https://github.com/beaknit/cform).


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

Extension fully supports YAML templates. YAML template creation follows the same syntax rules: type **start** to populate new template. 

YAML Language Server is required. 
1. Install [YAML Language Server](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) 
2. Whitelist intrinsic function tags - paste preferences below into your User Settings (Ctrl + ,) 

```json
    // Custom tags for the parser to use
    "yaml.customTags": [
        "!And",
        "!If",
        "!Not",
        "!Equals",
        "!Or",
        "!FindInMap",
        "!Base64",
        "!Cidr",
        "!Ref",
        "!Sub",
        "!GetAtt",
        "!GetAZs",
        "!ImportValue",
        "!Select",
        "!Split",
        "!Join"
    ],
    // Enable/disable default YAML formatter (requires restart)
    "yaml.format.enable": true,
```

Troubleshooting
-------------------

* Users behing proxy: 
Download  **cform-latest.vsix** file from GitHub repo for manual install
[https://github.com/aws-scripting-guy/cform-VSCode](https://github.com/aws-scripting-guy/cform-VSCode)

Known issues
-------------------

When working with YAML documents, your current YAML language interpreter might not support syntax of AWS intrinsic functions, thus marking them as *unknown tag*. 
This however has no effect on validity of the YAML document. 

> **Note:** You can solve this issue by whitelisting specific tags following instructions under section **YAML Templates**. 

> **Note:** Tested only with Red Hat YAML Language Server

![YAML known issue](https://raw.githubusercontent.com/aws-scripting-guy/cform-VSCode/master/assets/known_issue1.png)

Contributing
-------------------

1. Fork
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

Donations appreciated :)
-------------------

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=5DE3L7KRM6RB8&lc=US&item_name=AWS%20Scripting%20Guy&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)

