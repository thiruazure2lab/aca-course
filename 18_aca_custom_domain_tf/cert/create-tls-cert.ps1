# Create a self-signed SSL certificate to use with the Ingress
openssl req -new -x509 -nodes -out thiruaws.com.crt -keyout thiruaws.com.key -subj "/CN=thiruaws.com" -addext "subjectAltName=DNS:thiruaws.com"

# Export the SSL certificate
openssl pkcs12 -export -in thiruaws.com.crt -inkey thiruaws.com.key -out thiruaws.com.pfx

# Password for the PFX file: @Aa123456789

cat thiruaws.com.crt > thiruaws.com.pem
cat thiruaws.com.key >> thiruaws.com.pem




openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes `
  -keyout poorclaresarundel.org.key -out poorclaresarundel.org.crt -subj "/CN=thiruaws.com" `
  -addext "subjectAltName=DNS:thiruaws.com,DNS:www.thiruaws.com,IP:8.8.8.8"

# sudo chmod +r poorclaresarundel.org.key
cat poorclaresarundel.org.crt > poorclaresarundel.org.pem
cat poorclaresarundel.org.key >> poorclaresarundel.org.pem