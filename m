Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA72F45B026
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Nov 2021 00:27:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mpfC4-0006ui-MK; Tue, 23 Nov 2021 23:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mpfC2-0006uW-Ce
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=56Rem5OdLu/dVsVCLmR+ScvSRAhi1nWn1BoELeBIqyA=; b=gCpyBy+r3JX4FY5Nw3GuGKLO/C
 CF8aXGwJ0SGel0GqNhQSc8gs2p1iFDJM/EzabesT1kUiVUye/eoqfZ8ckrZZFfUW8uciMhFRlsgCr
 rca871/w92CiR0UiklVF65vLYMTHd3DlCwCJUcINqJihCrPBmnOtqZeK0bCTpy440w60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=56Rem5OdLu/dVsVCLmR+ScvSRAhi1nWn1BoELeBIqyA=; b=YtgnZ9bMOizqGjwJUeCvAy0n8V
 HTAgOjVyskHhgFQcR/GtD0lTix0pjagS99Cw+46YPXtT66I4TSlm8QoR3ul24C+P6NUSfefoYz8M3
 1/DJYxkyEM/GsZLJtcmsCS5+xshdK0w2s2xpwoA3wefJhZqQjKN2Yo4AtbTDXrSTxof4=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpfC1-0000Ui-Aq
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:19 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1637710028;
 bh=ubpC/4tVq2wPO3RjwZsGHEo8sdCshhNkUuFARYO2hlg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NlNIdkYeXjBMf+ZkMSwEKARWpzUuFtUM2v0++eDFPVXVW4niDr99KpYrElnPCIb8y
 N9AwJQ4WdlIycMz1wiM/h0BBykWYhxWY2ZpuqmueQ6uwxrno/C7TErErBNovVupROV
 PozOZri5Xf7+O5KwNKhu4TccJLlP0jNNy7tAz5bA=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Nov 2021 00:27:02 +0100
