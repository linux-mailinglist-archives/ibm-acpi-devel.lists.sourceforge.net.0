Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3AE14EE9A
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 31 Jan 2020 15:38:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ixXQx-0007Ua-EZ; Fri, 31 Jan 2020 14:38:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1ixXQw-0007UP-0L
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 31 Jan 2020 14:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YGDLv7UtvUExIQpyaC6weVQ/8+cI+LwseMCgXPmjUzA=; b=NKqNbIGi/7SEEt2gT8kChO03rm
 FvngOUtsYC1vklM0C6rNTvBCPtxzSIjuOU17Q4oBrzpmelmCSeZi3lB3RJWBDzm6liTQSIr/+ulj9
 9iVgQdlf5iy21x8oFQ3hGnrwTtW27A50jiVkSS1L34T0LH90rfaucOkZ/adKG3qc7msA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YGDLv7UtvUExIQpyaC6weVQ/8+cI+LwseMCgXPmjUzA=; b=lwqZxMqZYGBXRYqAa4iUTm/doS
 Dxaok57CD3LpgezyZPHxp/LC5Rdt5vZ5Gq1+1wdoXYKwZUV9uWGoIi+2CIzc5U/2gyGCrwczQXc2g
 mheX1Za0Dd5phrxbUtKS6e6kknzgK4cYGvmuZN2U2wuXSMRstekU65F5BWZxwD6T5LEw=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ixXQr-00CBCL-Vk
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 31 Jan 2020 14:38:09 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580481445;
 bh=4/3u1sKFM78XGpkDgV4KNfly5sI7hYOdhg5y4muK8Lk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mxHONhCrxhMsOg28VDzAHF05wc1X3+jUEzdu0NPeEGArBwZQnEcxtJFDlzabGQA6s
 Nij8iAYwj2XcBG3WH0tv/N6evPn/2Q676fBtWCQRfuFsbFuPor6DxPwF9T9jUpEUqK
 s45SV1Pbk8LWy6RNz9jFzWJmkBsmGSiahsBfFNj8=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Fri, 31 Jan 2020 15:36:48 +0100
Message-Id: <20200131143650.4149-2-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131143650.4149-1-linux@weissschuh.net>
References: <20200131143650.4149-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
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
X-Headers-End: 1ixXQr-00CBCL-Vk
Subject: [ibm-acpi-devel] [PATCH v2 1/3] platform/x86: thinkpad_acpi: remove
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
