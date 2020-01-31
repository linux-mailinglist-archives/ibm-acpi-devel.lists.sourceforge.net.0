Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA9014EE9D
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 31 Jan 2020 15:38:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ixXR5-0008FG-He; Fri, 31 Jan 2020 14:38:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1ixXR4-0008F9-7J
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 31 Jan 2020 14:38:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u0M6LBEQdbXU5TXe0ve5W0V5HVVFk9bgo7oa1CvkCw0=; b=TbFvqnaXHbZIsTobSPM8hU6B7S
 d41R2ijm2JHaDCO2ZxqnIiAvm6kk3VQ7bX74nnKH06MMu9I6dkhgWhvEsB+rwRJZ0eSVoQbdP+YxY
 Hl5LwJypJrJOigCSpciwjtfwsKDDYehlK0UaJBx+TFRuw3QDOr7QEXIhhpZMckhhHl8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u0M6LBEQdbXU5TXe0ve5W0V5HVVFk9bgo7oa1CvkCw0=; b=c3WUFj5jLOms0Xcd2NuuER8A/U
 vpm64RD2ELN+YxRKMrVStC1vlULv5FmNHyIf5ayKN8YB0UBb66rDl8zMeEl+DiBKmsSXt5u9a5cH6
 B/RASenGFwswHoiao9opddM3fl0gqz8CJ4O1H7KaekENdkBYx/fo6wq/EKjnOdoA7pQQ=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ixXR3-006KWX-0h
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 31 Jan 2020 14:38:18 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580481445;
 bh=d/HBCqKEtu13ihHegP4tYREK/3yRPONvTZnf4qI8ZCw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZVQtTJaW72oLYszbZhRPQo4xGsWLMoyESnDL+o7J319cFH+B9GCpB2i1pYD30eRyp
 K8HQR2ycFZMprJJc9VGildCStKEd3GVi6ufrcnCW+YtMThGan2MCY4oV/uddjiBNoe
 FbwMa/wwxGUWrzjah06clsXgCfiDukyQ2j0vNUz8=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Fri, 31 Jan 2020 15:36:49 +0100
Message-Id: <20200131143650.4149-3-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131143650.4149-2-linux@weissschuh.net>
References: <20200131143650.4149-1-linux@weissschuh.net>
 <20200131143650.4149-2-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
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
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ixXR3-006KWX-0h
Subject: [ibm-acpi-devel] [PATCH v2 2/3] platform/x86: thinkpad_acpi: use
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
MmQzYTk5ZTNlZmI3Li41ZjBlMzI5OTc3OGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGxhdGZvcm0v
eDg2L3RoaW5rcGFkX2FjcGkuYworKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9h
Y3BpLmMKQEAgLTk2MDgsNDAgKzk2MDgsNDAgQEAgc3RhdGljIHNzaXplX3QgdHBhY3BpX2JhdHRl
cnlfc2hvdyhpbnQgd2hhdCwKIAlyZXR1cm4gc3ByaW50ZihidWYsICIlZFxuIiwgcmV0KTsKIH0K
IAotc3RhdGljIHNzaXplX3QgY2hhcmdlX3N0YXJ0X3RocmVzaG9sZF9zaG93KHN0cnVjdCBkZXZp
Y2UgKmRldmljZSwKK3N0YXRpYyBzc2l6ZV90IGNoYXJnZV9jb250cm9sX3N0YXJ0X3RocmVzaG9s
ZF9zaG93KHN0cnVjdCBkZXZpY2UgKmRldmljZSwKIAkJCQlzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0
ZSAqYXR0ciwKIAkJCQljaGFyICpidWYpCiB7CiAJcmV0dXJuIHRwYWNwaV9iYXR0ZXJ5X3Nob3co
VEhSRVNIT0xEX1NUQVJULCBkZXZpY2UsIGJ1Zik7CiB9CiAKLXN0YXRpYyBzc2l6ZV90IGNoYXJn
ZV9zdG9wX3RocmVzaG9sZF9zaG93KHN0cnVjdCBkZXZpY2UgKmRldmljZSwKK3N0YXRpYyBzc2l6
ZV90IGNoYXJnZV9jb250cm9sX2VuZF90aHJlc2hvbGRfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXZp
Y2UsCiAJCQkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCiAJCQkJY2hhciAqYnVmKQog
ewogCXJldHVybiB0cGFjcGlfYmF0dGVyeV9zaG93KFRIUkVTSE9MRF9TVE9QLCBkZXZpY2UsIGJ1
Zik7CiB9CiAKLXN0YXRpYyBzc2l6ZV90IGNoYXJnZV9zdGFydF90aHJlc2hvbGRfc3RvcmUoc3Ry
dWN0IGRldmljZSAqZGV2LAorc3RhdGljIHNzaXplX3QgY2hhcmdlX2NvbnRyb2xfc3RhcnRfdGhy
ZXNob2xkX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwKIAkJCQlzdHJ1Y3QgZGV2aWNlX2F0dHJp
YnV0ZSAqYXR0ciwKIAkJCQljb25zdCBjaGFyICpidWYsIHNpemVfdCBjb3VudCkKIHsKIAlyZXR1
cm4gdHBhY3BpX2JhdHRlcnlfc3RvcmUoVEhSRVNIT0xEX1NUQVJULCBkZXYsIGJ1ZiwgY291bnQp
OwogfQogCi1zdGF0aWMgc3NpemVfdCBjaGFyZ2Vfc3RvcF90aHJlc2hvbGRfc3RvcmUoc3RydWN0
IGRldmljZSAqZGV2LAorc3RhdGljIHNzaXplX3QgY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9s
ZF9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJCQkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUg
KmF0dHIsCiAJCQkJY29uc3QgY2hhciAqYnVmLCBzaXplX3QgY291bnQpCiB7CiAJcmV0dXJuIHRw
YWNwaV9iYXR0ZXJ5X3N0b3JlKFRIUkVTSE9MRF9TVE9QLCBkZXYsIGJ1ZiwgY291bnQpOwogfQog
Ci1zdGF0aWMgREVWSUNFX0FUVFJfUlcoY2hhcmdlX3N0YXJ0X3RocmVzaG9sZCk7Ci1zdGF0aWMg
REVWSUNFX0FUVFJfUlcoY2hhcmdlX3N0b3BfdGhyZXNob2xkKTsKK3N0YXRpYyBERVZJQ0VfQVRU
Ul9SVyhjaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGQpOworc3RhdGljIERFVklDRV9BVFRS
X1JXKGNoYXJnZV9jb250cm9sX2VuZF90aHJlc2hvbGQpOwogCiBzdGF0aWMgc3RydWN0IGF0dHJp
YnV0ZSAqdHBhY3BpX2JhdHRlcnlfYXR0cnNbXSA9IHsKLQkmZGV2X2F0dHJfY2hhcmdlX3N0YXJ0
X3RocmVzaG9sZC5hdHRyLAotCSZkZXZfYXR0cl9jaGFyZ2Vfc3RvcF90aHJlc2hvbGQuYXR0ciwK
KwkmZGV2X2F0dHJfY2hhcmdlX2NvbnRyb2xfc3RhcnRfdGhyZXNob2xkLmF0dHIsCisJJmRldl9h
dHRyX2NoYXJnZV9jb250cm9sX2VuZF90aHJlc2hvbGQuYXR0ciwKIAlOVUxMLAogfTsKIAotLSAK
Mi4yNS4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJt
LWFjcGktZGV2ZWwK
