#vagrant-easyrec

This Vagrant machine will use *ubuntu-14.04-i386* as base to provide you an easyrec sandbox. The provision process will install automatically the following software:

- MySQL Server and Client
- Oracle Java 7 (via webupd8team PPA)
- Tomcat 7
- easyrec 0.98

The machine will have private networking enabled, and will forward the host's **9090** port to guest's **8080** (Tomcat). Easyrec will be accesible from http://127.0.0.1:9090/easyrec-web/.

## Bring up an easyrec instance

````
$ git clone https://github.com/fcingolani/vagrant-easyrec.git
$ cd vagrant-easyrec
$ vagrant box add chef/ubuntu-14.04-i386
$ vagrant up
````

## Configure your instance

**Note: This is a rush configuration over the detailed instructions in [easyrec's wiki](http://easyrec.sourceforge.net/wiki/index.php/Installation_Guide).**

Access the *easyrec installer* at http://127.0.0.1:9090/easyrec-web/home


### Step 1/4

1. Enter the following values:
  - User Name: easyrecuser
  - Password: password
2. Click *Continue*.

### Step 2/4

1. Click *Ok* on the pop-up.
2. Click *Initialize Database*.

### Step 3/4

1. Check both *REST API* and *DEV mode* checkboxes.
2. Click *Continue*.

### Step 4/4

1. Enter the following values:
  - User Name: admin
  - Password: admin
  - Password Confirmation: admin
2. Click *Create account*

## easyrec manager

After configuring, you can access the easyrec manager at http://127.0.0.1:9090/easyrec-web/easyrec/overview

## Recommendations

Apply easyrec's InnoDB recomendations manually if needed (you may not needed them as this machine is for dev purposes only): http://easyrec.sourceforge.net/wiki/index.php/InnoDB_settings
