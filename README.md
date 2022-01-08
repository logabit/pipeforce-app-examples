# pipeforce-app-examples

In order to install these example apps into your PIPEFORCE instance, copy and paste this pipeline into your online workbench:

```yaml
pipeline:
  - app.install:
      github: logabit/pipeforce-app-examples
```

Or use the PIPEFORCE CLI:

```bash
pi command app.install github=logabit/pipeforce-app-examples
```

This will download and install all app resources from inside src/global/app folder.
