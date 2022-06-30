Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B45DC56251C
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 30 Jun 2022 23:29:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o71id-0007gD-Q3; Thu, 30 Jun 2022 21:28:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o71iR-0007fx-Nb
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jzdowd31R0S6YoLI45J5O8P7G6zBBhZc4DPshIAnaTM=; b=hYhwt1fSi2krgdLd4RRkoSBplZ
 pnBPDJGoyeqyytbVDGRJhIccmry8S1Harh912UyK6fdDhsbCRFAa/2psUvbUNJpSUEXScextjMswZ
 MR7zoA4bE7o9z1/XwOSFCXq0WzK6+Q3yeBFGz5oehrjDs/lbMIWTHpOk/OCEPsNRcGwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jzdowd31R0S6YoLI45J5O8P7G6zBBhZc4DPshIAnaTM=; b=TBExuBK+eYRPLe76wUwJFj1umv
 BCM+Z29oSwUraPr5RIV98FSAxUBNZLokcOBm1Y/6ead6NgGAZ2cFE6scKiX7K5+c7app0eO/Apfzx
 z0I0/kvkMIEtzTV0t/L/K4tR4RpTP/XNbI/4jDVI33HWrkErn4qjbOBjiKkt8Ne7yVwI=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o71iO-002jgr-DY
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656624524; x=1688160524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cVLSgdqy7Mp0ViPp4OflMAPYFT4f/Xn/28iMuk2xBgQ=;
 b=VAmxMTJyYWP5q5BUGp1UZkifydxqOkuBlPigKs5fsaHmD/4Ke/ROANZp
 MAs+yp+1YRzDwVGDlBvkQTDkURvaxuGsh8y4kLRM+zUWOQHUNIbiowhkA
 dvV4sVZfoBIupnpFnUpFQoLExhPbEzQ8dNmRG8tI/7C9t6Up5xZDci6Ix
 6kBYrYCTZmgc4L1tdjbg+jYgnFpgRAicp9FiCPpIPw+YRJZ/7UA/sfLR3
 HRoDWcvHhfYLLOoqsrfHUmqJhY3YchMk8++z2jZdRUfjeV5eYnLGlJdGJ
 iANkvFEkMI46vjFjY2Roa3uNRByCFZYsQg/fqc8o/wWhwaIbXEpxGbTdx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="280021836"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="280021836"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 14:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="591454757"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga002.jf.intel.com with ESMTP; 30 Jun 2022 14:28:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 1FBE113C; Fri,  1 Jul 2022 00:28:31 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Wolfram Sang <wsa@kernel.org>,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-pci@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Fri,  1 Jul 2022 00:28:17 +0300
Message-Id: <20220630212819.42958-3-andriy.shevchenko@linux.intel.com>
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
 --- drivers/i2c/i2c-core-acpi.c | 15 +++++ 1 file changed, 5 insertions(+),
 10 deletions(-) 
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
X-Headers-End: 1o71iO-002jgr-DY
Subject: [ibm-acpi-devel] [PATCH v1 3/5] i2c: acpi: Convert to use
 acpi_match_video_device_handle() helper
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
 drivers/i2c/i2c-core-acpi.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
index 08b561f0709d..e6de54dec010 100644
--- a/drivers/i2c/i2c-core-acpi.c
+++ b/drivers/i2c/i2c-core-acpi.c
@@ -128,15 +128,6 @@ static int i2c_acpi_fill_info(struct acpi_resource *ares, void *data)
 	return 1;
 }
 
-static const struct acpi_device_id i2c_acpi_ignored_device_ids[] = {
-	/*
-	 * ACPI video acpi_devices, which are handled by the acpi-video driver
-	 * sometimes contain a SERIAL_TYPE_I2C ACPI resource, ignore these.
-	 */
-	{ ACPI_VIDEO_HID, 0 },
-	{}
-};
-
 static int i2c_acpi_do_lookup(struct acpi_device *adev,
 			      struct i2c_acpi_lookup *lookup)
 {
@@ -150,7 +141,11 @@ static int i2c_acpi_do_lookup(struct acpi_device *adev,
 	if (!acpi_dev_ready_for_enumeration(adev))
 		return -ENODEV;
 
-	if (acpi_match_device_ids(adev, i2c_acpi_ignored_device_ids) == 0)
+	/*
+	 * ACPI video devices, which are handled by the acpi-video driver,
+	 * sometimes contain a SERIAL_TYPE_I2C ACPI resource, ignore these.
+	 */
+	if (acpi_match_video_device_handle(adev->handle))
 		return -ENODEV;
 
 	memset(info, 0, sizeof(*info));
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
