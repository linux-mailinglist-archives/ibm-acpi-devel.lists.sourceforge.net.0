Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C34D5747980
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  4 Jul 2023 23:19:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qGnQd-0004Au-5R;
	Tue, 04 Jul 2023 21:19:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@weissschuh.net>) id 1qGnQb-0004Ao-0H
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 04 Jul 2023 21:19:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aFvsiysg+/PmlycjmO4+oqbNSxAozMN4OJNruBYuylw=; b=JaGAMZZaR03yErHJU43d+4rJ0P
 Z96lNZxIr4xCfL2FsMxBhq9PQSnuPz/WagoYGPNWoOWWfCvBouLSI8Ex+7jJa4ri3UVjR95ALjLlF
 NtMoc8XpCuTWJoOd47vGfmeuUap06qEHQTnQrew+gacDR8tpMzq4bCFCEdSWux5B+Tjs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aFvsiysg+/PmlycjmO4+oqbNSxAozMN4OJNruBYuylw=; b=TRqakmDecelhOV+Kq/4RfpllZk
 aYY3tzJdHuEfqa2U9pIzNl6mVJ8g8u2oDH0EXKOImNJkn62lVmJTJxmgYKiK3LlTRn7+MDqvqALJp
 2lJU0g/pfThLCZfa6dwky1AyoQsScW879RpxEfOfP0J53/ipHj/uDjInEzZ3uZl4Aob8=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qGnQX-006AHE-IW for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 04 Jul 2023 21:19:17 +0000
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=weissschuh.net;
 s=mail; t=1688504609;
 bh=tqVMOqnScNJRf+yfQ7pzLwp2YiCvgJ89KjSrmIHLwWk=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=ToeldVGrLtFw8nRWOaPDTwRkrN5E8HCbuT3XQhj69oloyQq442KVByovPBcl7O0//
 FqgEcNpyBTNAYxSPHWdqHuPACVFfBVreLMn/GhceYweTMXUJ46MjGWApk0clt6GgR4
 TSDuWJ/6fx4LzTV4wZIQEIAnpr62v/0ij/lFWAgk=
