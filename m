Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1498066EB
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Dec 2023 07:02:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rAkyv-0000XC-El;
	Wed, 06 Dec 2023 06:02:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1rAkyt-0000Wz-PF
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Dec 2023 06:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P8Ri5BuO2beZsqvWzjOyFCIGgTJgQtvxQqM7x0tBVTQ=; b=bCY9+zIbBssc6iSmPgxtjEXCUA
 sHc3zeSfkLI8L5TcqGyLTNKUDwPB8wfxlH/uZw7U4i+JdAfULOgMxfexKCHQ3u2EEhVPpKqmnHIhM
 aSbsava6LYLtnMoqODTpfzR/yiYfQODChiJd3tbEHuzh8fYN7KU/RRygWbqqm/5dOgP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=P8Ri5BuO2beZsqvWzjOyFCIGgTJgQtvxQqM7x0tBVTQ=; b=F
 RCAhPQhFgmHOZLfXXBXmY5CnLNFct1Vlmebml94OzQZ6I4lZAJZkvLm9JjuFjibRbRFUBhgm7JKDw
 rnYHYTpEBT2gOJDCj+Rl5nNzJPU6/ClA6L2isW8NS03wxdHO6pQRcKD7Tk2n2D3m8mz/Sl8Pw9HLA
 t7eW0rl1F/5AmBGc=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rAkyr-00014E-9b for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Dec 2023 06:01:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=P8Ri5BuO2beZsqvWzjOyFCIGgTJgQtvxQqM7x0tBVTQ=; b=sgPl/KKTIgdUP1+4pbSQbWO1+W
 gkl8XSm1+BQNzWPCudS7OmqaD2Q2AVTKAH+9B29dqgXkJfwKsrqE9SEpWsxxgkBBeG9tbNIMy+Lnp
 ONn8FUk88oBiwE69CUWtTgva7ki2zfyLIUw0AynHmGPe7yQfvHlz9//D6JKzTMfTC6BTOai5HwvgG
 /+HXYsDDox8/EY4Ey1512snlC327mNLvhiP+XeD5tJwHLya6sP5gfuqrBVD3CPaaRxX7rpeZijQ2B
 ++f0uq3f+Z/ePPfAnJHuvnmDjnlF0uiVtkm4trKQ0EvBR9nNDBoX7xXTyhmeJeammcTNZ6M2a6bhk
 0Mbfr2lg==;
