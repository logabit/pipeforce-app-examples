# PIPEFORCE App Examples

This repository contains example apps for the PIPEFORCE platform. Feel free to use them as a base for your own custom apps.

In order to install these example apps into your PIPEFORCE instance, follow these steps:

## Option A: Install from GitHub repo

This option allows you to download and install the app directly from this GitHub repo into your PIPEFORCE instance. 

### Step 1: Create your personal GitHub token

Create a new personal GitHub access token. See here how to do it:
https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token 

Copy this access token to you clipboard.

### Step 2: Create a new Credentials entry

Copy the GitHub access token, open the PIPEFORCE portal and go to `LOW CODE -> Credentials` and create a new Credentials of type `header` with a name of your choice, for example `github-token` and as value use this format:

```
Authorization: token COPY_YOUR_TOKEN_HERE
```

### Step 3: Install the example apps

Copy and paste this pipeline into your online workbench:

```yaml
pipeline:
  - app.install:
      github: logabit/pipeforce-app-examples
      credentials: github-token
```

Or use the PIPEFORCE CLI:

```bash
pi command app.install github=logabit/pipeforce-app-examples credentials=github-token
```

This will download and install all app resources from inside src/global/app folder.

**Note:** The installation may take a while. Be patient.

More information can be found on the documentation pages: https://pipeforce.github.io 

## Option B: Install from zip file with curl

### Step 1: Download zip file 

Go to https://github.com/logabit/pipeforce-app-examples/releases/latest and download the latest sources Zip file to your local computer.

### Step 2: Upload and install the zip file with curl

Execute this curl command in order to upload and install the app Zip file:

```
curl --location --request POST 'https://hub-<namespace>.pipeforce.net/api/v3/pipeline' \
--form 'pipeline="
  pipeline:
    - iam.authorize:
        username: <yourpassword>
        password: <yourusername>
    - app.install:   
       update: true"' \
--form 'file=@"</path/to/app-sources.zip>"'
```
 - Replace `<namespace>` by the namespace of your instance.
 - Replace `<yourusername>` and `<yourpassword>` by your credentials.
 - Replace `</path/to/app-sources.zip>` to the downloaded zip file.

Also see: https://pipeforce.github.io/docs/api/commands#appinstall 

