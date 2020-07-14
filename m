Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A729621EE2A
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 Jul 2020 12:43:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jvIOz-0000d3-6c; Tue, 14 Jul 2020 10:43:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jvIOx-0000ct-1f
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 10:43:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hsclb43OGpW2+42j+owZITEf7922CHlvyN/YdyB8urU=; b=Rdo/0NWE9U9jEsOCQVg345r4RC
 ickicekCgZjGD/gnyBCSikvbdfPFUAnDtxLaVof6sn06zCd9VS+8/O/lq8o06wW9AyAqDPQjxrL0f
 gL8bA4+RGw9huQEvp+4GHv4wwwv2DVqd1BemysTCIX8r/6kjE6uV42wf4TLWh/kdAWq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hsclb43OGpW2+42j+owZITEf7922CHlvyN/YdyB8urU=; b=L
 gNxnOqs3Kc/lmGQe5bIrCxqbsHgZxm/CPoAy4IfvQrLJregA8u9Gmed1VZue7970eGGVlhyBcaFcj
 SFtjblLAqyDu6XCV7AO3H8VlxmaeUsxW36XX0W80WvLltWxMEKefrQTm9b48KOlTwZ7OfURKCL0hh
 RumDXpgg/MCtqSl8=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvIOp-006mqJ-Mx
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 10:43:06 +0000
IronPort-SDR: DxbefzaUchi6mcEPG5LUMC7zVfkCA5sQ47zUh09YLSgoRiOqltlpHvChvDpPQJz3Drn0WJPkc6
 /m9UjnRra59Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213669345"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="213669345"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 03:42:53 -0700
IronPort-SDR: IKbb5oTuB9riJkh8zdPfUetmQg5yrINxqRl4T/getpVVzv7DPgeIEOLnLFHgUR8Vvh2+TyMBZR
 VxbzqUNNBN2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="269976501"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jul 2020 03:42:52 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 30BBA16B; Tue, 14 Jul 2020 13:42:50 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net, Darren Hart <dvhart@infradead.org>,
 platform-driver-x86@vger.kernel.org
Date: Tue, 14 Jul 2020 13:42:50 +0300
Message-Id: <20200714104250.87970-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jvIOp-006mqJ-Mx
Subject: [ibm-acpi-devel] [PATCH v1] platform/x86: thinkpad_acpi: Limit size
 when call strndup_user()
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
Cc: Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

During conversion to use strndup_user() the commit 35d13c7a0512
("platform/x86: thinkpad_acpi: Use strndup_user() in dispatch_proc_write()")
missed the fact that buffer coming thru procfs is not immediately NULL
terminated. We have to limit size when calling strndup_user().

Fixes: 35d13c7a0512 ("platform/x86: thinkpad_acpi: Use strndup_user() in dispatch_proc_write()")
Reported-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index f571d6254e7c..f411ad814cab 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -886,7 +886,7 @@ static ssize_t dispatch_proc_write(struct file *file,
 	if (!ibm || !ibm->write)
 		return -EINVAL;
 
-	kernbuf = strndup_user(userbuf, PAGE_SIZE);
+	kernbuf = strndup_user(userbuf, min_t(long, count, PAGE_SIZE));
 	if (IS_ERR(kernbuf))
 		return PTR_ERR(kernbuf);
 
-- 
2.27.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
