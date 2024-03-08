#/usr/bin/env bash

curl 'https://realestateisrael.org/wp-json/contact-form-7/v1/contact-forms/100/feedback' \
  -X POST \
  -H 'Accept: application/json, */*;q=0.1' \
  -H 'Accept-Language: en-US,en;q=0.5' \
  -H 'Accept-Encoding: gzip, deflate, br' \
  -H 'Referer: https://realestateisrael.org/' \
  -H 'Content-Type: multipart/form-data; boundary=---------------------------375268470320660777982350261995' \
  -H 'Origin: https://realestateisrael.org' -H 'Alt-Used: realestateisrael.org' \
  -H 'Connection: keep-alive' \
  -H 'Cookie: wordpress_test_cookie=WP%20Cookie%20check; PHPSESSID=bp145c3mek8tkbngt6edb76ghk; cp_challenge=3e1a6894-ec6c-4fc7-969f-c17b25450045' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: same-origin' -H \
  'DNT: 1' -H 'Sec-GPC: 1' \
  --data-binary $'-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="_wpcf7"\r\n\r\n100\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="_wpcf7_version"\r\n\r\n5.8\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="_wpcf7_locale"\r\n\r\nen_US\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="_wpcf7_unit_tag"\r\n\r\nwpcf7-f100-p320-o1\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="_wpcf7_container_post"\r\n\r\n320\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="_wpcf7_posted_data_hash"\r\n\r\n\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="token"\r\n\r\n7160b0d555218bbc223a4a57a6de144eb8\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="full-name"\r\n\r\nLynne Berge\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="email"\r\n\r\nlynn.berge@gmail.com\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="phone"\r\n\r\n3459094850\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="message"\r\n\r\nThank you\041\041\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="place[]"\r\n\r\nFlatbush\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="utm_source"\r\n\r\n\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="UTMDevice"\r\n\r\nDesktop\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="UTMCampaing"\r\n\r\nUnknown campaign\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="UTMMedium"\r\n\r\nFeed\r\n-----------------------------375268470320660777982350261995\r\nContent-Disposition: form-data; name="UTMContent"\r\n\r\nLondonevent\r\n-----------------------------375268470320660777982350261995--\r\n'
