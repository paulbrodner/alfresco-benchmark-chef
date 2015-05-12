alfresco-benchmark-chef Cookbook
===========================
Benchmark infrastructure setup  
This cookbook makes your favorite breakfast sandwich.

Installation
------------
1. Install RVM using the ![official page](https://rvm.io/rvm/install)
2. Install bundler 
```gem install bundler```
3. Install dependencies from the root folder of this project
```bundle install``` 
```berks install```

Requirements
------------
No external dependencies at this time. Please see Installation section.

Attributes
----------
#### alfresco-benchmark-chef::install_alfresco
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>['alfresco-benchmark-chef']['install_alfresco']</tt></td>
    <td>Recipe</td>
    <td>Install alfresco on vagrant machine</td>
  </tr>
</table>

Usage
-----
There are many recipes available here, so just include `alfresco-benchmark-chef` with appropriate recipes in your node's `run_list`:

#### alfresco-benchmark-chef::apt
This will run the apt-get command on the system.
```json
{
  "name":"my_node",
  "run_list": [
    "recipe[alfresco-benchmark-chef][apt]"
  ]
}
```
#### alfresco-benchmark-chef::install_alfresco
This will run the apt-get command on the system.
```json
{
  "name":"my_node",
  "run_list": [
    "recipe[alfresco-benchmark-chef][install_alfresco]"
  ]
}
```
Take a look to [.kitchen.yml](.kitchen.yml) from this repository for more examples.

#### alter installation
1. Just run ```kitchen list``` to see available instances with recipes available to converge.
This cookbook was tests on iMAC, so it will expect that you will have a valid alfresco binary located in ~/Downloads folder.
Please see [install_alfresco.rb](attributes/install_alfresco.rb) attributes file for appropiate version. 
2. Run ```kitchen converge <instance-name>```

### Want to use new drivers ?
Run ```kitchen driver discover``` for a list. 
Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Paul Brodner
