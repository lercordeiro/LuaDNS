-- File: ler.cordeiro.nom.br.lua
-- Zone: ler.cordeiro.nom.br
-- SOA record is automatically generated
-- Variable _a is replaced with zone name (from filename)
-- _a = "ler.cordeiro.nom.br"

-- Sao adicionados automaticamente
-- ns(_a, "ns1.luadns.net")
-- ns(_a, "ns2.luadns.net")
-- ns(_a, "ns3.luadns.net")
-- ns(_a, "ns4.luadns.net")

mx(_a, "mail.ler.cordeiro.nom.br", 10)
txt(_a, "v=spf1 mx ip6:2804:814:801a:1000:face::2 -all")
txt("_atproto", "did=did:plc:36pd5ld233cgdnclqdtxgznz")

-- A records
a(_a, "186.233.20.223")
a("fw", "186.233.20.223")
a("frankenstein", "186.233.20.223")
a("matrix", "186.233.20.223")
a("mm", "186.233.20.223")
a("stats", "186.233.20.223")
a("repo", "186.233.20.223")
a("dcp", "186.233.20.223")
a("mail", "186.233.20.223")

-- AAAA records
aaaa(_a, "2804:814:801a:1000:face::1")
aaaa("fw", "2804:814:8080::2")
aaaa("frankenstein", "2804:814:801a:1000:cafe::1")
aaaa("matrix", "2804:814:801a:1000:face::1")
aaaa("mm", "2804:814:801a:1000:face::1")
aaaa("stats", "2804:814:801a:1000:face::1")
aaaa("repo", "2804:814:801a:1000:face::1")
aaaa("dcp", "2804:814:801a:1000:face::1")
aaaa("mail", "2804:814:801a:1000:face::2")

-- SRV records

-- Web
srv("_https._tcp", "ler.cordeiro.nom.br", 443)
srv("_https._tcp", "repo.ler.cordeiro.nom.br", 443)
srv("_https._tcp", "dcp.ler.cordeiro.nom.br", 443)

-- Matrix/Synapse
srv("_matrix._tcp", "matrix.ler.cordeiro.nom.br", 8448)

-- E-Mail
srv("_smtp._tcp", "mail.ler.cordeiro.nom.br", 25)
srv("_submission._tcp", "mail.ler.cordeiro.nom.br", 587)
srv("_imap._tcp", "mail.ler.cordeiro.nom.br", 143)
srv("_sieve._tcp", "mail.ler.cordeiro.nom.br", 4190)

-- TLS RPT txt record
txt("_smtp._tls", "v=TLSRPTv1;rua=mailto:lercordeiro-d@tlsrpt.report-uri.com")

-- CAA recors
caa("ler.cordeiro.nom.br", "letsencrypt.org", "issue")
caa("ler.cordeiro.nom.br", "mailto:csirt@ler.cordeiro.nom.br", "iodef")

-- DKIM records
txt("_adsp._domainkey", "dkim=all")
txt("lercordeironombr._domainkey", "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2vJeCdU3oDkn2PsKSDdUDuMHzXhvp6ojRby6XbSEKd8VAVzh+eB+zBDPZOdZ8+83GhrIis5r7Z8aHSPS2DydccL3vmiiuQJL6mgGffmKv0kJsj2nFio3gzyk4TpKX31/5uKVoVmboHwRfeTdz4PKWNiuKMCDsu2bFgqrxz7r/IwYjq45qXML4+HQq+Jq24Q3Ze8vaeplOGIzNOIh3t6HYLNCnTjBTWLDIzvZT0IyNH1FGDyt/V1l7jiKONiWUNliLXalej0e8VHSJ5yp1OIdFkRHHL6M98yU2amUfqp7TFsSnT+zk4zTaGHt9h2+zNa/LXDljxEq6ue4q8fDoYAVTQIDAQAB")

-- DMARC records
txt("_dmarc", "v=DMARC1; p=quarantine; rua=mailto:postmaster@ler.cordeiro.nom.br,mailto:lercordeiro-d@dmarc.report-uri.com; ruf=mailto:postmaster@ler.cordeiro.nom.br; fo=0:1:d:s; adkim=s; aspf=s; pct=100; rf=afrf; ri=86400;")

