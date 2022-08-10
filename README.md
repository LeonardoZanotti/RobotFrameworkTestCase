# Robot Framework Test Case
Test case done with Robot Framework

## Requirements
Dependencies:
```
$ pip3.7 install robotframework robotframework-seleniumlibrary
```

Get the webdriver for Firefox:
```
$ wget https://github.com/mozilla/geckodriver/releases/download/v0.30.0/geckodriver-v0.30.0-linux64.tar.gz      # check OS and version for a newer one
$ tar -xvzf geckodriver*        # untar the file
$ chmod +x geckodriver
$ sudo mv geckodriver /usr/local/bin
```

You can use the extensions **Robot Framework Language Server – Robocorp** to work with `.robot` files.