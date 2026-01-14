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

-- MX
mx(_a, "mail.lercordeiro.blog.br", 10)

-- SPF Record
txt(_a, "v=spf1 mx ip6:2804:814:801a:1000:face::2 -all")

-- A records
a(_a, "186.233.20.223")
a("mail", "186.233.20.223")

-- AAAA records
aaaa(_a, "2804:814:801a:1000:face::1")
aaaa("mail", "2804:814:801a:1000:face::1")

-- SRV records

-- TLS RPT txt record
txt("_smtp._tls", "v=TLSRPTv1;rua=mailto:lercordeiro@ler.cordeiro.nom.br")

-- Web
srv("_http._tcp", "lercordeiro.blog.br", 80)
srv("_https._tcp", "lercordeiro.blog.br", 443)

-- E-Mail
srv("_smtp._tcp", "mail.lercordeiro.blog.br", 25)

-- CAA recors
caa("lercordeiro.blog.br", "letsencrypt.org", "issue")
caa("lercordeiro.blog.br", "mailto:csirt@ler.cordeiro.nom.br", "iodef")

-- DKIM records
txt("_adsp._domainkey", "dkim=all")
txt("lercordeiroblogbr._domainkey", "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2vJeCdU3oDkn2PsKSDdUDuMHzXhvp6ojRby6XbSEKd8VAVzh+eB+zBDPZOdZ8+83GhrIis5r7Z8aHSPS2DydccL3vmiiuQJL6mgGffmKv0kJsj2nFio3gzyk4TpKX31/5uKVoVmboHwRfeTdz4PKWNiuKMCDsu2bFgqrxz7r/IwYjq45qXML4+HQq+Jq24Q3Ze8vaeplOGIzNOIh3t6HYLNCnTjBTWLDIzvZT0IyNH1FGDyt/V1l7jiKONiWUNliLXalej0e8VHSJ5yp1OIdFkRHHL6M98yU2amUfqp7TFsSnT+zk4zTaGHt9h2+zNa/LXDljxEq6ue4q8fDoYAVTQIDAQAB")

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
tlsa("*._tcp.mail", 3, "60d127956b9ba870cd70d36c62eea5e15a533a14308705ed1021e1868cb7c7c9", 1, 1)


-- EOF --
