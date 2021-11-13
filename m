Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFF544F290
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 13 Nov 2021 11:43:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mlqUl-0003B2-Hy; Sat, 13 Nov 2021 10:42:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mlqUh-0003AL-DX
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n9CiG1ACHQI2SndGp/KC4SObGJ05sA7HZOKaj6OOfnc=; b=DolOaz43BtPIRtT9FhhDgRn/fb
 u0xdS4BxhbOGvP8Rhu7bJy/q0rr3i3Kd4tv2ts84b/Xar8IY3hZy3YGCGQwTuu5OH8B/hu2YIc0c4
 FFdDurW+Eb++SY7LDIVDWvEh+EId7xrws6C6zc40PvgXdKywZsNiJpwctSQbZkuZXjN0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n9CiG1ACHQI2SndGp/KC4SObGJ05sA7HZOKaj6OOfnc=; b=X+vZN8GL+6qIReeChI0qAEwXym
 MgRjvqSwa+nW0ClNXxsvwdR80PqjWM7wA9rpO0Or0ij6ivAT87jcnHCoFOdXdQ0dsK/taMZ3cGCmW
 VcWP6vJASFeVwtTCSff+LL1PxruQ1CoZZNTJdjMKTL2HyvEt/bytCtgW9jMYOUT/qNog=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlqUg-00BeWg-2H
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:48 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1636800156;
 bh=lvDFqz8JQafjLCe0upSmVTphFfWrJ150vakiSDVAzYk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bwPKh/IdeXu+QB2HHcfkpAfzWuPP+y1Ib58MrL8VbVeNvup4p64u26JA/B4JNs+Kf
 TXe4Y7Hy5hAFxRaBtX/JN4M9G5HOEmGc0LmdNMFDbwWy73sFfRPhoQfo0KGLmC3fIt
 PV10+saopaxxtLr8Ok356oXV/tVE+f2kvENgYi4E=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sat, 13 Nov 2021 11:42:25 +0100
Message-Id: <20211113104225.141333-5-linux@weissschuh.net>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211113104225.141333-1-linux@weissschuh.net>
References: <20211113104225.141333-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This adds support for the inhibit-charge charge_behaviour
   through the embedded controller of ThinkPads. Signed-off-by: Thomas Weißschuh
    <linux@weissschuh.net> --- 
 
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
X-Headers-End: 1mlqUg-00BeWg-2H
Subject: [ibm-acpi-devel] [PATCH 4/4] platform/x86: thinkpad_acpi: support
 inhibit-charge
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

VGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBpbmhpYml0LWNoYXJnZSBjaGFyZ2VfYmVoYXZpb3Vy
IHRocm91Z2ggdGhlCmVtYmVkZGVkIGNvbnRyb2xsZXIgb2YgVGhpbmtQYWRzLgoKU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFdlacOfc2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0PgoKLS0tCgpUaGlz
IHBhdGNoIGlzIGJhc2VkIG9uIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BsYXRmb3JtLWRyaXZl
ci14ODYvZDI4MDg5MzAtNTg0MC02ZmZiLTNhNTktZDIzNWNkYjFmZTE2QGdtYWlsLmNvbS8KLS0t
CiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgfCA1NSArKysrKysrKysrKysr
KysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKaW5kZXggZThjOThlOWFm
ZjcxLi43Y2Q2NDc1MjQwYjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5r
cGFkX2FjcGkuYworKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKQEAg
LTkzMjEsNiArOTMyMSw4IEBAIHN0YXRpYyBzdHJ1Y3QgaWJtX3N0cnVjdCBtdXRlX2xlZF9kcml2
ZXJfZGF0YSA9IHsKICNkZWZpbmUgU0VUX1NUT1AJIkJDU1MiCiAjZGVmaW5lIEdFVF9ESVNDSEFS
R0UJIkJEU0ciCiAjZGVmaW5lIFNFVF9ESVNDSEFSR0UJIkJEU1MiCisjZGVmaW5lIEdFVF9JTkhJ
QklUCSJQU1NHIgorI2RlZmluZSBTRVRfSU5ISUJJVAkiQklDUyIKIAogZW51bSB7CiAJQkFUX0FO
WSA9IDAsCkBAIC05MzM4LDYgKzkzNDAsNyBAQCBlbnVtIHsKIAlUSFJFU0hPTERfU1RBUlQsCiAJ
VEhSRVNIT0xEX1NUT1AsCiAJRk9SQ0VfRElTQ0hBUkdFLAorCUlOSElCSVRfQ0hBUkdFLAogfTsK
IAogc3RydWN0IHRwYWNwaV9iYXR0ZXJ5X2RhdGEgewpAQCAtOTQwOSw2ICs5NDEyLDEzIEBAIHN0
YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfZ2V0KGludCB3aGF0LCBpbnQgYmF0dGVyeSwgaW50ICpy
ZXQpCiAJCS8qIFRoZSBmb3JjZSBkaXNjaGFyZ2Ugc3RhdHVzIGlzIGluIGJpdCAwICovCiAJCSpy
ZXQgPSAqcmV0ICYgMHgwMTsKIAkJcmV0dXJuIDA7CisJY2FzZSBJTkhJQklUX0NIQVJHRToKKwkJ
LyogVGhpcyBpcyBhY3R1YWxseSByZWFkaW5nIHBlYWsgc2hpZnQgc3RhdGUsIGxpa2UgdHBhY3Bp
LWJhdCBkb2VzICovCisJCWlmIEFDUElfRkFJTFVSRSh0cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwo
R0VUX0lOSElCSVQsIHJldCwgYmF0dGVyeSkpCisJCQlyZXR1cm4gLUVOT0RFVjsKKwkJLyogVGhl
IGluaGliaXQgY2hhcmdlIHN0YXR1cyBpcyBpbiBiaXQgMCAqLworCQkqcmV0ID0gKnJldCAmIDB4
MDE7CisJCXJldHVybiAwOwogCWRlZmF1bHQ6CiAJCXByX2NyaXQoIndyb25nIHBhcmFtZXRlcjog
JWQiLCB3aGF0KTsKIAkJcmV0dXJuIC1FSU5WQUw7CkBAIC05NDQ3LDYgKzk0NTcsMjIgQEAgc3Rh
dGljIGludCB0cGFjcGlfYmF0dGVyeV9zZXQoaW50IHdoYXQsIGludCBiYXR0ZXJ5LCBpbnQgdmFs
dWUpCiAJCQlyZXR1cm4gLUVOT0RFVjsKIAkJfQogCQlyZXR1cm4gMDsKKwljYXNlIElOSElCSVRf
Q0hBUkdFOgorCQkvKiBXaGVuIHNldHRpbmcgaW5oaWJpdCBjaGFyZ2UsIHdlIHNldCBhIGRlZmF1
bHQgdmFsdWUgb2YKKwkJICogYWx3YXlzIGJyZWFraW5nIG9uIEFDIGRldGFjaCBhbmQgdGhlIGVm
ZmVjdGl2ZSB0aW1lIGlzIHNldCB0bworCQkgKiBiZSBwZXJtYW5lbnQuCisJCSAqIFRoZSBiYXR0
ZXJ5IElEIGlzIGluIGJpdHMgNC01LCAyIGJpdHMsCisJCSAqIHRoZSBlZmZlY3RpdmUgdGltZSBp
cyBpbiBiaXRzIDgtMjMsIDIgYnl0ZXMuCisJCSAqIEEgdGltZSBvZiBGRkZGIGluZGljYXRlcyBm
b3JldmVyLgorCQkgKi8KKwkJcGFyYW0gPSB2YWx1ZTsKKwkJcGFyYW0gfD0gYmF0dGVyeSA8PCA0
OworCQlwYXJhbSB8PSAweEZGRkYgPDwgODsKKwkJaWYgKEFDUElfRkFJTFVSRSh0cGFjcGlfYmF0
dGVyeV9hY3BpX2V2YWwoU0VUX0lOSElCSVQsICZyZXQsIHBhcmFtKSkpIHsKKwkJCXByX2Vycigi
ZmFpbGVkIHRvIHNldCBpbmhpYml0IGNoYXJnZSBvbiAlZCIsIGJhdHRlcnkpOworCQkJcmV0dXJu
IC1FTk9ERVY7CisJCX0KKwkJcmV0dXJuIDA7CiAJZGVmYXVsdDoKIAkJcHJfY3JpdCgid3Jvbmcg
cGFyYW1ldGVyOiAlZCIsIHdoYXQpOwogCQlyZXR1cm4gLUVJTlZBTDsKQEAgLTk0NjcsNiArOTQ5
Myw4IEBAIHN0YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfcHJvYmUoaW50IGJhdHRlcnkpCiAJICog
NCkgQ2hlY2sgZm9yIHN1cHBvcnQKIAkgKiA1KSBHZXQgdGhlIGN1cnJlbnQgZm9yY2UgZGlzY2hh
cmdlIHN0YXR1cwogCSAqIDYpIENoZWNrIGZvciBzdXBwb3J0CisJICogNykgR2V0IHRoZSBjdXJy
ZW50IGluaGliaXQgY2hhcmdlIHN0YXR1cworCSAqIDgpIENoZWNrIGZvciBzdXBwb3J0CiAJICov
CiAJaWYgKGFjcGlfaGFzX21ldGhvZChoa2V5X2hhbmRsZSwgR0VUX1NUQVJUKSkgewogCQlpZiBB
Q1BJX0ZBSUxVUkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKEdFVF9TVEFSVCwgJnJldCwgYmF0
dGVyeSkpIHsKQEAgLTk1MTMsNiArOTU0MSwxNiBAQCBzdGF0aWMgaW50IHRwYWNwaV9iYXR0ZXJ5
X3Byb2JlKGludCBiYXR0ZXJ5KQogCQkJYmF0dGVyeV9pbmZvLmJhdHRlcmllc1tiYXR0ZXJ5XS5j
aGFyZ2VfYmVoYXZpb3VycyB8PQogCQkJCUJJVChQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9V
Ul9GT1JDRV9ESVNDSEFSR0UpOwogCX0KKwlpZiAoYWNwaV9oYXNfbWV0aG9kKGhrZXlfaGFuZGxl
LCBHRVRfSU5ISUJJVCkpIHsKKwkJaWYgKEFDUElfRkFJTFVSRSh0cGFjcGlfYmF0dGVyeV9hY3Bp
X2V2YWwoR0VUX0lOSElCSVQsICZyZXQsIGJhdHRlcnkpKSkgeworCQkJcHJfZXJyKCJFcnJvciBw
cm9iaW5nIGJhdHRlcnkgaW5oaWJpdCBjaGFyZ2U7ICVkXG4iLCBiYXR0ZXJ5KTsKKwkJCXJldHVy
biAtRU5PREVWOworCQl9CisJCS8qIFN1cHBvcnQgaXMgbWFya2VkIGluIGJpdCA1ICovCisJCWlm
IChyZXQgJiBCSVQoNSkpCisJCQliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJn
ZV9iZWhhdmlvdXJzIHw9CisJCQkJQklUKFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0lO
SElCSVRfQ0hBUkdFKTsKKwl9CiAKIAliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNo
YXJnZV9iZWhhdmlvdXJzIHw9CiAJCUJJVChQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9B
VVRPKTsKQEAgLTk2NzMsNiArOTcxMSwxMSBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfYmVoYXZp
b3VyX3Nob3coc3RydWN0IGRldmljZSAqZGV2LAogCQkJcmV0dXJuIC1FTk9ERVY7CiAJCWlmIChy
ZXQpCiAJCQlhY3RpdmUgPSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVND
SEFSR0U7CisJfSBlbHNlIGlmIChhdmFpbGFibGUgJiBCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9C
RUhBVklPVVJfSU5ISUJJVF9DSEFSR0UpKSB7CisJCWlmICh0cGFjcGlfYmF0dGVyeV9nZXQoSU5I
SUJJVF9DSEFSR0UsIGJhdHRlcnksICZyZXQpKQorCQkJcmV0dXJuIC1FTk9ERVY7CisJCWlmIChy
ZXQpCisJCQlhY3RpdmUgPSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9JTkhJQklUX0NI
QVJHRTsKIAl9CiAKIAlyZXR1cm4gcG93ZXJfc3VwcGx5X2NoYXJnZV9iZWhhdmlvdXJfc2hvdyhk
ZXYsIGF2YWlsYWJsZSwgYWN0aXZlLCBidWYpOwpAQCAtOTcxMCwxMiArOTc1MywyMCBAQCBzdGF0
aWMgc3NpemVfdCBjaGFyZ2VfYmVoYXZpb3VyX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwKIAlz
d2l0Y2ggKHNlbGVjdGVkKSB7CiAJY2FzZSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9B
VVRPOgogCQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9zZXQoRk9SQ0VfRElTQ0hBUkdFLCBiYXR0ZXJ5
LCAwKTsKLQkJaWYgKHJldCA8IDApCisJCXJldCA9IHRwYWNwaV9iYXR0ZXJ5X3NldChJTkhJQklU
X0NIQVJHRSwgYmF0dGVyeSwgMCkgfHwgcmV0OworCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsK
IAkJYnJlYWs7CiAJY2FzZSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVND
SEFSR0U6CiAJCXJldCA9IHRwYWNwaV9iYXR0ZXJ5X3NldChGT1JDRV9ESVNDSEFSR0UsIGJhdHRl
cnksIDEpOwotCQlpZiAocmV0IDwgMCkKKwkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0KElOSElC
SVRfQ0hBUkdFLCBiYXR0ZXJ5LCAwKSB8fCByZXQ7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0
OworCQlicmVhazsKKwljYXNlIFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0lOSElCSVRf
Q0hBUkdFOgorCQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9zZXQoRk9SQ0VfRElTQ0hBUkdFLCBiYXR0
ZXJ5LCAwKTsKKwkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0KElOSElCSVRfQ0hBUkdFLCBiYXR0
ZXJ5LCAxKSB8fCByZXQ7CisJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwogCQlicmVhazsKIAlk
ZWZhdWx0OgotLSAKMi4zMy4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
