-- File: dcp.ong.br.lua
-- Zone: dcp.ong.br
-- SOA record is automatically generated
-- Variable _a is replaced with zone name (from filename)
-- _a = "dcp.ong.br"

-- Sao adicionados automaticamente
-- ns(_a, "ns1.luadns.net")
-- ns(_a, "ns2.luadns.net")
-- ns(_a, "ns3.luadns.net")
-- ns(_a, "ns4.luadns.net")

-- MX
mx(_a, "mail.dcp.ong.br", 10)

-- SPF record
txt(_a, "v=spf1 mx ip6:2804:814:801a:1000:face::2 -all")

-- A records
a(_a, "186.233.20.223")
a("mail", "186.233.20.223")

-- AAAA records
aaaa(_a, "2804:814:801a:1000:face::1")
aaaa("mail", "2804:814:801a:1000:face::2")

-- SRV records

-- Web
srv("_http._tcp", "dcp.ong.br", 80)
srv("_https._tcp", "dcp.ong.br", 443)

-- Web
srv("_smtp._tcp", "mail.dcp.ong.br", 25)
srv("_submission._tcp", "mail.dcp.ong.br", 587)
srv("_imap._tcp", "mail.dcp.ong.br", 143)
srv("_sieve._tcp", "mail.dcp.ong.br", 4190)

-- CAA recors
caa("dcp.ong.br", "letsencrypt.org", "issue")
caa("dcp.ong.br", "mailto:csirt@ler.cordeiro.nom.br", "iodef")

-- DKIM records
txt("_adsp._domainkey", "dkim=all")
txt("dcpongbr._domainkey", "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCpAju2N5e9CzyxdL2kwU+tgKvqzmEZlVaAq8xaZ84fHoFLWvXxEFvlfvYUcWveZ2g3Mpjd4Cw6zeufWs43I2wa7KCcw1UeWVmDwN+LI4wF8LZJGSuiBewr3NOKOLD66YQ0ywObitF10PfgDZWNHXdHMiPAW7VEBDOyUMq8xtd4JwIDAQAB")

-- DANE: Tem que mudar a cada novo certificado let's encrypt...
-- Let's Encrypt E5: 3586d4ecf070578cbd27aedce20b964e48bc149faeb9dad72f46b857869172b8
-- Let's Encrypt E6: d016e1fe311948aca64f2de44ce86c9a51ca041df6103bb52a88eb3f761f57d7
-- Let's Encrypt E7: cbbc559b44d524d6a132bdac672744da3407f12aae5d5f722c5f6c7913871c75
-- Let's Encrypt E8: 885bf0572252c6741dc9a52f5044487fef2a93b811cdedfad7624cc283b7cdd5
-- Let's Encrypt E9: f1440a9b76e1e41e53a4cb461329bf6337b419726be513e42e19f1c691c5d4b2
tlsa("*._tcp", 2, "cbbc559b44d524d6a132bdac672744da3407f12aae5d5f722c5f6c7913871c75", 1, 1)
tlsa("*._tcp", 2, "885bf0572252c6741dc9a52f5044487fef2a93b811cdedfad7624cc283b7cdd5", 1, 1)
tlsa("*._tcp", 2, "f1440a9b76e1e41e53a4cb461329bf6337b419726be513e42e19f1c691c5d4b2", 1, 1)
tlsa("*._tcp.mail", 2, "cbbc559b44d524d6a132bdac672744da3407f12aae5d5f722c5f6c7913871c75", 1, 1)
tlsa("*._tcp.mail", 2, "885bf0572252c6741dc9a52f5044487fef2a93b811cdedfad7624cc283b7cdd5", 1, 1)
tlsa("*._tcp.mail", 2, "f1440a9b76e1e41e53a4cb461329bf6337b419726be513e42e19f1c691c5d4b2", 1, 1)

-- NÃO ESQUECER!!!  https://www.huque.com/bin/gen_tlsa -> 3 1 1
-- openssl x509 -in /usr/local/etc/letsencrypt/live/dcp.ong.br/cert.pem -noout -pubkey | openssl pkey -pubin -outform DER | openssl dgst -sha256 
tlsa("*._tcp", 3, "699e2c1bc5d9b3b4c038200c9da56054026b3586d3cc61505cd82ccb154c299a", 1, 1)
tlsa("*._tcp.mail", 3, "699e2c1bc5d9b3b4c038200c9da56054026b3586d3cc61505cd82ccb154c299a", 1, 1)

-- EOF --
