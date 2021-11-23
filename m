Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D9545B034
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Nov 2021 00:29:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mpfC5-0008Kw-8d; Tue, 23 Nov 2021 23:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mpfC4-0008Kq-9D
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dhgk0HZKaQUhnwnFCxghPd29JezcE8AgZkdeom6X2gY=; b=WZUb3NByrGh5ucE0I/YnYnJTN3
 n5JkD/IgWtt+uJNVAPYZXoxj+4rniqmLsRwbt5BenO9oa71dCm6hrMJY4ANeoK0WfWg3jSAHa1fbP
 //zrMX/vNHeGdQj1KCaA2qvWiybMaHNixuGs9DTOd9WdwEHfQ6nrTahEl/mGbOwzLk/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dhgk0HZKaQUhnwnFCxghPd29JezcE8AgZkdeom6X2gY=; b=hTlkYj366ba2u/QOcE07OCyW6N
 3wcKEFErGFPRVFmPtnJ0WK2o+UJzkPsZ4zMJDwJcF4d/Vq9hGtxhfNYYUGp4Q8OO6nX3no+W4n9dg
 UthHWQOl5yWMH56tvhHqSi0DJhfLkHMIAeN9TEXylUYVsBIHcxg4z9IiVNbhJvZdeRXs=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpfC2-006jPA-9r
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:20 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1637710029;
 bh=pszJ8TGazGuvxexqpltLSJ+3bJo+VwdtuFcNULoFLfw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P/yQm2GufR400nhnNbaNAILFGeznccogxSFIBwXL8dyiEb/rnxraSYiWAK6lr3YFd
 3gmFR2lCXMVV+l9hj5H7tVW0hFw+YfPnGNxo6IpWofovRVsJ/RdOBRIIjmjGn6zpBz
 b448HfK3eJ9nKUvfFT5QG9Ftqnv7wEzt8lvzrgh8=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Nov 2021 00:27:03 +0100
