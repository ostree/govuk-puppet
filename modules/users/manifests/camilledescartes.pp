# Creates the camilledescartes user
class users::camilledescartes {
  govuk_user { 'camilledescartes':
    fullname => 'Camille Descartes',
    email    => 'camille.descartes@digital.cabinet-office.gov.uk',
    ssh_key  => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2SgILexfUUrkX1NhV4B8o9aVdltptJLSo5sb+9hTarh5XYVvEHSpQA/VWsH0TVYXfdp47oI+jM1dYqplZAgqjkzYKOIUWpZYHFR6nBIZFhF0UV4rg3CX1IC8HHg8+beRhDnMPTMK3C1DylIL/wtA157K75DqxH8wrr76djHuk8RQzhjFhX+oMnc0vSnWSRKbbgWZ8hk1iDbTDvfBlVJ/EVnIIYMGmXzSexNb1HGQxClLRWGQJ6a9XiObFEPpgohJsn1rJnwr5CtsbbM5TgmPq2TOHil2m9C6T36UiJYZN37feADUJvLvqNzg5oinJHV1CIur/ZlTbpo1FpaRW1TyQAscz25s2X51nrbRN6QBg1XEu0PFnYr9opJehVl4n2MWfa0F8WhiqrquuNgxQbIugjJHrw6SUHeASr+sv7NhhVgZVKG9HTeIVzLFDyB9/H62TBxVlv4NTOrCMqCP5S4wNNHDaQ+HwN853uCyQLXBqoqJgYLb+Nyq1otZ78phokfiG6b4Jwb9tDWhzJxJfoajl3ELc5qQHk53sDmi2Ghnwx3P0q3LIiHpoBsvLWVpXt0Op1neahq9uj6j1FcBm9dwx6X3E3ZJZ9R4ikBP2PPpxlHMa5kUHzMcHIQr0Kq/E6uP4iCNEfAcZvO8y9O364XAxm/Gf16oZIW9sPjxRvdk/Tw== camilledescartes@gds5029.local',
  }
}