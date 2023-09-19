# Ansible playbook for setting up VMs

Up and running quickly: `./bootstrap.sh`

This playbook will install and configure my typical setup for Kali or Parrot OS with the purpose of penetration testing and other cyber security related tasks.

## Git

The playbook will configure the Git client with values defined [here](roles/dev/vars/main.yml) so update those unless you want to commit with my e-mail :)

If a GPG key is detected, Git will also be configured with this key and set `commit.pgpsign` to `true`.

### Keybase & GitHub

If you want to use your Keybase keys to sign GitHub commits, this [Gist](https://gist.github.com/webframp/75c680930b6b2caba9a1be6ec23477c1) got you covered.

TLDR;

```bash
keybase pgp export --secret | gpg --allow-secret-key --import
gpg --list-secret-keys --keyid-format long
gpg --edit-key <key id>
trust
```
