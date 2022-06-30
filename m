Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 844AC56251D
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 30 Jun 2022 23:29:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o71ia-0001Zy-HN; Thu, 30 Jun 2022 21:28:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o71iF-0001Yn-IZ
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=USx1PB5V5T/qFbqa3TDw0Tk6wH7aGJUJCSYeHC/NtwM=; b=a618wh/XVMYfqpQphLwl9krNOJ
 9OcQ0jzhime+8FKIZvOro6ixzsSqtoxRIy42Bt/kujCW4C/7VZh4NhmZ6ch23zS5Ia4r7iR2qNvdc
 8PpLLRUUQymF5JGOkO+8/sRyXXzlPPQEUtHPew8WAlcPJmHzkjTRAT1n8osOHxOSLyUE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=USx1PB5V5T/qFbqa3TDw0Tk6wH7aGJUJCSYeHC/NtwM=; b=O6XdVHXI0EXXIlMmDuJMPWGP/B
 YD5WmXOK9k7JtxU162v8TSRHVfr9tYcHOopLmZOxseZ9/UaNHtKfdZzaMQymOi1rbURWg143jHtOD
 UAUUM9Hzhx3NoHHMG0qlCHGFl+tLkD5yD6vgOhX/Dwi/k9N4rDYDa/PKotIuymqqk86Q=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o71iE-002jgX-8p
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656624514; x=1688160514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jdYxOV2rC4m5qbz+X1x7eTSjCsv8/obXsOi7V/f8hhY=;
 b=KUCk9u4W7Zt0wkZOY0T9XZO4CjPD0op0omMTDlg79zR9H/UHaBedODzd
 6h6Ft5bUFJ7H3269jj2A2fB8MJb2OVWkCDQR5GrQA9MJKs6tpuLQw1+d0
 C6xbYVG9eHVmcSUdME10WoENTBU0neQTz7i4PoZ2THT+mc2flLTK7wq6K
 aIQMq0q0Btq0VN1311SdFRqpA609Nt4KouA7QDh/FsuGxeGk9n70Iy1I8
 eMYaQWjzyHzqk5gthY2dCztruSCXp0QDvlYcP61H8635PLHp6blkcSkVw
 SRgcyILubZ/8Ydmo6p+aj0jrvNHMOgZhe7AfLYJs+Rqgq/gRsWZzPohb1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="265506574"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="265506574"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 14:28:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="648065571"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2022 14:28:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 2E4871E8; Fri,  1 Jul 2022 00:28:31 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Wolfram Sang <wsa@kernel.org>,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-pci@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Fri,  1 Jul 2022 00:28:18 +0300
Message-Id: <20220630212819.42958-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
References: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Replace open coded variant of
 acpi_match_video_device_handle()
 helper. Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
 --- drivers/pci/vgaarb.c | 4 +--- 1 file changed, 1 insertion(+),
 3 deletions(-)
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o71iE-002jgX-8p
Subject: [ibm-acpi-devel] [PATCH v1 4/5] PCI/VGA: Convert to use
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
 drivers/pci/vgaarb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pci/vgaarb.c b/drivers/pci/vgaarb.c
index f80b6ec88dc3..47058f70c2c9 100644
--- a/drivers/pci/vgaarb.c
+++ b/drivers/pci/vgaarb.c
@@ -585,9 +585,7 @@ static bool vga_is_firmware_default(struct pci_dev *pdev)
 static bool vga_arb_integrated_gpu(struct device *dev)
 {
 #if defined(CONFIG_ACPI)
-	struct acpi_device *adev = ACPI_COMPANION(dev);
-
-	return adev && !strcmp(acpi_device_hid(adev), ACPI_VIDEO_HID);
+	return acpi_match_video_device_handle(ACPI_HANDLE(dev));
 #else
 	return false;
 #endif
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
