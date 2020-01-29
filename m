Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D354714D23E
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 29 Jan 2020 22:01:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1iwuSm-0008SP-6T; Wed, 29 Jan 2020 21:01:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1iwuSk-0008Ry-4t
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Jan 2020 21:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BZ5Zy3FQuCHBf3aceRBudR7nQlaJmtoPvRfFhZVKWHY=; b=Zkhfs+iMgjnL3X3dCaV8IOjXKc
 F5otD2ZYiKpqbNi13kqOLt3rY5Cc3mXUhoFixldQjyx/2/E8ryQXHVjHv4B5IhF7D9syt9d3ytUAU
 ctbGfigGBfJawZHtaiS0pW43krdt6CjDEmOfs6FnqjjLCrnuWdU56WVpfjmYvzzuNtGA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BZ5Zy3FQuCHBf3aceRBudR7nQlaJmtoPvRfFhZVKWHY=; b=EqpL0yflXzcYB98z5G59xCMCKG
 mNznJ0JELrbLpiN6VFQ55N+/7EYupnFRcwWc7yiepUQwVF7dv0zENKZmTIvJhrPPvZlBpwhYnFRnI
 Ivrd3oyC49Q/+JzfLc9CbCrlGcvrYbwBGOZT/+ogyGMzlyMFl8KAfdxDQzC/Uk/LG4Xs=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iwuSg-004Imh-Ba
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Jan 2020 21:01:26 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580330625;
 bh=WQpcTQM59ICWLbo7nhLJM/haB2c2OkM0qICuhuLiH4o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EWhJ9v1zokSnYPGBPxBD2UCv3jZtj8tN+MLd2Uwthrn0J6F6KvR9IDyT6T7g3xpwz
 1i9nmTfvCXY5WfoUWV18Rvx8gNkr7SHMHWHEcPTCNS4tw7GQY32mfHd/Jshs7Mw8wn
 NIodntsmFpEEUIarZyLnn9x3avTsjsTLXw3gZMLY=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Wed, 29 Jan 2020 21:43:37 +0100
