Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A192954EDA2
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Jun 2022 00:50:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o1yJN-0004jG-OW; Thu, 16 Jun 2022 22:50:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o1yJM-0004j6-TQ
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 16 Jun 2022 22:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8B1BNrbdvd3Lm14mKajtrd55QqN0Ns2mIHW+4BSoUpw=; b=BWgU38LXezZrPs0/KOZcSeOJv7
 TXGhW78tbg5ZYE/nQD8xl0HXv9bm6rua4XOAw+zLcUyZ9lWMzJMpqFTn8PdIHoC2T41amXqmiDbqa
 KHP2DJBSW/GzrAXwN7Z4KtkY721JmGFxZjTEj5Glz/TtNE1LJrihVDLQBwb7TXGUw+EA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8B1BNrbdvd3Lm14mKajtrd55QqN0Ns2mIHW+4BSoUpw=; b=k
 dKmCwYSHp7+WJWaCqVVdPEMHtCJ8Q+KGjypFG7YwypZys6ZIPtJp7cn/lQ5XiUyy/geHaL2pWbqPG
 GcQOvoijXDbaFdWQ4IPyM04MSq7xOsB6S9edxZNRqgNoZciGEsU8XU43FJ4Qd7qD0GuYhtv1OjhSM
 hyiCETvM8bSqL4yA=;
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1yJG-0003ni-9M
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 16 Jun 2022 22:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655419795; x=1686955795;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M/kbs4hpuxBedGBjPKpdONcCTJKC9Sqi4XBKaUNYaVM=;
 b=NQxuhOi28uawNmihafJzwZQN9h6f2jq84rFMRJ5LEuXkyO0w/vuE3NWX
 o5N87D6uMF+VHj1u0yv3C4sgKPCs4HfvUOON+6LR9N2C+tOOIC03BNi3g
 2CXucU0WtyHQ6ayEBdKcPQ7/0dhWL346lSiv+Buyk3SfR2f2orDmJtGTQ
 yn0ebMMWOmg3NceOtYZe40U6ylUBDHDamVt/ZaaRh1icBF0z9vVhVc2aG
 dRgv4StdDminlGp9yiAZ/iA9+wEbRehigmRaP9yJIp23lLyJXW5xdo/qP
 2Wa1MDnSTLwKafbUfcSc+Eob/eB5vJSXiFNG5lTlXiODu2C+lQWoydN6z Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="341024445"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="341024445"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 15:49:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="583816357"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga007.jf.intel.com with ESMTP; 16 Jun 2022 15:49:47 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 3B35E109; Fri, 17 Jun 2022 01:49:51 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 17 Jun 2022 01:49:50 +0300
Message-Id: <20220616224951.66660-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It's quite hard to understand in that zillions of headers
 that are included if any specific one is already listed. Sort headers for
 better maintenance. Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
 --- drivers/platform/x86/thinkpad_acpi.c | 58 +++++++++++++++ 1 file changed, 
 31 insertions(+), 27 deletions(-) 
 Content analysis details:   (-3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1yJG-0003ni-9M
Subject: [ibm-acpi-devel] [PATCH v1 1/2] platform/x86: thinkpad_acpi: Sort
 headers for better maintenance
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
Cc: Mark Gross <markgross@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

It's quite hard to understand in that zillions of headers that are included
if any specific one is already listed. Sort headers for better maintenance.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 58 +++++++++++++++-------------
 1 file changed, 31 insertions(+), 27 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index e6cb4a14cdd4..eab50d47f567 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -34,46 +34,50 @@
  *			    thanks to Chris Wright <chrisw@osdl.org>
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/init.h>
-#include <linux/types.h>
-#include <linux/string.h>
-#include <linux/list.h>
-#include <linux/mutex.h>
-#include <linux/sched.h>
-#include <linux/sched/signal.h>
-#include <linux/kthread.h>
-#include <linux/freezer.h>
-#include <linux/delay.h>
-#include <linux/slab.h>
-#include <linux/nvram.h>
-#include <linux/proc_fs.h>
-#include <linux/seq_file.h>
-#include <linux/sysfs.h>
+#include <linux/acpi.h>
 #include <linux/backlight.h>
 #include <linux/bitops.h>
+#include <linux/delay.h>
+#include <linux/dmi.h>
 #include <linux/fb.h>
-#include <linux/platform_device.h>
+#include <linux/freezer.h>
 #include <linux/hwmon.h>
 #include <linux/hwmon-sysfs.h>
+#include <linux/init.h>
 #include <linux/input.h>
-#include <linux/leds.h>
-#include <linux/rfkill.h>
-#include <linux/dmi.h>
 #include <linux/jiffies.h>
-#include <linux/workqueue.h>
-#include <linux/acpi.h>
+#include <linux/kernel.h>
+#include <linux/kthread.h>
+#include <linux/leds.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/nvram.h>
 #include <linux/pci.h>
-#include <linux/power_supply.h>
+#include <linux/platform_device.h>
 #include <linux/platform_profile.h>
-#include <sound/core.h>
-#include <sound/control.h>
-#include <sound/initval.h>
+#include <linux/power_supply.h>
+#include <linux/proc_fs.h>
+#include <linux/rfkill.h>
+#include <linux/sched.h>
+#include <linux/sched/signal.h>
+#include <linux/seq_file.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+#include <linux/sysfs.h>
+#include <linux/types.h>
 #include <linux/uaccess.h>
+#include <linux/workqueue.h>
+
 #include <acpi/battery.h>
 #include <acpi/video.h>
+
 #include <drm/drm_privacy_screen_driver.h>
+
+#include <sound/control.h>
+#include <sound/core.h>
+#include <sound/initval.h>
+
 #include "dual_accel_detect.h"
 
 /* ThinkPad CMOS commands */
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
