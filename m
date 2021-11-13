Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B917644F291
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 13 Nov 2021 11:43:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mlqUl-0003fT-2A; Sat, 13 Nov 2021 10:42:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mlqUi-0003fC-0W
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aZRPQD8pDa0A53Z/hn8yx0shN5aSvnOJ16HGR+ylSGY=; b=MTJX2CPagsczvplM/bBVlqFMmi
 9Blys6rMr523DfXYAuO5q1Hf510oioXIysayl/GV+gjPyVPHCkqDUpUht7Hkis/AfxJmTeLZyiHhI
 FU/y0mu8FBP0r078jyh6zye9kOFubLpXML4rzdEbgO43cEEt6I1zD5k736lyrVPZPxF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aZRPQD8pDa0A53Z/hn8yx0shN5aSvnOJ16HGR+ylSGY=; b=GWogcQ3R+Uz+TuhJU5Nx1mJCVK
 YaIXue7agN5AO3nDGdof15v2SM+9AwD0+LC/FQsiQ6DturZB3Tn7LG8MLvIckkHXJLIpTnlghk9cl
 NZQQMeYKEzA9TmUx/waHC9sGrs/MQgr3DomXJLJuohfg/zI6GcFDs5XuXR9MqVZ35NG4=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlqUg-00BeWi-2I
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:47 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1636800156;
 bh=88F+Nb2+6/LAaesDdFWd9B0WsQsw6AF3SgA9AxEuij8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LTGy5MteEq7t/nrju8mHqEYnFrSKi6x3CYJdZwZI2V5rraeiDk4L/YKOb2ndyFzpL
 0AWY8wStDTPwntHQXyn9NihSD76SZVGYX8AgomUpuEuaaZNw5KmjaFaAPBJjJRoAjI
 wlOqYzctxkxZbT0YqXdHt9/OCVbOqFpuUpHEM4Qk=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sat, 13 Nov 2021 11:42:24 +0100
