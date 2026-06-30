# Nexus IoT Energy Landing Page V2 Final

Landing final aprovada para producao do dominio:

`https://www.nexusiotenergy.com.br`

Headline esperada:

`Reduza custos com energia e evite falhas criticas`

Sistema FCX 5.2:

`https://app.nexusiotenergy.com.br/login`

## Arquivos principais

- `index.html` - pagina publica final
- `styles.css` - identidade visual dark/navy Nexus
- `script.js` - menu mobile e accordion
- `assets/nexus/` - logo oficial, dashboard e assets da landing
- `favicon.svg`, `site.webmanifest`, `robots.txt`, `sitemap.xml` - SEO e PWA
- `deploy.sh` - copia a landing para o DocumentRoot final
- `nginx-nexusiotenergy.conf` - exemplo de bloco Nginx

## DocumentRoot final

```bash
/var/www/nexusiotenergy
```

## Atualizacao se o DocumentRoot for um clone Git

```bash
cd /var/www/nexusiotenergy
sudo git pull origin main
sudo nginx -t
sudo systemctl reload nginx
```

## Atualizacao se o DocumentRoot nao for um clone Git

Execute a partir da raiz deste repositorio na VPS:

```bash
chmod +x deploy.sh
sudo ./deploy.sh
sudo nginx -t
sudo systemctl reload nginx
```

O script copia `index.html`, `styles.css`, `script.js`, assets e arquivos SEO para `/var/www/nexusiotenergy`.

## Validacao

```bash
grep "Reduza custos com energia" /var/www/nexusiotenergy/index.html
OLD_HEADLINE="Transforme dados operacionais em economia"
grep "$OLD_HEADLINE real" /var/www/nexusiotenergy/index.html
curl -L https://www.nexusiotenergy.com.br/ | grep "Reduza custos com energia"
```

O primeiro e o terceiro comandos devem retornar a headline final. O segundo nao deve retornar nada.

## Escopo

Esta landing page nao altera backend, autenticacao, APIs ou o app FCX 5.2.
