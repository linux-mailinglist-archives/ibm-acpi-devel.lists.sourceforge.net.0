Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA9C44F28F
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 13 Nov 2021 11:43:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mlqUj-0008Ur-4J; Sat, 13 Nov 2021 10:42:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mlqUh-0008Ul-Td
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+TrT49XycWME6vwtz7tArXXsb8arJ+hk2ft60G9qlSM=; b=Zo4WjbuzcKGxmq0YTVcUE5TiNd
 objT3iCTSyE656SVWNaT65EPO8r/kJ74UtLnbDuuzjMPJQmPOTaTRXHXGfM84xQGgYaAQOj5vcGtY
 ujE8StcuFcWGHdeQ0f2pjFuVeppxlCgUdhmQ1Hq3KholNMvfQtmanm1e5RYaMwdtqv/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+TrT49XycWME6vwtz7tArXXsb8arJ+hk2ft60G9qlSM=; b=NNJNLtKhUeewscsTZSppv69Mg0
 z6N4E4Dprq/gkSxyzpmodRIYVu8JxpqiA1X8obnSS2/bC8QEE6GmsLd7bSJ0davxPd9MYUdBNX/+0
 ntYK7hkHCHzVrCywPayn7jgQx1iwNiTGzVJxesxFhIZptdodMI2Wfj2KC9rdl9UdsRFk=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlqUg-00BeWj-2I
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:47 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1636800156;
 bh=aTqKITwe2LA7y1VMDsmOTFPBsA/vzvyEueKa2dGlxMk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ln286Z6jptypnEoyobbtP9PxcPsWu8r/CKukBuUJkpJlubmpTSIXJf+RzbRNShdsu
 gJE8y00lA+rNzGD29LBgmuRg5TU7yewEpdrv1p5YRy8mkkzt82tZPsvqdIXwYYcPGi
 iwdb27ZTDLmhYeNN7WWcnbreYbdPkPG60lRd04TQ=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sat, 13 Nov 2021 11:42:23 +0100
