Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B8C14D240
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 29 Jan 2020 22:01:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1iwuSn-0001y1-N3; Wed, 29 Jan 2020 21:01:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1iwuSk-0001xZ-4L
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Jan 2020 21:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ryh1+gNWVUjNoPFRiM2IbDyrhi0uduFPBugfricVvk=; b=JKhcLDvYSNY5/lU9I2hgA1Tqut
 RatyjHzbuoDFx3cfgcwwRr0jRPLZ7VwqniGlREtfa4UrdLPGMdTIozlupkyoKayykkd8iKeWLVi4H
 cqhqXCt3rK7H1SMaIo+X5c5nliRMnEipRmjw7tZIZtKShJ+x4xB0OptoghDlYEhhFMb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ryh1+gNWVUjNoPFRiM2IbDyrhi0uduFPBugfricVvk=; b=RhZPY5EkXpvV7dBILouyj2EBXA
 Eso15vApiKj7udHP48zGEuS2/R7u31eZ1qo1a1MZdvzTMSeM7J4p/hVVDv1h/5c5mS535jVisH/QW
 +5+lfzDvFcDXl4WK7kWBU5c2HBUr50fbjy4tDi1U+BdE1N0pqlmifOaeHTb/wkqofMrU=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iwuSg-004Img-BQ
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Jan 2020 21:01:26 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580330625;
 bh=pD9DOP8o4NJhC/UfLuYM3FwTvcditszUCwuLr1jQOhI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Lo3CWjR9+PQBenoD9/aUC4/pQkmeeNo0mSR7gtu4Mr27/32rP6HNnF3bBvzIwddal
 AVjq3GFWu3rj3QbcU1DbDhvAPP/Rk/oaBtvk7/Lz1ojFclLcdPpouOdc1B9IhaGURT
 DtLRKedTklhZUD18jesweSiH97PFcxiqqYO9umoE=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Wed, 29 Jan 2020 21:43:38 +0100
Message-Id: <20200129204338.4055-4-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200129204338.4055-3-linux@weissschuh.net>
References: <20200129204338.4055-1-linux@weissschuh.net>
 <20200129204338.4055-2-linux@weissschuh.net>
 <20200129204338.4055-3-linux@weissschuh.net>
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
X-Headers-End: 1iwuSg-004Img-BQ
Subject: [ibm-acpi-devel] [PATCH 3/3] platform/x86: thinkpad_acpi: restore
 old battery charge attributes
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

QWxpYXMgdGhlIG5ldyBzdGFuZGFyZCBhdHRyaWJ1dGVzIHRvIHRoZWlyIHByZXZpb3VzIG5hbWVz
LCBwcmVzZXJ2aW5nCmJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LgoKU2lnbmVkLW9mZi1ieTogVGhv
bWFzIFdlacOfc2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0PgotLS0KIGRyaXZlcnMvcGxhdGZv
cm0veDg2L3RoaW5rcGFkX2FjcGkuYyB8IDE0ICsrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3Ro
aW5rcGFkX2FjcGkuYyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwppbmRl
eCAyNWU4Nzc3ODkzNTIuLjQ0M2IyYjE2ZGMxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wbGF0Zm9y
bS94ODYvdGhpbmtwYWRfYWNwaS5jCisrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFk
X2FjcGkuYwpAQCAtOTYzOCwxMCArOTYzOCwyNCBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfY29u
dHJvbF9zdG9wX3RocmVzaG9sZF9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsCiAKIHN0YXRpYyBE
RVZJQ0VfQVRUUl9SVyhjaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGQpOwogc3RhdGljIERF
VklDRV9BVFRSX1JXKGNoYXJnZV9jb250cm9sX3N0b3BfdGhyZXNob2xkKTsKK3N0cnVjdCBkZXZp
Y2VfYXR0cmlidXRlIGRldl9hdHRyX2NoYXJnZV9zdGFydF90aHJlc2hvbGQgPSBfX0FUVFIoCisJ
Y2hhcmdlX3N0YXJ0X3RocmVzaG9sZCwKKwkwNjQ0LAorCWNoYXJnZV9jb250cm9sX3N0YXJ0X3Ro
cmVzaG9sZF9zaG93LAorCWNoYXJnZV9jb250cm9sX3N0YXJ0X3RocmVzaG9sZF9zdG9yZQorKTsK
K3N0cnVjdCBkZXZpY2VfYXR0cmlidXRlIGRldl9hdHRyX2NoYXJnZV9zdG9wX3RocmVzaG9sZCA9
IF9fQVRUUigKKwljaGFyZ2Vfc3RvcF90aHJlc2hvbGQsCisJMDY0NCwKKwljaGFyZ2VfY29udHJv
bF9zdG9wX3RocmVzaG9sZF9zaG93LAorCWNoYXJnZV9jb250cm9sX3N0b3BfdGhyZXNob2xkX3N0
b3JlCispOwogCiBzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqdHBhY3BpX2JhdHRlcnlfYXR0cnNb
XSA9IHsKIAkmZGV2X2F0dHJfY2hhcmdlX2NvbnRyb2xfc3RhcnRfdGhyZXNob2xkLmF0dHIsCiAJ
JmRldl9hdHRyX2NoYXJnZV9jb250cm9sX3N0b3BfdGhyZXNob2xkLmF0dHIsCisJJmRldl9hdHRy
X2NoYXJnZV9zdGFydF90aHJlc2hvbGQuYXR0ciwKKwkmZGV2X2F0dHJfY2hhcmdlX3N0b3BfdGhy
ZXNob2xkLmF0dHIsCiAJTlVMTCwKIH07CiAKLS0gCjIuMjUuMAoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxp
c3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
