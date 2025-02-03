# npm, npx
npm stands for Node Package Manager. It is the default package manager for the JavaScript runtime environment Node.js. npm allows developers to:
1. **Install Packages**
2. **Manage Dependencies**: Automatically handle and manage dependencies for a project
3. **Run Scripts**: execute scripts defined in the package.json file, such as build, test and start scripts
4. **Publish Packages**

Install a package using npm:
```bash
npm install package-name

# Install globally
npm install -g package-name
```

To initialize a new Node.js project and create a package.json file, you can use:
```bash
npm init
```

npx is a command-line tool that comes with npm. It allows you to execute binaries from npm packages without globally installing them. This is particularly useful for running one-off commands or scripts from npm packages.

