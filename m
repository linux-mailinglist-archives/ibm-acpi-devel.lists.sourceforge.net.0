Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E994347D8A7
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 Dec 2021 22:21:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n092O-00032Y-Na; Wed, 22 Dec 2021 21:20:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1n092N-00032S-Eo
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Dec 2021 21:20:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=28ZBXxLWHgyLFFlg2u7Gl+EGpTxYlmFXsdFX7Kewa80=; b=Sd7D3kZieqRHu320SzFtCSBQk6
 TXlBK0ibwxh9cPR1uQF/oBKvH69qWPoLPUOm+HJ6jjVRLzcl2RNVANXwBNokfbxydfdKEbBw5DZzX
 z6WKUEAOw6sj52sD/yYgf6TIZNkuGiZo8ZhCltv2LJoBwbNVi3Aro/YDKhcP5i8K4XV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=28ZBXxLWHgyLFFlg2u7Gl+EGpTxYlmFXsdFX7Kewa80=; b=C
 RvIXEniduvfrKPlfewwDj1Mnn0MuXrwgTN0R7rKRNLkl3wAqn4egxj8zdEg5gi1W9vp1/KbwkGDo5
 FAI2899SPMoocxkxdXUT8g53Prh5waY3mkbfQbCEz5KzcLGU7daTrcx5QN5YVqQYQStbFwwZyv9ct
 SqkdSWpRf10oYqUg=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n092M-0001Yv-Na
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Dec 2021 21:20:40 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1640208026;
 bh=aGCj4aiE4nMhMPOvZxmPkbOeYECl8rQcbNMEcl0EXbc=;
 h=From:To:Cc:Subject:Date:From;
 b=RnBBWeyrJ/gnUz0yHX9jlR0geQv63Kx0+04Y7c+L0Xx6RJqDMVg3rWI/83H5HUlLD
 alZG1UojE7+4TR7NwKfduFEw+5e54+7Mm1+0L3fOsp5Y4YH62M5N+ZAQxFWzJzYGS/
 3vQ02nk84ZoOwF6RkvN/mTkzdf0LXRWcDhZqT6gg=
