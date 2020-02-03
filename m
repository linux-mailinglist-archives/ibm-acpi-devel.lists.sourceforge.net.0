Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C821505C9
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Feb 2020 13:02:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1iyaQk-0005bl-OO; Mon, 03 Feb 2020 12:02:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1iyaQi-0005be-Gt
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Feb 2020 12:02:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LCL9z5ep2OLo0hAQHUxZghMNPkPdHVWggQlDt2thL/s=; b=aY85BmKrTRGoaJQIygereY5O7k
 IRzz5VQp+A0pkVikEZmj293urbeH278SKvyEpo/U6p88RS2ebDkxjmRa/32qpaYvicYOoVCTOQEDf
 yn0Qc1vCh73l8WoCBcEnFL2twY8gni/RvLv1YJA9zUZeuYv0ZEJZkR42+bcUExhLMAeg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LCL9z5ep2OLo0hAQHUxZghMNPkPdHVWggQlDt2thL/s=; b=dQA9pKxxnnsnt+XuYzkwL8xd//
 eGuWpay6NDyqAeUnZPuIFAi8Ti7Hx/n7n52uVAnyJMr1t7HlzO42a3NTXBeQRnT1rpY5AwVfmMGQF
 /bmy609FLYeMzP/nSynKlhWj7qCgA3dLb5PD4OXYOz7dai6WNVos3wt9UgpbVyyxv11A=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iyaQe-00FQga-Ej
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Feb 2020 12:02:16 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580731319;
 bh=+Okifast5Z8vy48S+GU5utB9xtgNB2T6HyQybZGy9QU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lCd6EmFRjcfVSf9KPW/Pb5jEK245CM+n2FWTxeU5ErT4p1PFul8W0Qki4uz4CGzUw
 04popHu62sT/mL3K2AQDbaW+tgnUDkekbocncbVhWy4LWbOCSPBY9mGm/FXBEHUuY7
 u7R1RBxFo2LbBBkzOIa5D4347raGJQ4R6p9CmLVs=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Mon,  3 Feb 2020 13:01:32 +0100
Message-Id: <20200203120132.102576-3-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200203120132.102576-2-linux@weissschuh.net>
References: <20200131143650.4149-1-linux@weissschuh.net>
 <20200203120132.102576-1-linux@weissschuh.net>
 <20200203120132.102576-2-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iyaQe-00FQga-Ej
Subject: [ibm-acpi-devel] [PATCH v3 2/2] platform/x86: thinkpad_acpi: use
 standard charge control attribute names
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

