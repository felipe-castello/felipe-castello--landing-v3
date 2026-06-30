# Nexus IoT Energy Landing V3

Landing final aprovada para o domínio:

`https://www.nexusiotenergy.com.br`

Headline esperada:

`Reduza custos com energia e evite falhas críticas`

Sistema FCX 5.2:

`https://app.nexusiotenergy.com.br/login`

## Arquivos principais

- `index.html` - página pública final em UTF-8
- `styles.css` - layout dark/navy Nexus
- `script.js` - menu mobile e FAQ
- `assets/nexus/` - logo oficial e mockups aprovados
- `favicon.svg`, `site.webmanifest`, `robots.txt`, `sitemap.xml` - SEO
- `deploy.sh` - cópia para o DocumentRoot de produção

## DocumentRoot

```bash
/var/www/nexusiotenergy
```

## Deploy

```bash
cd /var/www/nexusiotenergy
sudo git pull origin main
sudo nginx -t
sudo systemctl reload nginx
```

Se a pasta de produção não for um clone Git, execute o script a partir deste repositório na VPS:

```bash
chmod +x deploy.sh
sudo ./deploy.sh
sudo nginx -t
sudo systemctl reload nginx
```

## Validação

```bash
grep "Reduza custos com energia" /var/www/nexusiotenergy/index.html
curl -L https://www.nexusiotenergy.com.br/ | grep "Reduza custos com energia"
```

Esta landing não altera backend, autenticação, APIs ou o app FCX 5.2.
