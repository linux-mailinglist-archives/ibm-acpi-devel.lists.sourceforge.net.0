Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CF956251E
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 30 Jun 2022 23:29:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o71ia-00067x-8T; Thu, 30 Jun 2022 21:28:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o71iR-000672-5S
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r2WWPMm1Y9zZL+e6VyCM2YGPW/OgbHtNsioh48hEsss=; b=LNY8uwFvaSXSKOMq/xCtQGqrV9
 FtVXEgy1dxnX86c5yxEEeWi379gyISFkDmPUBbIaoL5egs4yj4ju8WWU6yyYsRW7975be4wlOELok
 SIKNaeSXDPq7ARz0lDzIBd+27wboRUTjjUIz8077IjVYozxRmDbjw2wnVNQBWFV4Jl/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r2WWPMm1Y9zZL+e6VyCM2YGPW/OgbHtNsioh48hEsss=; b=diANzmqeyNSRxnvYmgoUb96Ljz
 P5n6MqcF0mnCWJK8aUuPRbDHt+cDh2bXFeC2UJ2ji76+TgHLoV1q/yWVroHuqvUhSibIbrsWJZeKY
 jh98fxu6nL3pHYR9fII/GxTXa68vUXK+Y/I3RpBIN1aGbQU55zbLRDyAuCNLgV2XH5qE=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o71iQ-002jgr-Cd
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656624526; x=1688160526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B0VMjhosdrjMBEAvWD5hkIGzjJXjnMXp82dnbVLODJA=;
 b=koXhUqxKzxsey7JHqFuhCauaXKVtkjemKW9cQxTMzhwbbqmGTf95oJNI
 SbSnYiwcbeRxRnjz3Boj+kzwvA+cAlWaQabAKa55bcXOa0OMtc8ht0kIW
 u0OhAZmHmEgFTI4vGb0lXtmJRpx9n5GW+mYWPGANqVTdpyy7u7DzYu7Cm
 23Y5E5GbwuTri7va8iOQuqY5HAynZURHOCId1BsF9iwkzm9RKRG+GCdJq
 tVGNHfd9yEw8Xlf6dTs7EVI971yoD09ygdmV3wCGYnF2pCLcLLaFMKFR3
 V2oVfRHwGn6ntpev7hrZv9QGaYOlop4lXwyW1GZZ2FgfjVj4wIvHvmIdv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="280021837"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="280021837"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 14:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="591454759"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga002.jf.intel.com with ESMTP; 30 Jun 2022 14:28:25 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 339A61A0; Fri,  1 Jul 2022 00:28:31 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Wolfram Sang <wsa@kernel.org>,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-pci@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Fri,  1 Jul 2022 00:28:19 +0300
Message-Id: <20220630212819.42958-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
References: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Replace open coded variant of
 acpi_match_video_device_handle()
 helper. Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
 --- drivers/platform/x86/thinkpad_acpi.c | 4 +--- 1 file changed,
 1 insertion(+), 3 deletions(-) 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o71iQ-002jgr-Cd
Subject: [ibm-acpi-devel] [PATCH v1 5/5] platform/x86: thinkpad_acpi:
 Convert to use acpi_match_video_device_handle() helper
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Mark Gross <markgross@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Replace open coded variant of acpi_match_video_device_handle() helper.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 22d4e8633e30..624cb9436522 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -748,9 +748,7 @@ static acpi_status __init tpacpi_acpi_handle_locate_callback(acpi_handle handle,
 			u32 level, void *context, void **return_value)
 {
 	if (!strcmp(context, "video")) {
-		struct acpi_device *dev = acpi_fetch_acpi_dev(handle);
-
-		if (!dev || strcmp(ACPI_VIDEO_HID, acpi_device_hid(dev)))
+		if (!acpi_match_video_device_handle(handle))
 			return AE_OK;
 	}
 
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