Message-Id: <20211123232704.25394-3-linux@weissschuh.net>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211123232704.25394-1-linux@weissschuh.net>
References: <20211123232704.25394-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1637710019; l=3306; s=20211113;
 h=from:subject; bh=ubpC/4tVq2wPO3RjwZsGHEo8sdCshhNkUuFARYO2hlg=;
 b=eMMI5CuiEYHqc4kRREJLyPoXw87ZNBQLiFITVqfqWbxdFeYulEM3XuvMKUX/rYNsPq2wSKDvlvgF
 STKS7sEnB1waXnU7NezjuI2a5lywAbjMtty01u2JVV8nlrWlFBwQ
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=9LP6KM4vD/8CwHW7nouRBhWLyQLcK1MkP6aTZbzUlj4=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  These helper functions can be used by drivers to implement
    their own sysfs-attributes. This is useful for ACPI-drivers extending the
    default ACPI-battery with their own charge_behaviour attributes. Signed-off-by:
    Thomas Weißschuh <linux@weissschuh.net> --- drivers/power/supply/power_supply_sysfs.c
    | 55 +++++++++++++++++++++++ include/linux/power_supply.h | 9 ++++ 2 files
    changed, 64 insertions( [...] 
 
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
X-Headers-End: 1mpfC1-0000Ui-Aq
Subject: [ibm-acpi-devel] [PATCH v2 2/4] power: supply: add helpers for
 charge_behaviour sysfs
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

VGhlc2UgaGVscGVyIGZ1bmN0aW9ucyBjYW4gYmUgdXNlZCBieSBkcml2ZXJzIHRvIGltcGxlbWVu
dCB0aGVpciBvd24Kc3lzZnMtYXR0cmlidXRlcy4KVGhpcyBpcyB1c2VmdWwgZm9yIEFDUEktZHJp
dmVycyBleHRlbmRpbmcgdGhlIGRlZmF1bHQgQUNQSS1iYXR0ZXJ5IHdpdGgKdGhlaXIgb3duIGNo
YXJnZV9iZWhhdmlvdXIgYXR0cmlidXRlcy4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBXZWnDn3Nj
aHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5ldD4KLS0tCiBkcml2ZXJzL3Bvd2VyL3N1cHBseS9wb3dl
cl9zdXBwbHlfc3lzZnMuYyB8IDU1ICsrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xp
bnV4L3Bvd2VyX3N1cHBseS5oICAgICAgICAgICAgICB8ICA5ICsrKysKIDIgZmlsZXMgY2hhbmdl
ZCwgNjQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcG93ZXIvc3VwcGx5L3Bv
d2VyX3N1cHBseV9zeXNmcy5jIGIvZHJpdmVycy9wb3dlci9zdXBwbHkvcG93ZXJfc3VwcGx5X3N5
c2ZzLmMKaW5kZXggYzNkN2NiY2Q0ZmFkLi41ZTNiOGMxNWRkYmUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvcG93ZXIvc3VwcGx5L3Bvd2VyX3N1cHBseV9zeXNmcy5jCisrKyBiL2RyaXZlcnMvcG93ZXIv
c3VwcGx5L3Bvd2VyX3N1cHBseV9zeXNmcy5jCkBAIC0xMzMsNiArMTMzLDEyIEBAIHN0YXRpYyBj
b25zdCBjaGFyICogY29uc3QgUE9XRVJfU1VQUExZX1NDT1BFX1RFWFRbXSA9IHsKIAlbUE9XRVJf
U1VQUExZX1NDT1BFX0RFVklDRV0JPSAiRGV2aWNlIiwKIH07CiAKK3N0YXRpYyBjb25zdCBjaGFy
ICogY29uc3QgUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfVEVYVFtdID0geworCVtQT1dF
Ul9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9BVVRPXQkJPSAiYXV0byIsCisJW1BPV0VSX1NVUFBM
WV9DSEFSR0VfQkVIQVZJT1VSX0lOSElCSVRfQ0hBUkdFXQk9ICJpbmhpYml0LWNoYXJnZSIsCisJ
W1BPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0ZPUkNFX0RJU0NIQVJHRV0JPSAiZm9yY2Ut
ZGlzY2hhcmdlIiwKK307CisKIHN0YXRpYyBzdHJ1Y3QgcG93ZXJfc3VwcGx5X2F0dHIgcG93ZXJf
c3VwcGx5X2F0dHJzW10gPSB7CiAJLyogUHJvcGVydGllcyBvZiB0eXBlIGBpbnQnICovCiAJUE9X
RVJfU1VQUExZX0VOVU1fQVRUUihTVEFUVVMpLApAQCAtNDg0LDMgKzQ5MCw1MiBAQCBpbnQgcG93
ZXJfc3VwcGx5X3VldmVudChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBrb2JqX3VldmVudF9l
bnYgKmVudikKIAogCXJldHVybiByZXQ7CiB9CisKK3NzaXplX3QgcG93ZXJfc3VwcGx5X2NoYXJn
ZV9iZWhhdmlvdXJfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsCisJCQkJCSAgIHVuc2lnbmVkIGlu
dCBhdmFpbGFibGVfYmVoYXZpb3VycywKKwkJCQkJICAgZW51bSBwb3dlcl9zdXBwbHlfY2hhcmdl
X2JlaGF2aW91ciBjdXJyZW50X2JlaGF2aW91ciwKKwkJCQkJICAgY2hhciAqYnVmKQoreworCWJv
b2wgbWF0Y2ggPSBmYWxzZSwgYXZhaWxhYmxlLCBhY3RpdmU7CisJc3NpemVfdCBjb3VudCA9IDA7
CisJaW50IGk7CisKKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShQT1dFUl9TVVBQTFlfQ0hB
UkdFX0JFSEFWSU9VUl9URVhUKTsgaSsrKSB7CisJCWF2YWlsYWJsZSA9IGF2YWlsYWJsZV9iZWhh
dmlvdXJzICYgQklUKGkpOworCQlhY3RpdmUgPSBpID09IGN1cnJlbnRfYmVoYXZpb3VyOworCisJ
CWlmIChhdmFpbGFibGUgJiYgYWN0aXZlKSB7CisJCQljb3VudCArPSBzeXNmc19lbWl0X2F0KGJ1
ZiwgY291bnQsICJbJXNdICIsCisJCQkJCSAgICAgICBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFW
SU9VUl9URVhUW2ldKTsKKwkJCW1hdGNoID0gdHJ1ZTsKKwkJfSBlbHNlIGlmIChhdmFpbGFibGUp
IHsKKwkJCWNvdW50ICs9IHN5c2ZzX2VtaXRfYXQoYnVmLCBjb3VudCwgIiVzICIsCisJCQkJCSAg
ICAgICBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9URVhUW2ldKTsKKwkJfQorCX0KKwor
CWlmICghbWF0Y2gpIHsKKwkJZGV2X3dhcm4oZGV2LCAiZHJpdmVyIHJlcG9ydGluZyB1bnN1cHBv
cnRlZCBjaGFyZ2UgYmVoYXZpb3VyXG4iKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJaWYg
KGNvdW50KQorCQlidWZbY291bnQgLSAxXSA9ICdcbic7CisKKwlyZXR1cm4gY291bnQ7Cit9CitF
WFBPUlRfU1lNQk9MX0dQTChwb3dlcl9zdXBwbHlfY2hhcmdlX2JlaGF2aW91cl9zaG93KTsKKwor
aW50IHBvd2VyX3N1cHBseV9jaGFyZ2VfYmVoYXZpb3VyX3BhcnNlKHVuc2lnbmVkIGludCBhdmFp
bGFibGVfYmVoYXZpb3VycywgY29uc3QgY2hhciAqYnVmKQoreworCWludCBpID0gc3lzZnNfbWF0
Y2hfc3RyaW5nKFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX1RFWFQsIGJ1Zik7CisKKwlp
ZiAoaSA8IDApCisJCXJldHVybiBpOworCisJaWYgKGF2YWlsYWJsZV9iZWhhdmlvdXJzICYgQklU
KGkpKQorCQlyZXR1cm4gaTsKKworCXJldHVybiAtRUlOVkFMOworfQorRVhQT1JUX1NZTUJPTF9H
UEwocG93ZXJfc3VwcGx5X2NoYXJnZV9iZWhhdmlvdXJfcGFyc2UpOwpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9wb3dlcl9zdXBwbHkuaCBiL2luY2x1ZGUvbGludXgvcG93ZXJfc3VwcGx5LmgK
aW5kZXggNzBjMzMzZTg2MjkzLi43MWYwMzc5YzJhZjggMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGlu
dXgvcG93ZXJfc3VwcGx5LmgKKysrIGIvaW5jbHVkZS9saW51eC9wb3dlcl9zdXBwbHkuaApAQCAt
NTQ2LDQgKzU0NiwxMyBAQCBzdGF0aWMgaW5saW5lCiB2b2lkIHBvd2VyX3N1cHBseV9yZW1vdmVf
aHdtb25fc3lzZnMoc3RydWN0IHBvd2VyX3N1cHBseSAqcHN5KSB7fQogI2VuZGlmCiAKKyNpZmRl
ZiBDT05GSUdfU1lTRlMKK3NzaXplX3QgcG93ZXJfc3VwcGx5X2NoYXJnZV9iZWhhdmlvdXJfc2hv
dyhzdHJ1Y3QgZGV2aWNlICpkZXYsCisJCQkJCSAgIHVuc2lnbmVkIGludCBhdmFpbGFibGVfYmVo
YXZpb3VycywKKwkJCQkJICAgZW51bSBwb3dlcl9zdXBwbHlfY2hhcmdlX2JlaGF2aW91ciBiZWhh
dmlvdXIsCisJCQkJCSAgIGNoYXIgKmJ1Zik7CisKK2ludCBwb3dlcl9zdXBwbHlfY2hhcmdlX2Jl
aGF2aW91cl9wYXJzZSh1bnNpZ25lZCBpbnQgYXZhaWxhYmxlX2JlaGF2aW91cnMsIGNvbnN0IGNo
YXIgKmJ1Zik7CisjZW5kaWYKKwogI2VuZGlmIC8qIF9fTElOVVhfUE9XRVJfU1VQUExZX0hfXyAq
LwotLSAKMi4zNC4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vaWJtLWFjcGktZGV2ZWwK