Message-Id: <20211113104225.141333-4-linux@weissschuh.net>
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
 
 Content preview:  This adds support for the force-discharge charge_behaviour
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
X-Headers-End: 1mlqUg-00BeWi-2I
Subject: [ibm-acpi-devel] [PATCH 3/4] platform/x86: thinkpad_acpi: support
 force-discharge
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
ciB0aHJvdWdoIHRoZQplbWJlZGRlZCBjb250cm9sbGVyIG9mIFRoaW5rUGFkcy4KClNpZ25lZC1v
ZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5ldD4KCi0tLQoKVGhp
cyBwYXRjaCBpcyBiYXNlZCBvbiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wbGF0Zm9ybS1kcml2
ZXIteDg2L2MyNTA0NzAwLTA2ZTktZTdkOC04MGY3LWRlOTBiMGI2ZGZiNUBnbWFpbC5jb20vCi0t
LQogZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgMTAzICsrKysrKysrKysr
KysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDk5IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNw
aS5jIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCmluZGV4IDljNjMyZGY3
MzRiYi4uZThjOThlOWFmZjcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlu
a3BhZF9hY3BpLmMKKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCkBA
IC05MzE5LDYgKzkzMTksOCBAQCBzdGF0aWMgc3RydWN0IGlibV9zdHJ1Y3QgbXV0ZV9sZWRfZHJp
dmVyX2RhdGEgPSB7CiAjZGVmaW5lIFNFVF9TVEFSVAkiQkNDUyIKICNkZWZpbmUgR0VUX1NUT1AJ
IkJDU0ciCiAjZGVmaW5lIFNFVF9TVE9QCSJCQ1NTIgorI2RlZmluZSBHRVRfRElTQ0hBUkdFCSJC
RFNHIgorI2RlZmluZSBTRVRfRElTQ0hBUkdFCSJCRFNTIgogCiBlbnVtIHsKIAlCQVRfQU5ZID0g
MCwKQEAgLTkzMzUsNiArOTMzNyw3IEBAIGVudW0gewogCS8qIFRoaXMgaXMgdXNlZCBpbiB0aGUg
Z2V0L3NldCBoZWxwZXJzICovCiAJVEhSRVNIT0xEX1NUQVJULAogCVRIUkVTSE9MRF9TVE9QLAor
CUZPUkNFX0RJU0NIQVJHRSwKIH07CiAKIHN0cnVjdCB0cGFjcGlfYmF0dGVyeV9kYXRhIHsKQEAg
LTkzNDIsNiArOTM0NSw3IEBAIHN0cnVjdCB0cGFjcGlfYmF0dGVyeV9kYXRhIHsKIAlpbnQgc3Rh
cnRfc3VwcG9ydDsKIAlpbnQgY2hhcmdlX3N0b3A7CiAJaW50IHN0b3Bfc3VwcG9ydDsKKwl1bnNp
Z25lZCBpbnQgY2hhcmdlX2JlaGF2aW91cnM7CiB9OwogCiBzdHJ1Y3QgdHBhY3BpX2JhdHRlcnlf
ZHJpdmVyX2RhdGEgewpAQCAtOTM5OSw2ICs5NDAzLDEyIEBAIHN0YXRpYyBpbnQgdHBhY3BpX2Jh
dHRlcnlfZ2V0KGludCB3aGF0LCBpbnQgYmF0dGVyeSwgaW50ICpyZXQpCiAJCWlmICgqcmV0ID09
IDApCiAJCQkqcmV0ID0gMTAwOwogCQlyZXR1cm4gMDsKKwljYXNlIEZPUkNFX0RJU0NIQVJHRToK
KwkJaWYgQUNQSV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChHRVRfRElTQ0hBUkdF
LCByZXQsIGJhdHRlcnkpKQorCQkJcmV0dXJuIC1FTk9ERVY7CisJCS8qIFRoZSBmb3JjZSBkaXNj
aGFyZ2Ugc3RhdHVzIGlzIGluIGJpdCAwICovCisJCSpyZXQgPSAqcmV0ICYgMHgwMTsKKwkJcmV0
dXJuIDA7CiAJZGVmYXVsdDoKIAkJcHJfY3JpdCgid3JvbmcgcGFyYW1ldGVyOiAlZCIsIHdoYXQp
OwogCQlyZXR1cm4gLUVJTlZBTDsKQEAgLTk0MjcsNiArOTQzNywxNiBAQCBzdGF0aWMgaW50IHRw
YWNwaV9iYXR0ZXJ5X3NldChpbnQgd2hhdCwgaW50IGJhdHRlcnksIGludCB2YWx1ZSkKIAkJCXJl
dHVybiAtRU5PREVWOwogCQl9CiAJCXJldHVybiAwOworCWNhc2UgRk9SQ0VfRElTQ0hBUkdFOgor
CQkvKiBGb3JjZSBkaXNjaGFyZ2UgaXMgaW4gYml0IDAsCisJCSAqIGJyZWFrIG9uIEFDIGF0dGFj
aCBpcyBpbiBiaXQgMSAod29uJ3Qgd29yayBvbiBzb21lIFRoaW5rUGFkcyksCisJCSAqIGJhdHRl
cnkgSUQgaXMgaW4gYml0cyA4LTksIDIgYml0cy4KKwkJICovCisJCWlmIChBQ1BJX0ZBSUxVUkUo
dHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKFNFVF9ESVNDSEFSR0UsICZyZXQsIHBhcmFtKSkpIHsK
KwkJCXByX2VycigiZmFpbGVkIHRvIHNldCBmb3JjZSBkaXNjaHJhZ2Ugb24gJWQiLCBiYXR0ZXJ5
KTsKKwkJCXJldHVybiAtRU5PREVWOworCQl9CisJCXJldHVybiAwOwogCWRlZmF1bHQ6CiAJCXBy
X2NyaXQoIndyb25nIHBhcmFtZXRlcjogJWQiLCB3aGF0KTsKIAkJcmV0dXJuIC1FSU5WQUw7CkBA
IC05NDQ1LDYgKzk0NjUsOCBAQCBzdGF0aWMgaW50IHRwYWNwaV9iYXR0ZXJ5X3Byb2JlKGludCBi
YXR0ZXJ5KQogCSAqIDIpIENoZWNrIGZvciBzdXBwb3J0CiAJICogMykgR2V0IHRoZSBjdXJyZW50
IHN0b3AgdGhyZXNob2xkCiAJICogNCkgQ2hlY2sgZm9yIHN1cHBvcnQKKwkgKiA1KSBHZXQgdGhl
IGN1cnJlbnQgZm9yY2UgZGlzY2hhcmdlIHN0YXR1cworCSAqIDYpIENoZWNrIGZvciBzdXBwb3J0
CiAJICovCiAJaWYgKGFjcGlfaGFzX21ldGhvZChoa2V5X2hhbmRsZSwgR0VUX1NUQVJUKSkgewog
CQlpZiBBQ1BJX0ZBSUxVUkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKEdFVF9TVEFSVCwgJnJl
dCwgYmF0dGVyeSkpIHsKQEAgLTk0ODEsMTAgKzk1MDMsMjUgQEAgc3RhdGljIGludCB0cGFjcGlf
YmF0dGVyeV9wcm9iZShpbnQgYmF0dGVyeSkKIAkJCXJldHVybiAtRU5PREVWOwogCQl9CiAJfQot
CXByX2luZm8oImJhdHRlcnkgJWQgcmVnaXN0ZXJlZCAoc3RhcnQgJWQsIHN0b3AgJWQpIiwKLQkJ
CWJhdHRlcnksCi0JCQliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9zdGFy
dCwKLQkJCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX3N0b3ApOworCWlm
IChhY3BpX2hhc19tZXRob2QoaGtleV9oYW5kbGUsIEdFVF9ESVNDSEFSR0UpKSB7CisJCWlmIChB
Q1BJX0ZBSUxVUkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKEdFVF9ESVNDSEFSR0UsICZyZXQs
IGJhdHRlcnkpKSkgeworCQkJcHJfZXJyKCJFcnJvciBwcm9iaW5nIGJhdHRlcnkgZGlzY2hhcmdl
OyAlZFxuIiwgYmF0dGVyeSk7CisJCQlyZXR1cm4gLUVOT0RFVjsKKwkJfQorCQkvKiBTdXBwb3J0
IGlzIG1hcmtlZCBpbiBiaXQgOCAqLworCQlpZiAocmV0ICYgQklUKDgpKQorCQkJYmF0dGVyeV9p
bmZvLmJhdHRlcmllc1tiYXR0ZXJ5XS5jaGFyZ2VfYmVoYXZpb3VycyB8PQorCQkJCUJJVChQT1dF
Ul9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVNDSEFSR0UpOworCX0KKworCWJhdHRl
cnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMgfD0KKwkJQklUKFBP
V0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0FVVE8pOworCisJcHJfaW5mbygiYmF0dGVyeSAl
ZCByZWdpc3RlcmVkIChzdGFydCAlZCwgc3RvcCAlZCwgYmVoYXZpb3VyczogMHgleClcbiIsCisJ
CWJhdHRlcnksCisJCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX3N0YXJ0
LAorCQliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9zdG9wLAorCQliYXR0
ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9iZWhhdmlvdXJzKTsKIAogCXJldHVy
biAwOwogfQpAQCAtOTYxOSw2ICs5NjU2LDI4IEBAIHN0YXRpYyBzc2l6ZV90IGNoYXJnZV9jb250
cm9sX2VuZF90aHJlc2hvbGRfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXZpY2UsCiAJcmV0dXJuIHRw
YWNwaV9iYXR0ZXJ5X3Nob3coVEhSRVNIT0xEX1NUT1AsIGRldmljZSwgYnVmKTsKIH0KIAorc3Rh
dGljIHNzaXplX3QgY2hhcmdlX2JlaGF2aW91cl9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwKKwkJ
CQkgICAgIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAorCQkJCSAgICAgY2hhciAqYnVm
KQoreworCWVudW0gcG93ZXJfc3VwcGx5X2NoYXJnZV9iZWhhdmlvdXIgYWN0aXZlID0gUE9XRVJf
U1VQUExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTzsKKwlzdHJ1Y3QgcG93ZXJfc3VwcGx5ICpzdXBw
bHkgPSB0b19wb3dlcl9zdXBwbHkoZGV2KTsKKwl1bnNpZ25lZCBpbnQgYXZhaWxhYmxlOworCWlu
dCByZXQsIGJhdHRlcnk7CisKKwliYXR0ZXJ5ID0gdHBhY3BpX2JhdHRlcnlfZ2V0X2lkKHN1cHBs
eS0+ZGVzYy0+bmFtZSk7CisJYXZhaWxhYmxlID0gYmF0dGVyeV9pbmZvLmJhdHRlcmllc1tiYXR0
ZXJ5XS5jaGFyZ2VfYmVoYXZpb3VyczsKKworCWlmIChhdmFpbGFibGUgJiBCSVQoUE9XRVJfU1VQ
UExZX0NIQVJHRV9CRUhBVklPVVJfRk9SQ0VfRElTQ0hBUkdFKSkgeworCQlpZiAodHBhY3BpX2Jh
dHRlcnlfZ2V0KEZPUkNFX0RJU0NIQVJHRSwgYmF0dGVyeSwgJnJldCkpCisJCQlyZXR1cm4gLUVO
T0RFVjsKKwkJaWYgKHJldCkKKwkJCWFjdGl2ZSA9IFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJ
T1VSX0ZPUkNFX0RJU0NIQVJHRTsKKwl9CisKKwlyZXR1cm4gcG93ZXJfc3VwcGx5X2NoYXJnZV9i
ZWhhdmlvdXJfc2hvdyhkZXYsIGF2YWlsYWJsZSwgYWN0aXZlLCBidWYpOworfQorCiBzdGF0aWMg
c3NpemVfdCBjaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGRfc3RvcmUoc3RydWN0IGRldmlj
ZSAqZGV2LAogCQkJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAogCQkJCWNvbnN0IGNo
YXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQpAQCAtOTYzMyw4ICs5NjkyLDQzIEBAIHN0YXRpYyBzc2l6
ZV90IGNoYXJnZV9jb250cm9sX2VuZF90aHJlc2hvbGRfc3RvcmUoc3RydWN0IGRldmljZSAqZGV2
LAogCXJldHVybiB0cGFjcGlfYmF0dGVyeV9zdG9yZShUSFJFU0hPTERfU1RPUCwgZGV2LCBidWYs
IGNvdW50KTsKIH0KIAorc3RhdGljIHNzaXplX3QgY2hhcmdlX2JlaGF2aW91cl9zdG9yZShzdHJ1
Y3QgZGV2aWNlICpkZXYsCisJCQkJICAgICAgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIs
CisJCQkJICAgICAgY29uc3QgY2hhciAqYnVmLCBzaXplX3QgY291bnQpCit7CisJc3RydWN0IHBv
d2VyX3N1cHBseSAqc3VwcGx5ID0gdG9fcG93ZXJfc3VwcGx5KGRldik7CisJaW50IHNlbGVjdGVk
LCBiYXR0ZXJ5LCByZXQ7CisJdW5zaWduZWQgaW50IGF2YWlsYWJsZTsKKworCWJhdHRlcnkgPSB0
cGFjcGlfYmF0dGVyeV9nZXRfaWQoc3VwcGx5LT5kZXNjLT5uYW1lKTsKKwlhdmFpbGFibGUgPSBi
YXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9iZWhhdmlvdXJzOworCXNlbGVj
dGVkID0gcG93ZXJfc3VwcGx5X2NoYXJnZV9iZWhhdmlvdXJfcGFyc2UoYXZhaWxhYmxlLCBidWYp
OworCisJaWYgKHNlbGVjdGVkIDwgMCkKKwkJcmV0dXJuIHNlbGVjdGVkOworCisJc3dpdGNoIChz
ZWxlY3RlZCkgeworCWNhc2UgUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTzoKKwkJ
cmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0KEZPUkNFX0RJU0NIQVJHRSwgYmF0dGVyeSwgMCk7CisJ
CWlmIChyZXQgPCAwKQorCQkJcmV0dXJuIHJldDsKKwkJYnJlYWs7CisJY2FzZSBQT1dFUl9TVVBQ
TFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVNDSEFSR0U6CisJCXJldCA9IHRwYWNwaV9iYXR0
ZXJ5X3NldChGT1JDRV9ESVNDSEFSR0UsIGJhdHRlcnksIDEpOworCQlpZiAocmV0IDwgMCkKKwkJ
CXJldHVybiByZXQ7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCWRldl9lcnIoZGV2LCAiVW5leHBl
Y3RlZCBjaGFyZ2UgYmVoYXZpb3VyOiAlZFxuIiwgc2VsZWN0ZWQpOworCQlyZXR1cm4gLUVJTlZB
TDsKKwl9CisKKwlyZXR1cm4gY291bnQ7Cit9CisKIHN0YXRpYyBERVZJQ0VfQVRUUl9SVyhjaGFy
Z2VfY29udHJvbF9zdGFydF90aHJlc2hvbGQpOwogc3RhdGljIERFVklDRV9BVFRSX1JXKGNoYXJn
ZV9jb250cm9sX2VuZF90aHJlc2hvbGQpOworc3RhdGljIERFVklDRV9BVFRSX1JXKGNoYXJnZV9i
ZWhhdmlvdXIpOwogc3RhdGljIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlIGRldl9hdHRyX2NoYXJn
ZV9zdGFydF90aHJlc2hvbGQgPSBfX0FUVFIoCiAJY2hhcmdlX3N0YXJ0X3RocmVzaG9sZCwKIAkw
NjQ0LApAQCAtOTY1Myw2ICs5NzQ3LDcgQEAgc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUgKnRwYWNw
aV9iYXR0ZXJ5X2F0dHJzW10gPSB7CiAJJmRldl9hdHRyX2NoYXJnZV9jb250cm9sX2VuZF90aHJl
c2hvbGQuYXR0ciwKIAkmZGV2X2F0dHJfY2hhcmdlX3N0YXJ0X3RocmVzaG9sZC5hdHRyLAogCSZk
ZXZfYXR0cl9jaGFyZ2Vfc3RvcF90aHJlc2hvbGQuYXR0ciwKKwkmZGV2X2F0dHJfY2hhcmdlX2Jl
aGF2aW91ci5hdHRyLAogCU5VTEwsCiB9OwogCi0tIAoyLjMzLjEKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBs
aXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
