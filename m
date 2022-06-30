Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7BF56251A
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 30 Jun 2022 23:29:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o71iH-00066a-5j; Thu, 30 Jun 2022 21:28:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o71iF-00066U-TN
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nf0yJDPIRXqhEZAHDlbWNKFuLvLaH+QMyVa6/uKPjrI=; b=S22FZSAzgeT1Jx2bOoHbLwy4iu
 Z5OqaRVRSaLfa3baMqW3OrlHw0mwhCsdB/5+h1PgAA74DH/83XMwtnu71QLqtlu3BKWy9ZfLOWMRW
 ge0w+MHdh1opmSROMMSIfv/h/EqzAegPYGTrQGh1/uZr/TQ0ORHZrLpGdUj+TeJY3Gqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Nf0yJDPIRXqhEZAHDlbWNKFuLvLaH+QMyVa6/uKPjrI=; b=X
 mgHVdCuB4pB81M/gCpGULr89PzkivMa3DpUoUR8FNFG9CmxRhloOyUUFxAFaJXlqPvx9Nmlbw/Suq
 HTv8IbXf+ZL52HTBQ2q4z9ejmdBWHQQKCWsRURfrFgFbPFbx56EOiC0v9+FOCVeUHG/wpsjZZnf+c
 ZNd7hpsa3HkJc7Kg=;
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o71iE-0007Kj-Kz
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Jun 2022 21:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656624514; x=1688160514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vov2D8XGLh7l4fzlqjW0FYaJ1gTowtT9oIai97+IhHY=;
 b=iQXAPjYmmSrYMlP48imxK+hgDxNAc2YH1r2XSIMj9yw68EhcTxTPZQbO
 0YVSdNHpRgffwpeeM9YeubfqCt9qeGQe6jSPybt1jYvPFF4TyvcxZf9sQ
 dM/Yfv3f94dUkQAJsrfvnasg4/+rVY+Ne0yUYYUWKlvbdGaBaAnU5NyYg
 Qg9whkPV8i9tqHuERJWHBBXB9Kcpflsp5xEykszjJsAuq+3/2AKYMgCbM
 9jcw1MrDtEGQwmC8tYqaR2ev0461NNFx7EYHtB5tHl+zrdew+/DrbRsh9
 bHeQvewpzRyYpH25Es5DnPvHkDLL92gyUyNdKPzNjhstvwxMSkmRUicfx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="344160257"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="344160257"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 14:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="588945471"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2022 14:28:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 0B8D111E; Fri,  1 Jul 2022 00:28:30 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Wolfram Sang <wsa@kernel.org>,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-pci@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Fri,  1 Jul 2022 00:28:15 +0300
Message-Id: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There are a couple of users that open code functionality of
 matching a given handle against ACPI video device IDs. The current approach
 duplicates ID table along with the matching code. Consolidate it [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o71iE-0007Kj-Kz
Subject: [ibm-acpi-devel] [PATCH v1 1/5] ACPI: utils: Introduce
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

There are a couple of users that open code functionality of matching
a given handle against ACPI video device IDs. The current approach
duplicates ID table along with the matching code. Consolidate it
under the acpi_match_video_device_handle() helper's hood.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/acpi/utils.c | 19 +++++++++++++++++++
 include/linux/acpi.h |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
index 3a9773a09e19..4800aba3b99c 100644
--- a/drivers/acpi/utils.c
+++ b/drivers/acpi/utils.c
@@ -929,6 +929,25 @@ static int __init acpi_backlight(char *str)
 }
 __setup("acpi_backlight=", acpi_backlight);
 
+static const struct acpi_device_id video_device_ids[] = {
+	{ACPI_VIDEO_HID, 0},
+	{}
+};
+
+/**
+ * acpi_match_video_device_handle - match handle against ACPI video device IDs
+ * @handle: ACPI handle to match
+ *
+ * Return: true when matches, otherwise false.
+ */
+bool acpi_match_video_device_handle(acpi_handle handle)
+{
+	struct acpi_device *adev = acpi_fetch_acpi_dev(handle);
+
+	return adev && !acpi_match_device_ids(adev, video_device_ids);
+}
+EXPORT_SYMBOL(acpi_match_video_device_handle);
+
 /**
  * acpi_match_platform_list - Check if the system matches with a given list
  * @plat: pointer to acpi_platform_list table terminated by a NULL entry
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index 7b96a8bff6d2..c48e8a0df0cc 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -439,6 +439,8 @@ extern char *wmi_get_acpi_device_uid(const char *guid);
 
 extern char acpi_video_backlight_string[];
 extern long acpi_is_video_device(acpi_handle handle);
+extern bool acpi_match_video_device_handle(acpi_handle handle);
+
 extern int acpi_blacklisted(void);
 extern void acpi_osi_setup(char *str);
 extern bool acpi_osi_is_win8(void);
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