Received: from [50.53.46.231] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1rAkyf-0099Gc-1Y; Wed, 06 Dec 2023 06:01:45 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Tue,  5 Dec 2023 22:01:43 -0800
Message-ID: <20231206060144.8260-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a function's return description and don't misuse "/**"
 for non-kernel-doc comments to prevent warnings from scripts/kernel-doc.
 thinkpad_acpi.c:523: warning: No description found for return value of
 'tpacpi_check_quirks'
 thinkpad_acpi.c:9307: warning: This comment starts with '/**', but isn't
 a kernel-doc comment. Refer Docume [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rAkyr-00014E-9b
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: fix
 kernel-doc warnings
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Randy Dunlap <rdunlap@infradead.org>,
 platform-driver-x86@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

QWRkIGEgZnVuY3Rpb24ncyByZXR1cm4gZGVzY3JpcHRpb24gYW5kIGRvbid0IG1pc3VzZSAiLyoq
IiBmb3IKbm9uLWtlcm5lbC1kb2MgY29tbWVudHMgdG8gcHJldmVudCB3YXJuaW5ncyBmcm9tIHNj
cmlwdHMva2VybmVsLWRvYy4KCnRoaW5rcGFkX2FjcGkuYzo1MjM6IHdhcm5pbmc6IE5vIGRlc2Ny
aXB0aW9uIGZvdW5kIGZvciByZXR1cm4gdmFsdWUgb2YgJ3RwYWNwaV9jaGVja19xdWlya3MnCnRo
aW5rcGFkX2FjcGkuYzo5MzA3OiB3YXJuaW5nOiBUaGlzIGNvbW1lbnQgc3RhcnRzIHdpdGggJy8q
KicsIGJ1dCBpc24ndCBhIGtlcm5lbC1kb2MgY29tbWVudC4gUmVmZXIgRG9jdW1lbnRhdGlvbi9k
b2MtZ3VpZGUva2VybmVsLWRvYy5yc3QKdGhpbmtwYWRfYWNwaS5jOjkzMDc6IHdhcm5pbmc6IG1p
c3NpbmcgaW5pdGlhbCBzaG9ydCBkZXNjcmlwdGlvbiBvbiBsaW5lOgogKiBUaGlzIGV2YWx1YXRl
cyBhIEFDUEkgbWV0aG9kIGNhbGwgc3BlY2lmaWMgdG8gdGhlIGJhdHRlcnkKClNpZ25lZC1vZmYt
Ynk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPgpDYzogSGVucmlxdWUgZGUg
TW9yYWVzIEhvbHNjaHVoIDxobWhAaG1oLmVuZy5icj4KQ2M6IEhhbnMgZGUgR29lZGUgPGhkZWdv
ZWRlQHJlZGhhdC5jb20+CkNjOiAiSWxwbyBKw6RydmluZW4iIDxpbHBvLmphcnZpbmVuQGxpbnV4
LmludGVsLmNvbT4KQ0M6IGlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApDQzog
cGxhdGZvcm0tZHJpdmVyLXg4NkB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL3BsYXRmb3Jt
L3g4Ni90aGlua3BhZF9hY3BpLmMgfCAgICA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4
Ni90aGlua3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMK
LS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCisrKyBiL2RyaXZlcnMv
cGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwpAQCAtNTEyLDEwICs1MTIsMTAgQEAgc3RydWN0
IHRwYWNwaV9xdWlyayB7CiAgKiBJdGVyYXRlcyBvdmVyIGEgcXVpcmtzIGxpc3QgdW50aWwgb25l
IGlzIGZvdW5kIHRoYXQgbWF0Y2hlcyB0aGUKICAqIFRoaW5rUGFkJ3MgdmVuZG9yLCBCSU9TIGFu
ZCBFQyBtb2RlbC4KICAqCi0gKiBSZXR1cm5zIDAgaWYgbm90aGluZyBtYXRjaGVzLCBvdGhlcndp
c2UgcmV0dXJucyB0aGUgcXVpcmtzIGZpZWxkIG9mCisgKiBSZXR1cm5zOiAlMCBpZiBub3RoaW5n
IG1hdGNoZXMsIG90aGVyd2lzZSByZXR1cm5zIHRoZSBxdWlya3MgZmllbGQgb2YKICAqIHRoZSBt
YXRjaGluZyAmc3RydWN0IHRwYWNwaV9xdWlyayBlbnRyeS4KICAqCi0gKiBUaGUgbWF0Y2ggY3Jp
dGVyaWEgaXM6IHZlbmRvciwgZWMgYW5kIGJpb3MgbXVjaCBtYXRjaC4KKyAqIFRoZSBtYXRjaCBj
cml0ZXJpYSBpczogdmVuZG9yLCBlYyBhbmQgYmlvcyBtdXN0IG1hdGNoLgogICovCiBzdGF0aWMg
dW5zaWduZWQgbG9uZyBfX2luaXQgdHBhY3BpX2NoZWNrX3F1aXJrcygKIAkJCWNvbnN0IHN0cnVj
dCB0cGFjcGlfcXVpcmsgKnFsaXN0LApAQCAtOTMwMyw3ICs5MzAzLDcgQEAgc3RhdGljIHN0cnVj
dCB0cGFjcGlfYmF0dGVyeV9kcml2ZXJfZGF0YQogCiAvKiBBQ1BJIGhlbHBlcnMvZnVuY3Rpb25z
L3Byb2JlcyAqLwogCi0vKioKKy8qCiAgKiBUaGlzIGV2YWx1YXRlcyBhIEFDUEkgbWV0aG9kIGNh
bGwgc3BlY2lmaWMgdG8gdGhlIGJhdHRlcnkKICAqIEFDUEkgZXh0ZW5zaW9uLiBUaGUgc3BlY2lm
aWNzIGFyZSB0aGF0IGFuIGVycm9yIGlzIG1hcmtlZAogICogaW4gdGhlIDMycmQgYml0IG9mIHRo
ZSByZXNwb25zZSwgc28gd2UganVzdCBjaGVjayB0aGF0IGhlcmUuCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBs
aXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
