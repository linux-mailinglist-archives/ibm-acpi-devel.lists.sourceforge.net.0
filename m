Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9072B56251B
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 30 Jun 2022 23:29:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o71ia-0001a2-L5; Thu, 30 Jun 2022 21:28:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o71iW-0001Zb-78
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I29RRlMYg36A50b7Nty0NWtq1h7Lb9uZNEQyjHDg1wo=; b=hgr7+frY0s068IJk25Ytc2SSxd
 AfMgs+V4BWSA8qTlMdxbrBnYZGbU1XMTl/Mk3wJOis9avvlUmDXerDrawR6pnOSfDW/eXa8safywc
 mKjGmDTDZrzUScV6QKGF4vSbQ9qOXpVSPNksRD4RRdbp9okTzweWgefmCZdAYS6rDukU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I29RRlMYg36A50b7Nty0NWtq1h7Lb9uZNEQyjHDg1wo=; b=P8Rekasr5kI01vyld32OmcU7b4
 rpvoDTrIToa+71YBeIgE04YOjOwaCWfT5NpgyK8VLrRNk5eUUXAHKtVI0I+VQ7U53dW1ibi+2j6vF
 +IuSIDXVKazVeargx3s1XJ1iBqBSjgehppkW2egSRbtTMUHCBGIEpNpwTqgK/9qbrx4c=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o71iS-0007Le-Oi
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656624528; x=1688160528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N5lyFqnVhHtCOFomEyKwnEiEJIcX2aeyjWniqc32Y2A=;
 b=OEPTVIfpMsKqrhYaPFARU/xHaouTbK/L9IYoK7YPyts8D3IVKOZp/Iwp
 N3L6mDo5C8rxI+Twex3fXk3fD9j0ByO4Oz4YHewOq/ZANojXf+IPWwUrM
 d4vlcTBDslZWN59mZaHQpQJHhqO3Sp7a8SGTdtB4mvvPEUWOsT4ALcp73
 CQ2kdwUskuLBAdXWpDMTH8aHVRRKU8V/xu2sIW9XiV8uxFFMgRRGovSRQ
 ZSgNtS5JpiQmS5xVZ5geDyBqdPxh++jO4/lT0yCteIb0fvoSSk7z67XFw
 PLCIipRDvPnnGVcQ6I4zCTOkwf9JzQ5RqqTVRGQrQs3Elb1WjMbEIb2MV A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="346463910"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="346463910"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 14:28:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="681143807"
Received: from black.fi.intel.com ([10.237.72.28])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jun 2022 14:28:25 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 1674F67; Fri,  1 Jul 2022 00:28:31 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Wolfram Sang <wsa@kernel.org>,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-pci@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Fri,  1 Jul 2022 00:28:16 +0300
Message-Id: <20220630212819.42958-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
References: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Replace open coded variant of
 acpi_match_video_device_handle()
 helper. Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
 --- drivers/acpi/video_detect.c | 8 +------- 1 file changed, 1 insertion(+),
 7 deletions(-) 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o71iS-0007Le-Oi
Subject: [ibm-acpi-devel] [PATCH v1 2/5] ACPI: video: Convert to use
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
 drivers/acpi/video_detect.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
index becc198e4c22..14ddbd821a46 100644
--- a/drivers/acpi/video_detect.c
+++ b/drivers/acpi/video_detect.c
@@ -59,16 +59,10 @@ static void acpi_video_parse_cmdline(void)
 static acpi_status
 find_video(acpi_handle handle, u32 lvl, void *context, void **rv)
 {
-	struct acpi_device *acpi_dev = acpi_fetch_acpi_dev(handle);
 	long *cap = context;
 	struct pci_dev *dev;
 
-	static const struct acpi_device_id video_ids[] = {
-		{ACPI_VIDEO_HID, 0},
-		{"", 0},
-	};
-
-	if (acpi_dev && !acpi_match_device_ids(acpi_dev, video_ids)) {
+	if (acpi_match_video_device_handle(handle)) {
 		dev = acpi_get_pci_dev(handle);
 		if (!dev)
 			return AE_OK;
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
