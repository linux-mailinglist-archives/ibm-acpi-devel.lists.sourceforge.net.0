Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 331D114EE9B
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 31 Jan 2020 15:38:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ixXR0-0007uS-7z; Fri, 31 Jan 2020 14:38:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1ixXQy-0007u7-Kt
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 31 Jan 2020 14:38:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b5KEBe0iFeYmuKIQan+ehc9tke7StpVhm0gqlFtimOg=; b=Yz/sYBmtxyuyVSagUwDf6tigNh
 9qLBMrhc4BkQ4HEOEpgWGqpUBH6bwUEn/9tDb1s6022GcO7409pewb+hz9ZqCDcJQ1Fxi7Y4YKb2U
 n/pgRzDs928SOYILZb4866p1rkOkFZYG4PhIhx/Oa0zTRSI3OOLVKEBwh4MkAGf9Vz38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b5KEBe0iFeYmuKIQan+ehc9tke7StpVhm0gqlFtimOg=; b=dyddMRrfVASyIbK67F65aNppQl
 /9+z3vZnIzKZtwKW1KL8c1tPs37bLauPKd88TSRtUhOagXoE3jtT4p7N4+bvwIh76DZm+h0KTiKiE
 XZQ3Vtt/Ms2DlQTOQe8ycuCtuPJgGNYs3lGMsD8efRI4mOo/bQQ4+cqr9luvADLBN2Oc=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ixXQw-00CBCz-KQ
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 31 Jan 2020 14:38:12 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580481445;
 bh=lQqAJct9Yuo28e2dXgyV7zV5l+ie2h3xCuN3ZDZgzwM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Mo1hrMOy2XUB0qm3UVpsPM6dGt9espikJCl1ifrhbiXLyphxJPouwAUYmvzto5AtI
 sjYqNhE04DJKJtg4C91uiQQFrgNQIEwTJ9LG2vWUvz/K0UWKnh0N01NmjSBMCnw1jC
 vKfaJNtCxJzOZdfWWJDOD8L76qh/mwXQR2ESg8ug=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Fri, 31 Jan 2020 15:36:50 +0100
Message-Id: <20200131143650.4149-4-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131143650.4149-3-linux@weissschuh.net>
References: <20200131143650.4149-1-linux@weissschuh.net>
 <20200131143650.4149-2-linux@weissschuh.net>
 <20200131143650.4149-3-linux@weissschuh.net>
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
X-Headers-End: 1ixXQw-00CBCz-KQ
Subject: [ibm-acpi-devel] [PATCH v2 3/3] platform/x86: thinkpad_acpi:
 restore old battery charge attributes
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
eCA1ZjBlMzI5OTc3OGEuLjJjYmNkMmUzMDkyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wbGF0Zm9y
bS94ODYvdGhpbmtwYWRfYWNwaS5jCisrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFk
X2FjcGkuYwpAQCAtOTYzOCwxMCArOTYzOCwyNCBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfY29u
dHJvbF9lbmRfdGhyZXNob2xkX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwKIAogc3RhdGljIERF
VklDRV9BVFRSX1JXKGNoYXJnZV9jb250cm9sX3N0YXJ0X3RocmVzaG9sZCk7CiBzdGF0aWMgREVW
SUNFX0FUVFJfUlcoY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZCk7CitzdHJ1Y3QgZGV2aWNl
X2F0dHJpYnV0ZSBkZXZfYXR0cl9jaGFyZ2Vfc3RhcnRfdGhyZXNob2xkID0gX19BVFRSKAorCWNo
YXJnZV9zdGFydF90aHJlc2hvbGQsCisJMDY0NCwKKwljaGFyZ2VfY29udHJvbF9zdGFydF90aHJl
c2hvbGRfc2hvdywKKwljaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGRfc3RvcmUKKyk7Citz
dHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSBkZXZfYXR0cl9jaGFyZ2Vfc3RvcF90aHJlc2hvbGQgPSBf
X0FUVFIoCisJY2hhcmdlX3N0b3BfdGhyZXNob2xkLAorCTA2NDQsCisJY2hhcmdlX2NvbnRyb2xf
ZW5kX3RocmVzaG9sZF9zaG93LAorCWNoYXJnZV9jb250cm9sX2VuZF90aHJlc2hvbGRfc3RvcmUK
Kyk7CiAKIHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICp0cGFjcGlfYmF0dGVyeV9hdHRyc1tdID0g
ewogCSZkZXZfYXR0cl9jaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGQuYXR0ciwKIAkmZGV2
X2F0dHJfY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZC5hdHRyLAorCSZkZXZfYXR0cl9jaGFy
Z2Vfc3RhcnRfdGhyZXNob2xkLmF0dHIsCisJJmRldl9hdHRyX2NoYXJnZV9zdG9wX3RocmVzaG9s
ZC5hdHRyLAogCU5VTEwsCiB9OwogCi0tIAoyLjI1LjAKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0Cmli
bS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
