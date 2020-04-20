# aws-terraform-module-vpc

[![OSO DevOps][logo]](https://osodevops.io)

---

This Terraform module contains the neccessary resources for creating a best-practices Virtual Private Cloud (VPC) setup in AWS.

As per AWS best practices, a single VPC will be created with both public and private subnets, each subnet placed in a seperate availability zone. Each of the private subnets have their own private NAT gateway to allow internet access for resources hosted within the private zone of the network.

This project is part of our open source DevOps adoption approach. 

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:
```hcl
module "codebuild" {
  source        = "git::ssh://git@github.com/osodevops/aws-terraform-module-vpc.git"
  environment   = "dev"
  common_tags   = var.common_tags
  zone          = ["us-east-1a", "us-east-1b", "us-east-1c"]
  account_name  = "foo-bar-aws"
  cidr          = "10.1.0.0/16"
```

## Help

**Got a question?**

File a GitHub [issue](https://github.com/osodevops/aws-terraform-module-vpc/issues), send us an [email][email] or tweet us [twitter][twitter].

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/osodevops/aws-terraform-module-vpc/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing this project or help out with our other projects, we would love to hear from you! Shoot us an [email][email].

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest changes from "upstream" before making a pull request!

## Copyrights

Copyright © 2018-2019 [OSO DevOps](https://osodevops.io)

## License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

[![OSO DevOps][logo]][website]

We are a cloud consultancy specialising in transforming technology organisations through DevOps practices. We help organisations accelerate their capabilities for application delivery and minimize the time-to-market for software-driven innovation. 

Check out [our other projects][github], [follow us on twitter][twitter], or [hire us][hire] to help with your cloud strategy and implementation.




[![README Footer][readme_footer_img]][readme_footer_link]
[![Beacon][beacon]][website]

  [logo]: https://osodevops.io/assets/images/logo-purple-b3af53cc.svg
  [website]: https://osodevops.io/
  [github]: https://github.com/orgs/osodevops/
  [hire]: https://osodevops.io/contact/
  [linkedin]: https://www.linkedin.com/company/oso-devops
  [twitter]: https://twitter.com/osodevops
  [email]: https://www.osodevops.io/contact/