Message-Id: <20211113104225.141333-3-linux@weissschuh.net>
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
 
 Content preview:  These helper functions can be used by drivers to implement
    their own sysfs-attributes. This is useful for ACPI-drivers extending the
    default ACPI-battery with their own charge_behaviour attributes. Signed-off-by:
    Thomas Weißschuh <linux@weissschuh.net> --- drivers/power/supply/power_supply_sysfs.c
    | 51 +++++++++++++++++++++++ include/linux/power_supply.h | 9 ++++ 2 files
    changed, 60 insertions( [...] 
 
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
X-Headers-End: 1mlqUg-00BeWj-2I
Subject: [ibm-acpi-devel] [PATCH 2/4] power: supply: add helpers for
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
cl9zdXBwbHlfc3lzZnMuYyB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xp
bnV4L3Bvd2VyX3N1cHBseS5oICAgICAgICAgICAgICB8ICA5ICsrKysKIDIgZmlsZXMgY2hhbmdl
ZCwgNjAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcG93ZXIvc3VwcGx5L3Bv
d2VyX3N1cHBseV9zeXNmcy5jIGIvZHJpdmVycy9wb3dlci9zdXBwbHkvcG93ZXJfc3VwcGx5X3N5
c2ZzLmMKaW5kZXggYzNkN2NiY2Q0ZmFkLi4xNzEzNDFiY2VmMWQgMTAwNjQ0Ci0tLSBhL2RyaXZl
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
RVJfU1VQUExZX0VOVU1fQVRUUihTVEFUVVMpLApAQCAtMjI2LDYgKzIzMiw1MSBAQCBzdGF0aWMg
ZW51bSBwb3dlcl9zdXBwbHlfcHJvcGVydHkgZGV2X2F0dHJfcHNwKHN0cnVjdCBkZXZpY2VfYXR0
cmlidXRlICphdHRyKQogCXJldHVybiAgdG9fcHNfYXR0cihhdHRyKSAtIHBvd2VyX3N1cHBseV9h
dHRyczsKIH0KIAorc3NpemVfdCBwb3dlcl9zdXBwbHlfY2hhcmdlX2JlaGF2aW91cl9zaG93KHN0
cnVjdCBkZXZpY2UgKmRldiwKKwkJCQkJICAgdW5zaWduZWQgaW50IGF2YWlsYWJsZV9iZWhhdmlv
dXJzLAorCQkJCQkgICBlbnVtIHBvd2VyX3N1cHBseV9jaGFyZ2VfYmVoYXZpb3VyIGN1cnJlbnRf
YmVoYXZpb3VyLAorCQkJCQkgICBjaGFyICpidWYpCit7CisJYm9vbCBtYXRjaCA9IGZhbHNlLCBh
dmFpbGFibGUsIGFjdGl2ZTsKKwlzc2l6ZV90IGNvdW50ID0gMDsKKwlpbnQgaTsKKworCWZvciAo
aSA9IDA7IGkgPCBBUlJBWV9TSVpFKFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX1RFWFQp
OyBpKyspIHsKKwkJYXZhaWxhYmxlID0gYXZhaWxhYmxlX2JlaGF2aW91cnMgJiBCSVQoaSk7CisJ
CWFjdGl2ZSA9IGkgPT0gY3VycmVudF9iZWhhdmlvdXI7CisKKwkJaWYgKGF2YWlsYWJsZSAmJiBh
Y3RpdmUpIHsKKwkJCWNvdW50ICs9IHNwcmludGYoYnVmICsgY291bnQsICJbJXNdICIsCisJCQkJ
CSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9URVhUW2ldKTsKKwkJCW1hdGNoID0gdHJ1
ZTsKKwkJfSBlbHNlIGlmIChhdmFpbGFibGUpIHsKKwkJCWNvdW50ICs9IHNwcmludGYoYnVmICsg
Y291bnQsICIlcyAiLAorCQkJCQkgUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfVEVYVFtp
XSk7CisJCX0KKwl9CisKKwlpZiAoIW1hdGNoKSB7CisJCWRldl93YXJuKGRldiwgImRyaXZlciBy
ZXBvcnRpbmcgdW5zdXBwb3J0ZWQgY2hhcmdlIGJlaGF2aW91clxuIik7CisJCXJldHVybiAtRUlO
VkFMOworCX0KKworCWlmIChjb3VudCkKKwkJYnVmW2NvdW50IC0gMV0gPSAnXG4nOworCisJcmV0
dXJuIGNvdW50OworfQorRVhQT1JUX1NZTUJPTF9HUEwocG93ZXJfc3VwcGx5X2NoYXJnZV9iZWhh
dmlvdXJfc2hvdyk7CisKK2ludCBwb3dlcl9zdXBwbHlfY2hhcmdlX2JlaGF2aW91cl9wYXJzZSh1
bnNpZ25lZCBpbnQgYXZhaWxhYmxlX2JlaGF2aW91cnMsIGNvbnN0IGNoYXIgKmJ1ZikKK3sKKwlp
bnQgaSA9IHN5c2ZzX21hdGNoX3N0cmluZyhQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9U
RVhULCBidWYpOworCisJaWYgKGF2YWlsYWJsZV9iZWhhdmlvdXJzICYgQklUKGkpKQorCQlyZXR1
cm4gaTsKKwlyZXR1cm4gLUVJTlZBTDsKK30KK0VYUE9SVF9TWU1CT0xfR1BMKHBvd2VyX3N1cHBs
eV9jaGFyZ2VfYmVoYXZpb3VyX3BhcnNlKTsKKwogc3RhdGljIHNzaXplX3QgcG93ZXJfc3VwcGx5
X3Nob3dfdXNiX3R5cGUoc3RydWN0IGRldmljZSAqZGV2LAogCQkJCQkgIGNvbnN0IHN0cnVjdCBw
b3dlcl9zdXBwbHlfZGVzYyAqZGVzYywKIAkJCQkJICB1bmlvbiBwb3dlcl9zdXBwbHlfcHJvcHZh
bCAqdmFsdWUsCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3Bvd2VyX3N1cHBseS5oIGIvaW5j
bHVkZS9saW51eC9wb3dlcl9zdXBwbHkuaAppbmRleCA3MGMzMzNlODYyOTMuLjcxZjAzNzljMmFm
OCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9wb3dlcl9zdXBwbHkuaAorKysgYi9pbmNsdWRl
L2xpbnV4L3Bvd2VyX3N1cHBseS5oCkBAIC01NDYsNCArNTQ2LDEzIEBAIHN0YXRpYyBpbmxpbmUK
IHZvaWQgcG93ZXJfc3VwcGx5X3JlbW92ZV9od21vbl9zeXNmcyhzdHJ1Y3QgcG93ZXJfc3VwcGx5
ICpwc3kpIHt9CiAjZW5kaWYKIAorI2lmZGVmIENPTkZJR19TWVNGUworc3NpemVfdCBwb3dlcl9z
dXBwbHlfY2hhcmdlX2JlaGF2aW91cl9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwKKwkJCQkJICAg
dW5zaWduZWQgaW50IGF2YWlsYWJsZV9iZWhhdmlvdXJzLAorCQkJCQkgICBlbnVtIHBvd2VyX3N1
cHBseV9jaGFyZ2VfYmVoYXZpb3VyIGJlaGF2aW91ciwKKwkJCQkJICAgY2hhciAqYnVmKTsKKwor
aW50IHBvd2VyX3N1cHBseV9jaGFyZ2VfYmVoYXZpb3VyX3BhcnNlKHVuc2lnbmVkIGludCBhdmFp
bGFibGVfYmVoYXZpb3VycywgY29uc3QgY2hhciAqYnVmKTsKKyNlbmRpZgorCiAjZW5kaWYgLyog
X19MSU5VWF9QT1dFUl9TVVBQTFlfSF9fICovCi0tIAoyLjMzLjEKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBs
aXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