Message-Id: <20211123232704.25394-4-linux@weissschuh.net>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211123232704.25394-1-linux@weissschuh.net>
References: <20211123232704.25394-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1637710019; l=7259; s=20211113;
 h=from:subject; bh=pszJ8TGazGuvxexqpltLSJ+3bJo+VwdtuFcNULoFLfw=;
 b=HntqHGVYa0z8SXeBLoU7xPhQqyep59YGddMAxVfR3x02Iw4UZD/I7l+gYBx56ghAcUjKJXgZT/JO
 Nou86YocBy+iNRbb8MMXAP1FWsiIicHV9ipAtpjGvN/ql1CSu/2Z
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=9LP6KM4vD/8CwHW7nouRBhWLyQLcK1MkP6aTZbzUlj4=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This adds support for the force-discharge charge_behaviour
    through the embedded controller of ThinkPads. Co-developed-by: Thomas Koch
    <linrunner@gmx.net> Signed-off-by: Thomas Koch <linrunner@gmx.net> Co-developed-by:
    Nicolò Piazzalunga <nicolopiazzalunga@gmail.com> Signed-off-by: Nicolò
   Piazzalunga <n [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mpfC2-006jPA-9r
Subject: [ibm-acpi-devel] [PATCH v2 3/4] platform/x86: thinkpad_acpi:
 support force-discharge
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
Cc: linrunner@gmx.net, nicolopiazzalunga@gmail.com, bberg@redhat.com,
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, hadess@hadess.net, markpearson@lenovo.com,
 smclt30p@gmail.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBmb3JjZS1kaXNjaGFyZ2UgY2hhcmdlX2JlaGF2aW91
ciB0aHJvdWdoIHRoZQplbWJlZGRlZCBjb250cm9sbGVyIG9mIFRoaW5rUGFkcy4KCkNvLWRldmVs
b3BlZC1ieTogVGhvbWFzIEtvY2ggPGxpbnJ1bm5lckBnbXgubmV0PgpTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgS29jaCA8bGlucnVubmVyQGdteC5uZXQ+CkNvLWRldmVsb3BlZC1ieTogTmljb2zDsiBQ
aWF6emFsdW5nYSA8bmljb2xvcGlhenphbHVuZ2FAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBO
aWNvbMOyIFBpYXp6YWx1bmdhIDxuaWNvbG9waWF6emFsdW5nYUBnbWFpbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5ldD4KCi0tLQoKVGhp
cyBwYXRjaCBpcyBiYXNlZCBvbiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wbGF0Zm9ybS1kcml2
ZXIteDg2L2MyNTA0NzAwLTA2ZTktZTdkOC04MGY3LWRlOTBiMGI2ZGZiNUBnbWFpbC5jb20vCi0t
LQogZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgMTMxICsrKysrKysrKysr
KysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDEyNyBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2Fj
cGkuYyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwppbmRleCA5YzYzMmRm
NzM0YmIuLmUzNTY3Y2M2ODZmYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhp
bmtwYWRfYWNwaS5jCisrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwpA
QCAtOTMxOSw2ICs5MzE5LDggQEAgc3RhdGljIHN0cnVjdCBpYm1fc3RydWN0IG11dGVfbGVkX2Ry
aXZlcl9kYXRhID0gewogI2RlZmluZSBTRVRfU1RBUlQJIkJDQ1MiCiAjZGVmaW5lIEdFVF9TVE9Q
CSJCQ1NHIgogI2RlZmluZSBTRVRfU1RPUAkiQkNTUyIKKyNkZWZpbmUgR0VUX0RJU0NIQVJHRQki
QkRTRyIKKyNkZWZpbmUgU0VUX0RJU0NIQVJHRQkiQkRTUyIKIAogZW51bSB7CiAJQkFUX0FOWSA9
IDAsCkBAIC05MzM1LDYgKzkzMzcsNyBAQCBlbnVtIHsKIAkvKiBUaGlzIGlzIHVzZWQgaW4gdGhl
IGdldC9zZXQgaGVscGVycyAqLwogCVRIUkVTSE9MRF9TVEFSVCwKIAlUSFJFU0hPTERfU1RPUCwK
KwlGT1JDRV9ESVNDSEFSR0UsCiB9OwogCiBzdHJ1Y3QgdHBhY3BpX2JhdHRlcnlfZGF0YSB7CkBA
IC05MzQyLDYgKzkzNDUsNyBAQCBzdHJ1Y3QgdHBhY3BpX2JhdHRlcnlfZGF0YSB7CiAJaW50IHN0
YXJ0X3N1cHBvcnQ7CiAJaW50IGNoYXJnZV9zdG9wOwogCWludCBzdG9wX3N1cHBvcnQ7CisJdW5z
aWduZWQgaW50IGNoYXJnZV9iZWhhdmlvdXJzOwogfTsKIAogc3RydWN0IHRwYWNwaV9iYXR0ZXJ5
X2RyaXZlcl9kYXRhIHsKQEAgLTkzOTksNiArOTQwMywxMiBAQCBzdGF0aWMgaW50IHRwYWNwaV9i
YXR0ZXJ5X2dldChpbnQgd2hhdCwgaW50IGJhdHRlcnksIGludCAqcmV0KQogCQlpZiAoKnJldCA9
PSAwKQogCQkJKnJldCA9IDEwMDsKIAkJcmV0dXJuIDA7CisJY2FzZSBGT1JDRV9ESVNDSEFSR0U6
CisJCWlmIEFDUElfRkFJTFVSRSh0cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwoR0VUX0RJU0NIQVJH
RSwgcmV0LCBiYXR0ZXJ5KSkKKwkJCXJldHVybiAtRU5PREVWOworCQkvKiBUaGUgZm9yY2UgZGlz
Y2hhcmdlIHN0YXR1cyBpcyBpbiBiaXQgMCAqLworCQkqcmV0ID0gKnJldCAmIDB4MDE7CisJCXJl
dHVybiAwOwogCWRlZmF1bHQ6CiAJCXByX2NyaXQoIndyb25nIHBhcmFtZXRlcjogJWQiLCB3aGF0
KTsKIAkJcmV0dXJuIC1FSU5WQUw7CkBAIC05NDI3LDEyICs5NDM3LDQ5IEBAIHN0YXRpYyBpbnQg
dHBhY3BpX2JhdHRlcnlfc2V0KGludCB3aGF0LCBpbnQgYmF0dGVyeSwgaW50IHZhbHVlKQogCQkJ
cmV0dXJuIC1FTk9ERVY7CiAJCX0KIAkJcmV0dXJuIDA7CisJY2FzZSBGT1JDRV9ESVNDSEFSR0U6
CisJCS8qIEZvcmNlIGRpc2NoYXJnZSBpcyBpbiBiaXQgMCwKKwkJICogYnJlYWsgb24gQUMgYXR0
YWNoIGlzIGluIGJpdCAxICh3b24ndCB3b3JrIG9uIHNvbWUgVGhpbmtQYWRzKSwKKwkJICogYmF0
dGVyeSBJRCBpcyBpbiBiaXRzIDgtOSwgMiBiaXRzLgorCQkgKi8KKwkJaWYgKEFDUElfRkFJTFVS
RSh0cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwoU0VUX0RJU0NIQVJHRSwgJnJldCwgcGFyYW0pKSkg
eworCQkJcHJfZXJyKCJmYWlsZWQgdG8gc2V0IGZvcmNlIGRpc2NoYXJnZSBvbiAlZCIsIGJhdHRl
cnkpOworCQkJcmV0dXJuIC1FTk9ERVY7CisJCX0KKwkJcmV0dXJuIDA7CiAJZGVmYXVsdDoKIAkJ
cHJfY3JpdCgid3JvbmcgcGFyYW1ldGVyOiAlZCIsIHdoYXQpOwogCQlyZXR1cm4gLUVJTlZBTDsK
IAl9CiB9CiAKK3N0YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfc2V0X3ZhbGlkYXRlKGludCB3aGF0
LCBpbnQgYmF0dGVyeSwgaW50IHZhbHVlKQoreworCWludCByZXQsIHY7CisKKwlyZXQgPSB0cGFj
cGlfYmF0dGVyeV9zZXQod2hhdCwgYmF0dGVyeSwgdmFsdWUpOworCWlmIChyZXQgPCAwKQorCQly
ZXR1cm4gcmV0OworCisJcmV0ID0gdHBhY3BpX2JhdHRlcnlfZ2V0KHdoYXQsIGJhdHRlcnksICZ2
KTsKKwlpZiAocmV0IDwgMCkKKwkJcmV0dXJuIHJldDsKKworCWlmICh2ID09IHZhbHVlKQorCQly
ZXR1cm4gMDsKKworCW1zbGVlcCg1MDApOworCisJcmV0ID0gdHBhY3BpX2JhdHRlcnlfZ2V0KHdo
YXQsIGJhdHRlcnksICZ2KTsKKwlpZiAocmV0IDwgMCkKKwkJcmV0dXJuIHJldDsKKworCWlmICh2
ID09IHZhbHVlKQorCQlyZXR1cm4gMDsKKworCXJldHVybiAtRUlPOworfQorCiBzdGF0aWMgaW50
IHRwYWNwaV9iYXR0ZXJ5X3Byb2JlKGludCBiYXR0ZXJ5KQogewogCWludCByZXQgPSAwOwpAQCAt
OTQ0NSw2ICs5NDkyLDggQEAgc3RhdGljIGludCB0cGFjcGlfYmF0dGVyeV9wcm9iZShpbnQgYmF0
dGVyeSkKIAkgKiAyKSBDaGVjayBmb3Igc3VwcG9ydAogCSAqIDMpIEdldCB0aGUgY3VycmVudCBz
dG9wIHRocmVzaG9sZAogCSAqIDQpIENoZWNrIGZvciBzdXBwb3J0CisJICogNSkgR2V0IHRoZSBj
dXJyZW50IGZvcmNlIGRpc2NoYXJnZSBzdGF0dXMKKwkgKiA2KSBDaGVjayBmb3Igc3VwcG9ydAog
CSAqLwogCWlmIChhY3BpX2hhc19tZXRob2QoaGtleV9oYW5kbGUsIEdFVF9TVEFSVCkpIHsKIAkJ
aWYgQUNQSV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChHRVRfU1RBUlQsICZyZXQs
IGJhdHRlcnkpKSB7CkBAIC05NDgxLDEwICs5NTMwLDI1IEBAIHN0YXRpYyBpbnQgdHBhY3BpX2Jh
dHRlcnlfcHJvYmUoaW50IGJhdHRlcnkpCiAJCQlyZXR1cm4gLUVOT0RFVjsKIAkJfQogCX0KLQlw
cl9pbmZvKCJiYXR0ZXJ5ICVkIHJlZ2lzdGVyZWQgKHN0YXJ0ICVkLCBzdG9wICVkKSIsCi0JCQli
YXR0ZXJ5LAotCQkJYmF0dGVyeV9pbmZvLmJhdHRlcmllc1tiYXR0ZXJ5XS5jaGFyZ2Vfc3RhcnQs
Ci0JCQliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9zdG9wKTsKKwlpZiAo
YWNwaV9oYXNfbWV0aG9kKGhrZXlfaGFuZGxlLCBHRVRfRElTQ0hBUkdFKSkgeworCQlpZiAoQUNQ
SV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChHRVRfRElTQ0hBUkdFLCAmcmV0LCBi
YXR0ZXJ5KSkpIHsKKwkJCXByX2VycigiRXJyb3IgcHJvYmluZyBiYXR0ZXJ5IGRpc2NoYXJnZTsg
JWRcbiIsIGJhdHRlcnkpOworCQkJcmV0dXJuIC1FTk9ERVY7CisJCX0KKwkJLyogU3VwcG9ydCBp
cyBtYXJrZWQgaW4gYml0IDggKi8KKwkJaWYgKHJldCAmIEJJVCg4KSkKKwkJCWJhdHRlcnlfaW5m
by5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMgfD0KKwkJCQlCSVQoUE9XRVJf
U1VQUExZX0NIQVJHRV9CRUhBVklPVVJfRk9SQ0VfRElTQ0hBUkdFKTsKKwl9CisKKwliYXR0ZXJ5
X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9iZWhhdmlvdXJzIHw9CisJCUJJVChQT1dF
Ul9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9BVVRPKTsKKworCXByX2luZm8oImJhdHRlcnkgJWQg
cmVnaXN0ZXJlZCAoc3RhcnQgJWQsIHN0b3AgJWQsIGJlaGF2aW91cnM6IDB4JXgpXG4iLAorCQli
YXR0ZXJ5LAorCQliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9zdGFydCwK
KwkJYmF0dGVyeV9pbmZvLmJhdHRlcmllc1tiYXR0ZXJ5XS5jaGFyZ2Vfc3RvcCwKKwkJYmF0dGVy
eV9pbmZvLmJhdHRlcmllc1tiYXR0ZXJ5XS5jaGFyZ2VfYmVoYXZpb3Vycyk7CiAKIAlyZXR1cm4g
MDsKIH0KQEAgLTk2MTksNiArOTY4MywyOCBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfY29udHJv
bF9lbmRfdGhyZXNob2xkX3Nob3coc3RydWN0IGRldmljZSAqZGV2aWNlLAogCXJldHVybiB0cGFj
cGlfYmF0dGVyeV9zaG93KFRIUkVTSE9MRF9TVE9QLCBkZXZpY2UsIGJ1Zik7CiB9CiAKK3N0YXRp
YyBzc2l6ZV90IGNoYXJnZV9iZWhhdmlvdXJfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsCisJCQkJ
ICAgICBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKKwkJCQkgICAgIGNoYXIgKmJ1ZikK
K3sKKwllbnVtIHBvd2VyX3N1cHBseV9jaGFyZ2VfYmVoYXZpb3VyIGFjdGl2ZSA9IFBPV0VSX1NV
UFBMWV9DSEFSR0VfQkVIQVZJT1VSX0FVVE87CisJc3RydWN0IHBvd2VyX3N1cHBseSAqc3VwcGx5
ID0gdG9fcG93ZXJfc3VwcGx5KGRldik7CisJdW5zaWduZWQgaW50IGF2YWlsYWJsZTsKKwlpbnQg
cmV0LCBiYXR0ZXJ5OworCisJYmF0dGVyeSA9IHRwYWNwaV9iYXR0ZXJ5X2dldF9pZChzdXBwbHkt
PmRlc2MtPm5hbWUpOworCWF2YWlsYWJsZSA9IGJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVy
eV0uY2hhcmdlX2JlaGF2aW91cnM7CisKKwlpZiAoYXZhaWxhYmxlICYgQklUKFBPV0VSX1NVUFBM
WV9DSEFSR0VfQkVIQVZJT1VSX0ZPUkNFX0RJU0NIQVJHRSkpIHsKKwkJaWYgKHRwYWNwaV9iYXR0
ZXJ5X2dldChGT1JDRV9ESVNDSEFSR0UsIGJhdHRlcnksICZyZXQpKQorCQkJcmV0dXJuIC1FTk9E
RVY7CisJCWlmIChyZXQpCisJCQlhY3RpdmUgPSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9V
Ul9GT1JDRV9ESVNDSEFSR0U7CisJfQorCisJcmV0dXJuIHBvd2VyX3N1cHBseV9jaGFyZ2VfYmVo
YXZpb3VyX3Nob3coZGV2LCBhdmFpbGFibGUsIGFjdGl2ZSwgYnVmKTsKK30KKwogc3RhdGljIHNz
aXplX3QgY2hhcmdlX2NvbnRyb2xfc3RhcnRfdGhyZXNob2xkX3N0b3JlKHN0cnVjdCBkZXZpY2Ug
KmRldiwKIAkJCQlzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKIAkJCQljb25zdCBjaGFy
ICpidWYsIHNpemVfdCBjb3VudCkKQEAgLTk2MzMsOCArOTcxOSw0NCBAQCBzdGF0aWMgc3NpemVf
dCBjaGFyZ2VfY29udHJvbF9lbmRfdGhyZXNob2xkX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwK
IAlyZXR1cm4gdHBhY3BpX2JhdHRlcnlfc3RvcmUoVEhSRVNIT0xEX1NUT1AsIGRldiwgYnVmLCBj
b3VudCk7CiB9CiAKK3N0YXRpYyBzc2l6ZV90IGNoYXJnZV9iZWhhdmlvdXJfc3RvcmUoc3RydWN0
IGRldmljZSAqZGV2LAorCQkJCSAgICAgIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAor
CQkJCSAgICAgIGNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQoreworCXN0cnVjdCBwb3dl
cl9zdXBwbHkgKnN1cHBseSA9IHRvX3Bvd2VyX3N1cHBseShkZXYpOworCWludCBzZWxlY3RlZCwg
YmF0dGVyeSwgcmV0ID0gMDsKKwl1bnNpZ25lZCBpbnQgYXZhaWxhYmxlOworCisJYmF0dGVyeSA9
IHRwYWNwaV9iYXR0ZXJ5X2dldF9pZChzdXBwbHktPmRlc2MtPm5hbWUpOworCWF2YWlsYWJsZSA9
IGJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnM7CisJc2Vs
ZWN0ZWQgPSBwb3dlcl9zdXBwbHlfY2hhcmdlX2JlaGF2aW91cl9wYXJzZShhdmFpbGFibGUsIGJ1
Zik7CisKKwlpZiAoc2VsZWN0ZWQgPCAwKQorCQlyZXR1cm4gc2VsZWN0ZWQ7CisKKwlzd2l0Y2gg
KHNlbGVjdGVkKSB7CisJY2FzZSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9BVVRPOgor
CQlpZiAoYXZhaWxhYmxlICYgQklUKFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0ZPUkNF
X0RJU0NIQVJHRSkpCisJCQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9zZXRfdmFsaWRhdGUoRk9SQ0Vf
RElTQ0hBUkdFLCBiYXR0ZXJ5LCAwKTsKKwkJaWYgKHJldCA8IDApCisJCQlyZXR1cm4gcmV0Owor
CQlicmVhazsKKwljYXNlIFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0ZPUkNFX0RJU0NI
QVJHRToKKwkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0X3ZhbGlkYXRlKEZPUkNFX0RJU0NIQVJH
RSwgYmF0dGVyeSwgMSk7CisJCWlmIChyZXQgPCAwKQorCQkJcmV0dXJuIHJldDsKKwkJYnJlYWs7
CisJZGVmYXVsdDoKKwkJZGV2X2VycihkZXYsICJVbmV4cGVjdGVkIGNoYXJnZSBiZWhhdmlvdXI6
ICVkXG4iLCBzZWxlY3RlZCk7CisJCXJldHVybiAtRUlOVkFMOworCX0KKworCXJldHVybiBjb3Vu
dDsKK30KKwogc3RhdGljIERFVklDRV9BVFRSX1JXKGNoYXJnZV9jb250cm9sX3N0YXJ0X3RocmVz
aG9sZCk7CiBzdGF0aWMgREVWSUNFX0FUVFJfUlcoY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9s
ZCk7CitzdGF0aWMgREVWSUNFX0FUVFJfUlcoY2hhcmdlX2JlaGF2aW91cik7CiBzdGF0aWMgc3Ry
dWN0IGRldmljZV9hdHRyaWJ1dGUgZGV2X2F0dHJfY2hhcmdlX3N0YXJ0X3RocmVzaG9sZCA9IF9f
QVRUUigKIAljaGFyZ2Vfc3RhcnRfdGhyZXNob2xkLAogCTA2NDQsCkBAIC05NjUzLDYgKzk3NzUs
NyBAQCBzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqdHBhY3BpX2JhdHRlcnlfYXR0cnNbXSA9IHsK
IAkmZGV2X2F0dHJfY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZC5hdHRyLAogCSZkZXZfYXR0
cl9jaGFyZ2Vfc3RhcnRfdGhyZXNob2xkLmF0dHIsCiAJJmRldl9hdHRyX2NoYXJnZV9zdG9wX3Ro
cmVzaG9sZC5hdHRyLAorCSZkZXZfYXR0cl9jaGFyZ2VfYmVoYXZpb3VyLmF0dHIsCiAJTlVMTCwK
IH07CiAKLS0gCjIuMzQuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL2libS1hY3BpLWRldmVsCg==
