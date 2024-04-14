## Contributing

### Local
For local development, we recommend leveraging conda and an IDE, such as VSCode.

#### 1 - Environment Setup
1. Clone the repository to your local machine and `cd` into the directory. Note that you may need to prepend your token like this: `git clone https://YOUR_TOKEN@REPOSITORY_URL`.
2. Install the package via `pip install -e '.[dev]'`. This will install all required dependencies, dev dependencies, and create a local package at the directory of interest. 
3. Validate the install with `pip show PACKAGE_NAME` - you should see your local path in the `Editable project location` field.

#### 2 - Making Changes
1. Create a new branch via `git checkout -b BRANCH_NAME`
2. Make your changes
3. Run `pytest` in the root directory to test your changes.

#### 3 - Create a PR
1. Test that your code style is correct by running `make lint` from your home directory. If there are errors, you can manually resolve them and/or run `make format`. Note that not all issues can be resolved by the linter.
2. Run all pre-commit checks via `make check`.
3. Add your files to staging via `git add .`.
4. Commit your files via `git commit . -m "COMMIT MESSAGE"`
5. Push your changes via `git push` and copying and running the output push message.
6. Go to the repository in github and create a PR via the UI. Once your CI tests pass, request a reviewer from the team.
7. After the reviewer has approved your PR, merge it and delete your branch.

### Philosophy
* We will have strong test coverage on utilities and self-contained functions.
* We will have weak test coverage for integrations and environment-dependent functionality.
* Each independent tool will have its own folder in `src`, as shown below.
  * src
    * tool_1
    * tool_2
    * ...
    * utils 
  * tests
    * tool_1
    * tool_2
    * ...
    * utils
* Variable names should be understandable and self-describing.
* Code readability will typically be more important than efficiency.
