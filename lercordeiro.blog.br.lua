-- File: lercordeiro.blog.br.lua
-- Zone: lercordeiro.blog.br
-- SOA record is automatically generated
-- Variable _a is replaced with zone name (from filename)
-- _a = "lercordeiro.blog.br"

-- Sao adicionados automaticamente
-- ns(_a, "ns1.luadns.net")
-- ns(_a, "ns2.luadns.net")
-- ns(_a, "ns3.luadns.net")
-- ns(_a, "ns4.luadns.net")

-- SPF Record
txt(_a, "v=spf1 -all")

-- A records
a(_a, "186.233.20.223")

-- AAAA records
aaaa(_a, "2804:814:801a:1000:face::1")

-- SRV records

-- Web
srv("_http._tcp", "lercordeiro.blog.br", 80)
srv("_https._tcp", "lercordeiro.blog.br", 443)

-- CAA recors
caa("lercordeiro.blog.br", "letsencrypt.org", "issue")
caa("lercordeiro.blog.br", "mailto:csirt@ler.cordeiro.nom.br", "iodef")

-- DANE: Tem que mudar a cada novo certificado let's encrypt...
-- Let's Encrypt E5: 3586d4ecf070578cbd27aedce20b964e48bc149faeb9dad72f46b857869172b8
-- Let's Encrypt E6: d016e1fe311948aca64f2de44ce86c9a51ca041df6103bb52a88eb3f761f57d7
-- Let's Encrypt E7: cbbc559b44d524d6a132bdac672744da3407f12aae5d5f722c5f6c7913871c75
-- Let's Encrypt E8: 885bf0572252c6741dc9a52f5044487fef2a93b811cdedfad7624cc283b7cdd5
-- Let's Encrypt E9: f1440a9b76e1e41e53a4cb461329bf6337b419726be513e42e19f1c691c5d4b2
tlsa("*._tcp", 2, "cbbc559b44d524d6a132bdac672744da3407f12aae5d5f722c5f6c7913871c75", 1, 1)
tlsa("*._tcp", 2, "885bf0572252c6741dc9a52f5044487fef2a93b811cdedfad7624cc283b7cdd5", 1, 1)
tlsa("*._tcp", 2, "f1440a9b76e1e41e53a4cb461329bf6337b419726be513e42e19f1c691c5d4b2", 1, 1)

-- NÃO ESQUECER!!!  https://www.huque.com/bin/gen_tlsa -> 3 1 1
-- openssl x509 -in /usr/local/etc/letsencrypt/live/lercordeiro.blog.br/cert.pem -noout -pubkey | openssl pkey -pubin -outform DER | openssl dgst -sha256 
tlsa("*._tcp", 3, "b0a165cb91a85934611208f267683ca98167b8114fcc1bbdafa3195d04b719a4", 1, 1)


-- EOF --