-- SSHFP da Frankenstein
sshfp("frankenstein", 1, "df111b2493692e01b261761083452292ddbd2375", 1)
sshfp("frankenstein", 1, "c1268c3246d3ec3de26a526b24b3f4b758a040294a3ced792474ef7056b56391", 2)
sshfp("frankenstein", 3, "ee398a0c90307974c5aa2505ff65865a76ecb74b", 1)
sshfp("frankenstein", 3, "57bdcb71c1d690fa4255f4084d6c501b03533f247d523e479f8a538433286d6f", 2)
sshfp("frankenstein", 4, "8e311b37288a086e38dea5c05cbe33a2410f4758", 1)
sshfp("frankenstein", 4, "5520ba154fc62cf5ee0d17299b307f493575fbf7d015748cfe63e39cccacf612", 2)

-- DANE: Tem que mudar a cada novo certificado let's encrypt...
-- Let's Encrypt E5: 3586d4ecf070578cbd27aedce20b964e48bc149faeb9dad72f46b857869172b8
-- Let's Encrypt E6: d016e1fe311948aca64f2de44ce86c9a51ca041df6103bb52a88eb3f761f57d7
-- Let's Encrypt E7: cbbc559b44d524d6a132bdac672744da3407f12aae5d5f722c5f6c7913871c75
-- Let's Encrypt E8: 885bf0572252c6741dc9a52f5044487fef2a93b811cdedfad7624cc283b7cdd5
-- Let's Encrypt E9: f1440a9b76e1e41e53a4cb461329bf6337b419726be513e42e19f1c691c5d4b2
tlsa("*._tcp", 2, "cbbc559b44d524d6a132bdac672744da3407f12aae5d5f722c5f6c7913871c75", 1, 1)
tlsa("*._tcp.dcp", 2, "3586d4ecf070578cbd27aedce20b964e48bc149faeb9dad72f46b857869172b8", 1, 1)
tlsa("*._tcp.frankenstein", 2, "d016e1fe311948aca64f2de44ce86c9a51ca041df6103bb52a88eb3f761f57d7", 1, 1)
tlsa("*._tcp.mail", 2, "d016e1fe311948aca64f2de44ce86c9a51ca041df6103bb52a88eb3f761f57d7", 1, 1)
tlsa("*._tcp.matrix", 2, "d016e1fe311948aca64f2de44ce86c9a51ca041df6103bb52a88eb3f761f57d7", 1, 1)
tlsa("*._tcp.mm", 2, "885bf0572252c6741dc9a52f5044487fef2a93b811cdedfad7624cc283b7cdd5", 1, 1)
tlsa("*._tcp.repo", 2, "d016e1fe311948aca64f2de44ce86c9a51ca041df6103bb52a88eb3f761f57d7", 1, 1)
tlsa("*._tcp.stats", 2, "3586d4ecf070578cbd27aedce20b964e48bc149faeb9dad72f46b857869172b8", 1, 1)
tlsa("*._tcp.impressora", 2, "2bbad93ab5c79279ec121507f272cbe0c6647a3aae52e22f388afab426b4adba", 1, 1)

-- NÃO ESQUECER!!!  https://www.huque.com/bin/gen_tlsa -> 3 1 1
-- openssl x509 -in /usr/local/etc/letsencrypt/live/ler.cordeiro.nom.br/cert.pem -noout -pubkey | openssl pkey -pubin -outform DER | openssl dgst -sha256 
tlsa("*._tcp", 3, "820768ee88d1eaa2e21e33681d7cbc8f7db14e7d41325d23a9b1185cacf97e86", 1, 1)
tlsa("*._tcp.dcp", 3, "067a10b4e3c7ef30b25584afeebc4a03230de865c4fd7d395a6702c35b363409", 1, 1)
tlsa("*._tcp.frankenstein", 3, "84457eacbdef2b390f2d05e55f027f0f57e72804528aac54ea343e94d256708f", 1, 1)
tlsa("*._tcp.mail", 3, "60d127956b9ba870cd70d36c62eea5e15a533a14308705ed1021e1868cb7c7c9", 1, 1)
tlsa("*._tcp.matrix", 3, "96156a7e0c03881b94ef9954bc06a11d06a4f4e549bd452e1cbaf732f5a489a2", 1, 1)
tlsa("*._tcp.mm", 3, "cec3260506fd5196989bd3a6fda6e4c6ff16ec4d59aa66c0765ac5f299d5285f", 1, 1)
tlsa("*._tcp.repo", 3, "1e23e5efb32196f949a7cfea858ea2393dfe1341f4671878c83e10ad539ff38a", 1, 1)
tlsa("*._tcp.stats", 3, "31ff18bc6cd4c0028baca6c0bcbee295655a88f5efa3bf13e68fbcef3213f5f5", 1, 1)
tlsa("*._tcp.impressora", 3, "45f4923b5cfe8f76f5596e9b87531c431d67a85a0e94757b9e5e1e82acf116d2", 1, 1)


-- EOF --