Message-Id: <20200129204338.4055-3-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200129204338.4055-2-linux@weissschuh.net>
References: <20200129204338.4055-1-linux@weissschuh.net>
 <20200129204338.4055-2-linux@weissschuh.net>
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
X-Headers-End: 1iwuSg-004Imh-Ba
Subject: [ibm-acpi-devel] [PATCH 2/3] platform/x86: thinkpad_acpi: use
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
cGx5OiBjb3JlOiBBZGQgQ0hBUkdFX0NPTlRST0xfe1NUQVJUX1RIUkVTSE9MRCxFTkRfVEhSRVNI
T0xEfSBwcm9wZXJ0aWVzIikuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgV2Vpw59zY2h1aCA8bGlu
dXhAd2Vpc3NzY2h1aC5uZXQ+Ci0tLQogZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNw
aS5jIHwgMTYgKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlu
a3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKaW5kZXgg
MmQzYTk5ZTNlZmI3Li4yNWU4Nzc3ODkzNTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGxhdGZvcm0v
eDg2L3RoaW5rcGFkX2FjcGkuYworKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9h
Y3BpLmMKQEAgLTk2MDgsNDAgKzk2MDgsNDAgQEAgc3RhdGljIHNzaXplX3QgdHBhY3BpX2JhdHRl
cnlfc2hvdyhpbnQgd2hhdCwKIAlyZXR1cm4gc3ByaW50ZihidWYsICIlZFxuIiwgcmV0KTsKIH0K
IAotc3RhdGljIHNzaXplX3QgY2hhcmdlX3N0YXJ0X3RocmVzaG9sZF9zaG93KHN0cnVjdCBkZXZp
Y2UgKmRldmljZSwKK3N0YXRpYyBzc2l6ZV90IGNoYXJnZV9jb250cm9sX3N0YXJ0X3RocmVzaG9s
ZF9zaG93KHN0cnVjdCBkZXZpY2UgKmRldmljZSwKIAkJCQlzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0
ZSAqYXR0ciwKIAkJCQljaGFyICpidWYpCiB7CiAJcmV0dXJuIHRwYWNwaV9iYXR0ZXJ5X3Nob3co
VEhSRVNIT0xEX1NUQVJULCBkZXZpY2UsIGJ1Zik7CiB9CiAKLXN0YXRpYyBzc2l6ZV90IGNoYXJn
ZV9zdG9wX3RocmVzaG9sZF9zaG93KHN0cnVjdCBkZXZpY2UgKmRldmljZSwKK3N0YXRpYyBzc2l6
ZV90IGNoYXJnZV9jb250cm9sX3N0b3BfdGhyZXNob2xkX3Nob3coc3RydWN0IGRldmljZSAqZGV2
aWNlLAogCQkJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAogCQkJCWNoYXIgKmJ1ZikK
IHsKIAlyZXR1cm4gdHBhY3BpX2JhdHRlcnlfc2hvdyhUSFJFU0hPTERfU1RPUCwgZGV2aWNlLCBi
dWYpOwogfQogCi1zdGF0aWMgc3NpemVfdCBjaGFyZ2Vfc3RhcnRfdGhyZXNob2xkX3N0b3JlKHN0
cnVjdCBkZXZpY2UgKmRldiwKK3N0YXRpYyBzc2l6ZV90IGNoYXJnZV9jb250cm9sX3N0YXJ0X3Ro
cmVzaG9sZF9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJCQkJc3RydWN0IGRldmljZV9hdHRy
aWJ1dGUgKmF0dHIsCiAJCQkJY29uc3QgY2hhciAqYnVmLCBzaXplX3QgY291bnQpCiB7CiAJcmV0
dXJuIHRwYWNwaV9iYXR0ZXJ5X3N0b3JlKFRIUkVTSE9MRF9TVEFSVCwgZGV2LCBidWYsIGNvdW50
KTsKIH0KIAotc3RhdGljIHNzaXplX3QgY2hhcmdlX3N0b3BfdGhyZXNob2xkX3N0b3JlKHN0cnVj
dCBkZXZpY2UgKmRldiwKK3N0YXRpYyBzc2l6ZV90IGNoYXJnZV9jb250cm9sX3N0b3BfdGhyZXNo
b2xkX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwKIAkJCQlzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0
ZSAqYXR0ciwKIAkJCQljb25zdCBjaGFyICpidWYsIHNpemVfdCBjb3VudCkKIHsKIAlyZXR1cm4g
dHBhY3BpX2JhdHRlcnlfc3RvcmUoVEhSRVNIT0xEX1NUT1AsIGRldiwgYnVmLCBjb3VudCk7CiB9
CiAKLXN0YXRpYyBERVZJQ0VfQVRUUl9SVyhjaGFyZ2Vfc3RhcnRfdGhyZXNob2xkKTsKLXN0YXRp
YyBERVZJQ0VfQVRUUl9SVyhjaGFyZ2Vfc3RvcF90aHJlc2hvbGQpOworc3RhdGljIERFVklDRV9B
VFRSX1JXKGNoYXJnZV9jb250cm9sX3N0YXJ0X3RocmVzaG9sZCk7CitzdGF0aWMgREVWSUNFX0FU
VFJfUlcoY2hhcmdlX2NvbnRyb2xfc3RvcF90aHJlc2hvbGQpOwogCiBzdGF0aWMgc3RydWN0IGF0
dHJpYnV0ZSAqdHBhY3BpX2JhdHRlcnlfYXR0cnNbXSA9IHsKLQkmZGV2X2F0dHJfY2hhcmdlX3N0
YXJ0X3RocmVzaG9sZC5hdHRyLAotCSZkZXZfYXR0cl9jaGFyZ2Vfc3RvcF90aHJlc2hvbGQuYXR0
ciwKKwkmZGV2X2F0dHJfY2hhcmdlX2NvbnRyb2xfc3RhcnRfdGhyZXNob2xkLmF0dHIsCisJJmRl
dl9hdHRyX2NoYXJnZV9jb250cm9sX3N0b3BfdGhyZXNob2xkLmF0dHIsCiAJTlVMTCwKIH07CiAK
LS0gCjIuMjUuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2libS1hY3BpLWRldmVsCg==