To: linux-acpi@vger.kernel.org, Len Brown <lenb@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 22 Dec 2021 22:20:14 +0100
Message-Id: <20211222212014.66971-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1640208009; l=3639; s=20211113;
 h=from:subject; bh=aGCj4aiE4nMhMPOvZxmPkbOeYECl8rQcbNMEcl0EXbc=;
 b=V4ltAs5HbLZJuv0HJiA8DNFuaS6cA+TfkoXpftD66G0oI3+a1Lfi7nnTjpqoEuQAaZBuCi4Th6V0
 4oQ4R+6YA0Sfey7NObJdrg37MQq3l5anJc0hWKgNIkOC4nW4d9GP
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=9LP6KM4vD/8CwHW7nouRBhWLyQLcK1MkP6aTZbzUlj4=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The EC/ACPI firmware on Lenovo ThinkPads used to report a
 status of "Unknown" when the battery is between the charge start and charge
 stop thresholds. On Windows, it reports "Not Charging" so the quir [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n092M-0001Yv-Na
Subject: [ibm-acpi-devel] [PATCH] ACPI: battery: Add the ThinkPad "Not
 Charging" quirk
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-kernel@vger.kernel.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 Richard Hughes <richard@hughsie.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Bastien Nocera <hadess@hadess.net>, markpearson@lenovo.com,
 Ognjen Galic <smclt30p@gmail.com>, David Zeuthen <davidz@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VGhlIEVDL0FDUEkgZmlybXdhcmUgb24gTGVub3ZvIFRoaW5rUGFkcyB1c2VkIHRvIHJlcG9ydCBh
IHN0YXR1cwpvZiAiVW5rbm93biIgd2hlbiB0aGUgYmF0dGVyeSBpcyBiZXR3ZWVuIHRoZSBjaGFy
Z2Ugc3RhcnQgYW5kCmNoYXJnZSBzdG9wIHRocmVzaG9sZHMuIE9uIFdpbmRvd3MsIGl0IHJlcG9y
dHMgIk5vdCBDaGFyZ2luZyIKc28gdGhlIHF1aXJrIGhhcyBiZWVuIGFkZGVkIHRvIGFsc28gcmVw
b3J0IGNvcnJlY3RseS4KCk5vdyB0aGUgInN0YXR1cyIgYXR0cmlidXRlIHJldHVybnMgIk5vdCBD
aGFyZ2luZyIgd2hlbiB0aGUKYmF0dGVyeSBvbiBUaGlua1BhZHMgaXMgbm90IHBoeXNpY2FseSBj
aGFyZ2luZy4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3Nj
aHVoLm5ldD4KCi0tLQoKVGhpcyBpcyB0aGUgc2FtZSBhczogaHR0cHM6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9wYXRjaC8xMDIwNTM1OS8KClByZXZpb3VzbHkgdGhpcyBwYXRjaCBoYXMgYmVlbiBh
cHBsaWVkWzBdIGJ1dCB0aGVuIHJldmVydGVkIGZyb20gLW5leHQKYmVjYXVzZSBpdCBjYXVzZWQg
YSByZWdyZXNzaW9uIGluIFVQb3dlci4KVGhpcyByZWdyZXNzaW9uIGhvd2V2ZXIgaGFzIGJlZW4g
Zml4ZWQgaW4gVVBvd2VyIGluIGxhdGUgMjAxOFsxXSwKd2l0aCB0aGUgZml4ZWQgdmVyc2lvbiAw
Ljk5LjEwIHJlbGVhc2VkIGluIGVhcmx5IDIwMTkgWzJdLgpTbyBtYXliZSBpdCBpcyBub3cgdGlt
ZSB0byByZWludHJvZHVjZSB0aGlzIGNoYW5nZS4KCk9nbmVuOgoKQXMgdGhlIHBhdGNoIHdhcyBv
cmlnaW5hbGx5IGRldmVsb3BlZCBieSB5b3UsIGNvdWxkIHNlbmQgYQpTaWduZWQtb2ZmLWJ5LXRh
Zywgc28gSSBjYW4gYXR0cmlidXRlIHlvdSBhcyBjby1kZXZlbG9wZXI/CgpPciBtYXliZSB0aGUg
b3JpZ2luYWwgcGF0Y2ggY291bGQganVzdCBiZSByZS1hcHBsaWVkPwoKVGhlIG9yaWdpbmFsIHBh
dGNoIGhhZCB0aGUgZm9sbG93aW5nIHRhZ3MsIHdoaWNoIEknbSBub3Qgc3VyZSB0byBoYW5kbGUK
Zm9yIHRoaXMgY2FzZToKClJldmlld2VkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHkuc2hldmNo
ZW5rb0BnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IE9nbmplbiBHYWxpYyA8c21jbHQzMHBAZ21h
aWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsLmoud3lzb2Nr
aUBpbnRlbC5jb20+CgpBbHNvIENjLWluZyB0aGUgVVBvd2VyIG1haW50YWluZXJzIGZvciB0aGVp
ciBvcGluaW9uOgoKQ2M6IEJhc3RpZW4gTm9jZXJhIDxoYWRlc3NAaGFkZXNzLm5ldD4KQ2M6IERh
dmlkIFpldXRoZW4gPGRhdmlkekByZWRoYXQuY29tPgpDYzogUmljaGFyZCBIdWdoZXMgPHJpY2hh
cmRAaHVnaHNpZS5jb20+CgpbMF0gQXBwbGllZCBhcyA5MWVlYTcwZTVlNWNlMTJlYjFjN2NkOTIy
ZTU2MWZhYjQzZTIwMWJkClsxXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdXBvd2Vy
L3Vwb3dlci8tL21lcmdlX3JlcXVlc3RzLzE5L2NvbW1pdHMKWzJdIGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy91cG93ZXIvdXBvd2VyLy0vY29tbWl0LzIxNTA0OWU3YjgwYzVmMjRjYjM1
Y2QyMjlhNDQ1YzZjZjE5YmQzODEKLS0tCiBkcml2ZXJzL2FjcGkvYmF0dGVyeS5jIHwgMjIgKysr
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvYmF0dGVyeS5jIGIvZHJpdmVycy9hY3BpL2JhdHRlcnku
YwppbmRleCA4YWZhODVkNmViNmEuLmVhZDAxMTRmMjdjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9h
Y3BpL2JhdHRlcnkuYworKysgYi9kcml2ZXJzL2FjcGkvYmF0dGVyeS5jCkBAIC01Myw2ICs1Myw3
IEBAIHN0YXRpYyBpbnQgYmF0dGVyeV9iaXhfYnJva2VuX3BhY2thZ2U7CiBzdGF0aWMgaW50IGJh
dHRlcnlfbm90aWZpY2F0aW9uX2RlbGF5X21zOwogc3RhdGljIGludCBiYXR0ZXJ5X2FjX2lzX2Jy
b2tlbjsKIHN0YXRpYyBpbnQgYmF0dGVyeV9jaGVja19wbWljID0gMTsKK3N0YXRpYyBpbnQgYmF0
dGVyeV9xdWlya19ub3RjaGFyZ2luZzsKIHN0YXRpYyB1bnNpZ25lZCBpbnQgY2FjaGVfdGltZSA9
IDEwMDA7CiBtb2R1bGVfcGFyYW0oY2FjaGVfdGltZSwgdWludCwgMDY0NCk7CiBNT0RVTEVfUEFS
TV9ERVNDKGNhY2hlX3RpbWUsICJjYWNoZSB0aW1lIGluIG1pbGxpc2Vjb25kcyIpOwpAQCAtMjE3
LDYgKzIxOCw4IEBAIHN0YXRpYyBpbnQgYWNwaV9iYXR0ZXJ5X2dldF9wcm9wZXJ0eShzdHJ1Y3Qg
cG93ZXJfc3VwcGx5ICpwc3ksCiAJCQl2YWwtPmludHZhbCA9IFBPV0VSX1NVUFBMWV9TVEFUVVNf
Q0hBUkdJTkc7CiAJCWVsc2UgaWYgKGFjcGlfYmF0dGVyeV9pc19jaGFyZ2VkKGJhdHRlcnkpKQog
CQkJdmFsLT5pbnR2YWwgPSBQT1dFUl9TVVBQTFlfU1RBVFVTX0ZVTEw7CisJCWVsc2UgaWYgKGJh
dHRlcnlfcXVpcmtfbm90Y2hhcmdpbmcpCisJCQl2YWwtPmludHZhbCA9IFBPV0VSX1NVUFBMWV9T
VEFUVVNfTk9UX0NIQVJHSU5HOwogCQllbHNlCiAJCQl2YWwtPmludHZhbCA9IFBPV0VSX1NVUFBM
WV9TVEFUVVNfVU5LTk9XTjsKIAkJYnJlYWs7CkBAIC0xMTExLDYgKzExMTQsMTIgQEAgYmF0dGVy
eV9kb19ub3RfY2hlY2tfcG1pY19xdWlyayhjb25zdCBzdHJ1Y3QgZG1pX3N5c3RlbV9pZCAqZCkK
IAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBfX2luaXQgYmF0dGVyeV9xdWlya19ub3RfY2hh
cmdpbmcoY29uc3Qgc3RydWN0IGRtaV9zeXN0ZW1faWQgKmQpCit7CisJYmF0dGVyeV9xdWlya19u
b3RjaGFyZ2luZyA9IDE7CisJcmV0dXJuIDA7Cit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1p
X3N5c3RlbV9pZCBiYXRfZG1pX3RhYmxlW10gX19pbml0Y29uc3QgPSB7CiAJewogCQkvKiBORUMg
TFo3NTAvTFMgKi8KQEAgLTExNTUsNiArMTE2NCwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRt
aV9zeXN0ZW1faWQgYmF0X2RtaV90YWJsZVtdIF9faW5pdGNvbnN0ID0gewogCQkJRE1JX01BVENI
KERNSV9QUk9EVUNUX1ZFUlNJT04sICJMZW5vdm8gTUlJWCAzMjAtMTBJQ1IiKSwKIAkJfSwKIAl9
LAorCXsKKwkJLyoKKwkJICogT24gTGVub3ZvIFRoaW5rUGFkcyB0aGUgQklPUyBzcGVjaWZpY2F0
aW9uIGRlZmluZXMKKwkJICogYSBzdGF0ZSB3aGVuIHRoZSBiaXRzIGZvciBjaGFyZ2luZyBhbmQg
ZGlzY2hhcmdpbmcKKwkJICogYXJlIGJvdGggc2V0IHRvIDAuIFRoYXQgc3RhdGUgaXMgIk5vdCBD
aGFyZ2luZyIuCisJCSAqLworCQkuY2FsbGJhY2sgPSBiYXR0ZXJ5X3F1aXJrX25vdF9jaGFyZ2lu
ZywKKwkJLmlkZW50ID0gIkxlbm92byBUaGlua1BhZCIsCisJCS5tYXRjaGVzID0geworCQkJRE1J
X01BVENIKERNSV9TWVNfVkVORE9SLCAiTEVOT1ZPIiksCisJCQlETUlfTUFUQ0goRE1JX1BST0RV
Q1RfVkVSU0lPTiwgIlRoaW5rUGFkIiksCisJCX0sCisJfSwKIAl7fSwKIH07CiAKCmJhc2UtY29t
bWl0OiBmYTU1YjdkY2RjNDNjMWFhMWJhMTJiY2E5ZDJkZDQzMThjMmEwZGJmCi0tIAoyLjM0LjEK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFj
cGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1k
ZXZlbAo=