VGhlIHN0YW5kYXJkIGF0dHJpYnV0ZXMgd2VyZSBvbmx5IGludHJvZHVjZWQgYWZ0ZXIgdGhlIG9u
ZXMgZnJvbQp0aGlua3BhZF9hY3BpIGluIGNvbW1pdCA4MTNjYWI4ZjM5OTQgKCJwb3dlcjogc3Vw
cGx5OiBjb3JlOgpBZGQgQ0hBUkdFX0NPTlRST0xfe1NUQVJUX1RIUkVTSE9MRCxFTkRfVEhSRVNI
T0xEfSBwcm9wZXJ0aWVzIikuCgpUaGUgbmV3IHN0YW5kYXJkIGF0dHJpYnV0ZXMgYXJlIGFsaWFz
ZWQgdG8gdGhlaXIgcHJldmlvdXMgbmFtZXMsCnByZXNlcnZpbmcgYmFja3dhcmRzIGNvbXBhdGli
aWxpdHkuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgV2Vpw59zY2h1aCA8bGludXhAd2Vpc3NzY2h1
aC5uZXQ+Ci0tLQogZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgMjYgKysr
KysrKysrKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5r
cGFkX2FjcGkuYyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwppbmRleCAy
ZDNhOTllM2VmYjcuLjJjYmNkMmUzMDkyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94
ODYvdGhpbmtwYWRfYWNwaS5jCisrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2Fj
cGkuYwpAQCAtOTYwOCwzOCArOTYwOCw1MiBAQCBzdGF0aWMgc3NpemVfdCB0cGFjcGlfYmF0dGVy
eV9zaG93KGludCB3aGF0LAogCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVkXG4iLCByZXQpOwogfQog
Ci1zdGF0aWMgc3NpemVfdCBjaGFyZ2Vfc3RhcnRfdGhyZXNob2xkX3Nob3coc3RydWN0IGRldmlj
ZSAqZGV2aWNlLAorc3RhdGljIHNzaXplX3QgY2hhcmdlX2NvbnRyb2xfc3RhcnRfdGhyZXNob2xk
X3Nob3coc3RydWN0IGRldmljZSAqZGV2aWNlLAogCQkJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRl
ICphdHRyLAogCQkJCWNoYXIgKmJ1ZikKIHsKIAlyZXR1cm4gdHBhY3BpX2JhdHRlcnlfc2hvdyhU
SFJFU0hPTERfU1RBUlQsIGRldmljZSwgYnVmKTsKIH0KIAotc3RhdGljIHNzaXplX3QgY2hhcmdl
X3N0b3BfdGhyZXNob2xkX3Nob3coc3RydWN0IGRldmljZSAqZGV2aWNlLAorc3RhdGljIHNzaXpl
X3QgY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZF9zaG93KHN0cnVjdCBkZXZpY2UgKmRldmlj
ZSwKIAkJCQlzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKIAkJCQljaGFyICpidWYpCiB7
CiAJcmV0dXJuIHRwYWNwaV9iYXR0ZXJ5X3Nob3coVEhSRVNIT0xEX1NUT1AsIGRldmljZSwgYnVm
KTsKIH0KIAotc3RhdGljIHNzaXplX3QgY2hhcmdlX3N0YXJ0X3RocmVzaG9sZF9zdG9yZShzdHJ1
Y3QgZGV2aWNlICpkZXYsCitzdGF0aWMgc3NpemVfdCBjaGFyZ2VfY29udHJvbF9zdGFydF90aHJl
c2hvbGRfc3RvcmUoc3RydWN0IGRldmljZSAqZGV2LAogCQkJCXN0cnVjdCBkZXZpY2VfYXR0cmli
dXRlICphdHRyLAogCQkJCWNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQogewogCXJldHVy
biB0cGFjcGlfYmF0dGVyeV9zdG9yZShUSFJFU0hPTERfU1RBUlQsIGRldiwgYnVmLCBjb3VudCk7
CiB9CiAKLXN0YXRpYyBzc2l6ZV90IGNoYXJnZV9zdG9wX3RocmVzaG9sZF9zdG9yZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsCitzdGF0aWMgc3NpemVfdCBjaGFyZ2VfY29udHJvbF9lbmRfdGhyZXNob2xk
X3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwKIAkJCQlzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAq
YXR0ciwKIAkJCQljb25zdCBjaGFyICpidWYsIHNpemVfdCBjb3VudCkKIHsKIAlyZXR1cm4gdHBh
Y3BpX2JhdHRlcnlfc3RvcmUoVEhSRVNIT0xEX1NUT1AsIGRldiwgYnVmLCBjb3VudCk7CiB9CiAK
LXN0YXRpYyBERVZJQ0VfQVRUUl9SVyhjaGFyZ2Vfc3RhcnRfdGhyZXNob2xkKTsKLXN0YXRpYyBE
RVZJQ0VfQVRUUl9SVyhjaGFyZ2Vfc3RvcF90aHJlc2hvbGQpOworc3RhdGljIERFVklDRV9BVFRS
X1JXKGNoYXJnZV9jb250cm9sX3N0YXJ0X3RocmVzaG9sZCk7CitzdGF0aWMgREVWSUNFX0FUVFJf
UlcoY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZCk7CitzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0
ZSBkZXZfYXR0cl9jaGFyZ2Vfc3RhcnRfdGhyZXNob2xkID0gX19BVFRSKAorCWNoYXJnZV9zdGFy
dF90aHJlc2hvbGQsCisJMDY0NCwKKwljaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGRfc2hv
dywKKwljaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGRfc3RvcmUKKyk7CitzdHJ1Y3QgZGV2
aWNlX2F0dHJpYnV0ZSBkZXZfYXR0cl9jaGFyZ2Vfc3RvcF90aHJlc2hvbGQgPSBfX0FUVFIoCisJ
Y2hhcmdlX3N0b3BfdGhyZXNob2xkLAorCTA2NDQsCisJY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVz
aG9sZF9zaG93LAorCWNoYXJnZV9jb250cm9sX2VuZF90aHJlc2hvbGRfc3RvcmUKKyk7CiAKIHN0
YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICp0cGFjcGlfYmF0dGVyeV9hdHRyc1tdID0geworCSZkZXZf
YXR0cl9jaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGQuYXR0ciwKKwkmZGV2X2F0dHJfY2hh
cmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZC5hdHRyLAogCSZkZXZfYXR0cl9jaGFyZ2Vfc3RhcnRf
dGhyZXNob2xkLmF0dHIsCiAJJmRldl9hdHRyX2NoYXJnZV9zdG9wX3RocmVzaG9sZC5hdHRyLAog
CU5VTEwsCi0tIAoyLjI1LjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
