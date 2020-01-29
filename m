Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD6114D23F
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 29 Jan 2020 22:01:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1iwuSm-0006Nk-Oh; Wed, 29 Jan 2020 21:01:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1iwuSk-0006N6-4Q
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Jan 2020 21:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YGDLv7UtvUExIQpyaC6weVQ/8+cI+LwseMCgXPmjUzA=; b=ELbgPy1j0zktOxqdZCwb1VQLcn
 42giWTTPP5LofXMar+RkFfuFuyDqbxCUZPPyKhIITaIgP4uJB/KhTLZO7DWfJ8YE46ppjln7YesBW
 2ASH/WNftxAzsw5LbNbWV4+LvPzAoMtvmIWElMrn1aC2W5kSXqFf+IFq64QboDdCdV08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YGDLv7UtvUExIQpyaC6weVQ/8+cI+LwseMCgXPmjUzA=; b=bwoKtausQWRBwtACAh41cLDoNW
 BBmP4LXwtskd4/fAFDBRZmTd1FZpkp7A1+VyY7FXJ51csFUnXg172qHy0YY0K7c/r+Ac8gyrww+0e
 3P9NxwdVsJEbV1ES6/6HpFKGgzY/6S+U6W3szUFaaPsJGDR+HNiHb2iypbJcFesOcPBk=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iwuSf-004MvL-45
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Jan 2020 21:01:26 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580330625;
 bh=4/3u1sKFM78XGpkDgV4KNfly5sI7hYOdhg5y4muK8Lk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ny5Y29X98ytDCL1RVvsxIfwWNZCZjZyFTlWIBzSUmzZNWFK65Yl2R8Lv6u1D9ZiDj
 P+9qIdjp95vJNarBhzqPFJ9wHhoc0z6Gvz+B1wEQGKWo3I3A6KON0355Adm9Kem0IE
 K+FAjKY9AU4iU4/e6aPuCtgpgQplngWFZ2SmeNiU=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Wed, 29 Jan 2020 21:43:36 +0100
Message-Id: <20200129204338.4055-2-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200129204338.4055-1-linux@weissschuh.net>
References: <20200129204338.4055-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: weissschuh.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iwuSf-004MvL-45
Subject: [ibm-acpi-devel] [PATCH 1/3] platform/x86: thinkpad_acpi: remove
 unused defines
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
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VGhleSB3ZXJlIG5ldmVyIHVzZWQuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgV2Vpw59zY2h1aCA8
bGludXhAd2Vpc3NzY2h1aC5uZXQ+Ci0tLQogZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRf
YWNwaS5jIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyBiL2RyaXZlcnMvcGxhdGZv
cm0veDg2L3RoaW5rcGFkX2FjcGkuYwppbmRleCBkYTc5NGRjZmRkOTIuLjJkM2E5OWUzZWZiNyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCisrKyBiL2Ry
aXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwpAQCAtOTMyMyw5ICs5MzIzLDYgQEAg
c3RhdGljIHN0cnVjdCBpYm1fc3RydWN0IG11dGVfbGVkX2RyaXZlcl9kYXRhID0gewogI2RlZmlu
ZSBHRVRfU1RPUAkiQkNTRyIKICNkZWZpbmUgU0VUX1NUT1AJIkJDU1MiCiAKLSNkZWZpbmUgU1RB
UlRfQVRUUiAiY2hhcmdlX3N0YXJ0X3RocmVzaG9sZCIKLSNkZWZpbmUgU1RPUF9BVFRSICAiY2hh
cmdlX3N0b3BfdGhyZXNob2xkIgotCiBlbnVtIHsKIAlCQVRfQU5ZID0gMCwKIAlCQVRfUFJJTUFS
WSA9IDEsCi0tIAoyLjI1LjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