Date: Tue, 04 Jul 2023 23:03:18 +0200
MIME-Version: 1.0
Message-Id: <20230704-thinkpad_acpi-lockdep-v1-2-60129548a738@weissschuh.net>
References: <20230704-thinkpad_acpi-lockdep-v1-0-60129548a738@weissschuh.net>
In-Reply-To: <20230704-thinkpad_acpi-lockdep-v1-0-60129548a738@weissschuh.net>
To: Henrique de Moraes Holschuh <hmh@hmh.eng.br>, 
 Hans de Goede <hdegoede@redhat.com>, Mark Gross <markgross@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1688504608; l=5236;
 i=linux@weissschuh.net; s=20221212; h=from:subject:message-id;
 bh=tqVMOqnScNJRf+yfQ7pzLwp2YiCvgJ89KjSrmIHLwWk=;
 b=/UndyHBCWnp4fW8/n+9txbeHsGAoayOqy6iWCd4af/oEiTNa6NZ1fkYnCwmtJ2QoPvmdcDNUX
 PTUKWyroPukANN/R+6M7nNGrjl6mTkKj41d018RTC6oBJHOVEQoSbx9
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Instead of relying on free-form comments to document locking
    requirements use well-known lockdep annotations. These can also be validated
    at runtime make sure the invariants are not violated. Signed-off-by: Thomas
    Weißschuh <linux@weissschuh.net> --- drivers/platform/x86/thinkpad_acpi.c
    | 41 +++++++++++++++++++++ 1 file changed, 24 insertions(+), 17 deletions(-)
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qGnQX-006AHE-IW
Subject: [ibm-acpi-devel] [PATCH 2/2] platform/x86: thinkpad_acpi: use
 lockdep annotations
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
Cc: ibm-acpi-devel@lists.sourceforge.net,
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SW5zdGVhZCBvZiByZWx5aW5nIG9uIGZyZWUtZm9ybSBjb21tZW50cyB0byBkb2N1bWVudCBsb2Nr
aW5nCnJlcXVpcmVtZW50cyB1c2Ugd2VsbC1rbm93biBsb2NrZGVwIGFubm90YXRpb25zLgpUaGVz
ZSBjYW4gYWxzbyBiZSB2YWxpZGF0ZWQgYXQgcnVudGltZSBtYWtlIHN1cmUgdGhlIGludmFyaWFu
dHMgYXJlIG5vdAp2aW9sYXRlZC4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxs
aW51eEB3ZWlzc3NjaHVoLm5ldD4KLS0tCiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9h
Y3BpLmMgfCA0MSArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4
Ni90aGlua3BhZF9hY3BpLmMKaW5kZXggYjc5NmU2NWM5OWUwLi4yNWNjODZhNGEzNmEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYworKysgYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKQEAgLTUwLDYgKzUwLDcgQEAKICNpbmNsdWRl
IDxsaW51eC9rdGhyZWFkLmg+CiAjaW5jbHVkZSA8bGludXgvbGVkcy5oPgogI2luY2x1ZGUgPGxp
bnV4L2xpc3QuaD4KKyNpbmNsdWRlIDxsaW51eC9sb2NrZGVwLmg+CiAjaW5jbHVkZSA8bGludXgv
bW9kdWxlLmg+CiAjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9udnJh
bS5oPgpAQCAtMjA3MSwxMSArMjA3MiwxMSBAQCBzdGF0aWMgaW50IGhvdGtleV9nZXRfdGFibGV0
X21vZGUoaW50ICpzdGF0dXMpCiAgKiBob3RrZXlfYWNwaV9tYXNrIGFjY29yZGluZ2x5LiAgQWxz
byByZXNldHMgYW55IGJpdHMKICAqIGZyb20gaG90a2V5X3VzZXJfbWFzayB0aGF0IGFyZSB1bmF2
YWlsYWJsZSB0byBiZQogICogZGVsaXZlcmVkIChzaGFkb3cgcmVxdWlyZW1lbnQgb2YgdGhlIHVz
ZXJzcGFjZSBBQkkpLgotICoKLSAqIENhbGwgd2l0aCBob3RrZXlfbXV0ZXggaGVsZAogICovCiBz
dGF0aWMgaW50IGhvdGtleV9tYXNrX2dldCh2b2lkKQogeworCWxvY2tkZXBfYXNzZXJ0X2hlbGQo
JmhvdGtleV9tdXRleCk7CisKIAlpZiAodHBfZmVhdHVyZXMuaG90a2V5X21hc2spIHsKIAkJdTMy
IG0gPSAwOwogCkBAIC0yMTExLDggKzIxMTIsNiBAQCBzdGF0aWMgdm9pZCBob3RrZXlfbWFza193
YXJuX2luY29tcGxldGVfbWFzayh2b2lkKQogICogQWxzbyBjYWxscyBob3RrZXlfbWFza19nZXQg
dG8gdXBkYXRlIGhvdGtleV9hY3BpX21hc2suCiAgKgogICogTk9URTogZG9lcyBub3Qgc2V0IGJp
dHMgaW4gaG90a2V5X3VzZXJfbWFzaywgYnV0IG1heSByZXNldCB0aGVtLgotICoKLSAqIENhbGwg
d2l0aCBob3RrZXlfbXV0ZXggaGVsZAogICovCiBzdGF0aWMgaW50IGhvdGtleV9tYXNrX3NldCh1
MzIgbWFzaykKIHsKQEAgLTIxMjEsNiArMjEyMCw4IEBAIHN0YXRpYyBpbnQgaG90a2V5X21hc2tf
c2V0KHUzMiBtYXNrKQogCiAJY29uc3QgdTMyIGZ3bWFzayA9IG1hc2sgJiB+aG90a2V5X3NvdXJj
ZV9tYXNrOwogCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaG90a2V5X211dGV4KTsKKwogCWlmICh0
cF9mZWF0dXJlcy5ob3RrZXlfbWFzaykgewogCQlmb3IgKGkgPSAwOyBpIDwgMzI7IGkrKykgewog
CQkJaWYgKCFhY3BpX2V2YWxmKGhrZXlfaGFuZGxlLApAQCAtMjE1MiwxMyArMjE1MywxMyBAQCBz
dGF0aWMgaW50IGhvdGtleV9tYXNrX3NldCh1MzIgbWFzaykKIAogLyoKICAqIFNldHMgaG90a2V5
X3VzZXJfbWFzayBhbmQgdHJpZXMgdG8gc2V0IHRoZSBmaXJtd2FyZSBtYXNrCi0gKgotICogQ2Fs
bCB3aXRoIGhvdGtleV9tdXRleCBoZWxkCiAgKi8KIHN0YXRpYyBpbnQgaG90a2V5X3VzZXJfbWFz
a19zZXQoY29uc3QgdTMyIG1hc2spCiB7CiAJaW50IHJjOwogCisJbG9ja2RlcF9hc3NlcnRfaGVs
ZCgmaG90a2V5X211dGV4KTsKKwogCS8qIEdpdmUgcGVvcGxlIGEgY2hhbmNlIHRvIG5vdGljZSB0
aGV5IGFyZSBkb2luZyBzb21ldGhpbmcgdGhhdAogCSAqIGlzIGJvdW5kIHRvIGdvIGJvb20gb24g
dGhlaXIgdXNlcnMgc29vbmVyIG9yIGxhdGVyICovCiAJaWYgKCF0cF93YXJuZWQuaG90a2V5X21h
c2tfZmYgJiYKQEAgLTI1MTksMjEgKzI1MjAsMjMgQEAgc3RhdGljIGludCBob3RrZXlfa3RocmVh
ZCh2b2lkICpkYXRhKQogCXJldHVybiAwOwogfQogCi0vKiBjYWxsIHdpdGggaG90a2V5X211dGV4
IGhlbGQgKi8KIHN0YXRpYyB2b2lkIGhvdGtleV9wb2xsX3N0b3Bfc3luYyh2b2lkKQogeworCWxv
Y2tkZXBfYXNzZXJ0X2hlbGQoJmhvdGtleV9tdXRleCk7CisKIAlpZiAodHBhY3BpX2hvdGtleV90
YXNrKSB7CiAJCWt0aHJlYWRfc3RvcCh0cGFjcGlfaG90a2V5X3Rhc2spOwogCQl0cGFjcGlfaG90
a2V5X3Rhc2sgPSBOVUxMOwogCX0KIH0KIAotLyogY2FsbCB3aXRoIGhvdGtleV9tdXRleCBoZWxk
ICovCiBzdGF0aWMgdm9pZCBob3RrZXlfcG9sbF9zZXR1cChjb25zdCBib29sIG1heV93YXJuKQog
ewogCWNvbnN0IHUzMiBwb2xsX2RyaXZlcl9tYXNrID0gaG90a2V5X2RyaXZlcl9tYXNrICYgaG90
a2V5X3NvdXJjZV9tYXNrOwogCWNvbnN0IHUzMiBwb2xsX3VzZXJfbWFzayA9IGhvdGtleV91c2Vy
X21hc2sgJiBob3RrZXlfc291cmNlX21hc2s7CiAKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZob3Rr
ZXlfbXV0ZXgpOworCiAJaWYgKGhvdGtleV9wb2xsX2ZyZXEgPiAwICYmCiAJICAgIChwb2xsX2Ry
aXZlcl9tYXNrIHx8CiAJICAgICAocG9sbF91c2VyX21hc2sgJiYgdHBhY3BpX2lucHV0ZGV2LT51
c2VycyA+IDApKSkgewpAQCAtMjU2Miw5ICsyNTY1LDEwIEBAIHN0YXRpYyB2b2lkIGhvdGtleV9w
b2xsX3NldHVwX3NhZmUoY29uc3QgYm9vbCBtYXlfd2FybikKIAltdXRleF91bmxvY2soJmhvdGtl
eV9tdXRleCk7CiB9CiAKLS8qIGNhbGwgd2l0aCBob3RrZXlfbXV0ZXggaGVsZCAqLwogc3RhdGlj
IHZvaWQgaG90a2V5X3BvbGxfc2V0X2ZyZXEodW5zaWduZWQgaW50IGZyZXEpCiB7CisJbG9ja2Rl
cF9hc3NlcnRfaGVsZCgmaG90a2V5X211dGV4KTsKKwogCWlmICghZnJlcSkKIAkJaG90a2V5X3Bv
bGxfc3RvcF9zeW5jKCk7CiAKQEAgLTY2NjQsMTIgKzY2NjgsMTMgQEAgc3RhdGljIHVuc2lnbmVk
IGludCBicmlnaHRuZXNzX2VuYWJsZSA9IDI7IC8qIDIgPSBhdXRvLCAwID0gbm8sIDEgPSB5ZXMg
Ki8KIAogc3RhdGljIHN0cnVjdCBtdXRleCBicmlnaHRuZXNzX211dGV4OwogCi0vKiBOVlJBTSBi
cmlnaHRuZXNzIGFjY2VzcywKLSAqIGNhbGwgd2l0aCBicmlnaHRuZXNzX211dGV4IGhlbGQhICov
CisvKiBOVlJBTSBicmlnaHRuZXNzIGFjY2VzcyAqLwogc3RhdGljIHVuc2lnbmVkIGludCB0cGFj
cGlfYnJpZ2h0bmVzc19udnJhbV9nZXQodm9pZCkKIHsKIAl1OCBsbnZyYW07CiAKKwlsb2NrZGVw
X2Fzc2VydF9oZWxkKCZicmlnaHRuZXNzX211dGV4KTsKKwogCWxudnJhbSA9IChudnJhbV9yZWFk
X2J5dGUoVFBfTlZSQU1fQUREUl9CUklHSFRORVNTKQogCQkgICYgVFBfTlZSQU1fTUFTS19MRVZF
TF9CUklHSFRORVNTKQogCQkgID4+IFRQX05WUkFNX1BPU19MRVZFTF9CUklHSFRORVNTOwpAQCAt
NjcxNywxMSArNjcyMiwxMiBAQCBzdGF0aWMgdm9pZCB0cGFjcGlfYnJpZ2h0bmVzc19jaGVja3Bv
aW50X252cmFtKHZvaWQpCiB9CiAKIAotLyogY2FsbCB3aXRoIGJyaWdodG5lc3NfbXV0ZXggaGVs
ZCEgKi8KIHN0YXRpYyBpbnQgdHBhY3BpX2JyaWdodG5lc3NfZ2V0X3JhdyhpbnQgKnN0YXR1cykK
IHsKIAl1OCBsZWMgPSAwOwogCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmYnJpZ2h0bmVzc19tdXRl
eCk7CisKIAlzd2l0Y2ggKGJyaWdodG5lc3NfbW9kZSkgewogCWNhc2UgVFBBQ1BJX0JSR0hUX01P
REVfVUNNU19TVEVQOgogCQkqc3RhdHVzID0gdHBhY3BpX2JyaWdodG5lc3NfbnZyYW1fZ2V0KCk7
CkBAIC02NzM3LDEyICs2NzQzLDEzIEBAIHN0YXRpYyBpbnQgdHBhY3BpX2JyaWdodG5lc3NfZ2V0
X3JhdyhpbnQgKnN0YXR1cykKIAl9CiB9CiAKLS8qIGNhbGwgd2l0aCBicmlnaHRuZXNzX211dGV4
IGhlbGQhICovCiAvKiBkbyBOT1QgY2FsbCB3aXRoIGlsbGVnYWwgYmFja2xpZ2h0IGxldmVsIHZh
bHVlICovCiBzdGF0aWMgaW50IHRwYWNwaV9icmlnaHRuZXNzX3NldF9lYyh1bnNpZ25lZCBpbnQg
dmFsdWUpCiB7CiAJdTggbGVjID0gMDsKIAorCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmJyaWdodG5l
c3NfbXV0ZXgpOworCiAJaWYgKHVubGlrZWx5KCFhY3BpX2VjX3JlYWQoVFBfRUNfQkFDS0xJR0hU
LCAmbGVjKSkpCiAJCXJldHVybiAtRUlPOwogCkBAIC02NzU0LDEyICs2NzYxLDEzIEBAIHN0YXRp
YyBpbnQgdHBhY3BpX2JyaWdodG5lc3Nfc2V0X2VjKHVuc2lnbmVkIGludCB2YWx1ZSkKIAlyZXR1
cm4gMDsKIH0KIAotLyogY2FsbCB3aXRoIGJyaWdodG5lc3NfbXV0ZXggaGVsZCEgKi8KIHN0YXRp
YyBpbnQgdHBhY3BpX2JyaWdodG5lc3Nfc2V0X3VjbXNzdGVwKHVuc2lnbmVkIGludCB2YWx1ZSkK
IHsKIAlpbnQgY21vc19jbWQsIGluYzsKIAl1bnNpZ25lZCBpbnQgY3VycmVudF92YWx1ZSwgaTsK
IAorCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmJyaWdodG5lc3NfbXV0ZXgpOworCiAJY3VycmVudF92
YWx1ZSA9IHRwYWNwaV9icmlnaHRuZXNzX252cmFtX2dldCgpOwogCiAJaWYgKHZhbHVlID09IGN1
cnJlbnRfdmFsdWUpCkBAIC04MjA4LDExICs4MjE2LDEwIEBAIHN0YXRpYyBib29sIGZhbl9zZWxl
Y3RfZmFuMih2b2lkKQogCXJldHVybiB0cnVlOwogfQogCi0vKgotICogQ2FsbCB3aXRoIGZhbl9t
dXRleCBoZWxkCi0gKi8KIHN0YXRpYyB2b2lkIGZhbl91cGRhdGVfZGVzaXJlZF9sZXZlbCh1OCBz
dGF0dXMpCiB7CisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZmFuX211dGV4KTsKKwogCWlmICgoc3Rh
dHVzICYKIAkgICAgIChUUF9FQ19GQU5fQVVUTyB8IFRQX0VDX0ZBTl9GVUxMU1BFRUQpKSA9PSAw
KSB7CiAJCWlmIChzdGF0dXMgPiA3KQoKLS0gCjIuNDEuMAoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QK
aWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
