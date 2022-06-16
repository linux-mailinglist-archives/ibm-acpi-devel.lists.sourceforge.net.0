Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB7754EDA1
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Jun 2022 00:50:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o1yJN-0004XT-Q8; Thu, 16 Jun 2022 22:50:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o1yJM-0004X1-6H
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 16 Jun 2022 22:50:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kjpBTWL0tfaDEOr8W5GVzLoxBzsGxVykzCTNbLbNN2E=; b=QbNsfZRv19/AopKvw3ocW1CRFv
 7Hjb+eoqiuhKKxGPNmJ58hi5fdO1bjcnjI3HnY01KYzmre+n3DbNXSzv3Vc/ceeKXgEr2Vg1IQ7kr
 kNwxkAS6DxX4CiM0pnrAVOgaBO1XO7Eo2b4z9Ck5LhIKAoH0RfFoG1tmdB3OK3Xmt5aE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kjpBTWL0tfaDEOr8W5GVzLoxBzsGxVykzCTNbLbNN2E=; b=iqeJRIIsgoMtvi0/ScIXvaozKl
 CebRCQVNIUFo+Di8GPCrEbJqZd3K1Y1rHS8adYdZXbdOElPgmGY3VJil82RN8vSqODptsfBPoyjNM
 DYGiGOu6c0wpb67B0Apy44HEC6359xpo3hUHot71iCG/NFJDTlE8AtYUsLiGIYGE/PHw=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1yJI-004YeQ-Bl
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 16 Jun 2022 22:50:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655419796; x=1686955796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o6/VwsxPg/x4V5W8fgtZTd11tOBaTZVyMQ4yK6BNrFI=;
 b=aBOnFBa0SUla6qpRJGl44Vsw2K9AEeZWKVu1EMH+aAKAKgoCmDZf/iPc
 D8kX76aA7glbC0v8hOX/XVvHODOAeb+vppdc6QCm8mMj7a35mJlQdVOth
 c6v1Ggh2zd6b6spwmmC7y4SuBjY0J4dMAI5Df1vm565SkVyRVQqg7KQH1
 7OQBigbjUUWvfQB+7LiQ3kFuByDtz1zE4fOPV0gHUs/VoLao9fM5ZO1Pn
 BhbnuQ7zToRAITxonHcYCcrFjLKvHdQqeOB+y39sYFCWGRD+qaKVS6LQA
 7F5lpDojnNmHhhUc4HOMKD0/imtHrcmWRXZCUJuuXXZU7XuJE3v7BPinX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280402500"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280402500"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 15:49:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="763032835"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga005.jf.intel.com with ESMTP; 16 Jun 2022 15:49:47 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 4659067; Fri, 17 Jun 2022 01:49:52 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 17 Jun 2022 01:49:51 +0300
Message-Id: <20220616224951.66660-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220616224951.66660-1-andriy.shevchenko@linux.intel.com>
References: <20220616224951.66660-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Replace enabled(),
 onoff() and other similar places by str_*()
 helpers. Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
 --- drivers/platform/x86/thinkpad_acpi.c | 55 +++++++++++ 1 file changed,
 21 insertions(+), 34 deletions(-) 
 Content analysis details:   (-3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1yJI-004YeQ-Bl
Subject: [ibm-acpi-devel] [PATCH v1 2/2] platform/x86: thinkpad_acpi:
 Replace custom str_on_off() etc
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

Replace enabled(), onoff() and other similar places by str_*() helpers.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 55 +++++++++++-----------------
 1 file changed, 21 insertions(+), 34 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index eab50d47f567..5950c69edf8b 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -64,6 +64,7 @@
 #include <linux/seq_file.h>
 #include <linux/slab.h>
 #include <linux/string.h>
+#include <linux/string_helpers.h>
 #include <linux/sysfs.h>
 #include <linux/types.h>
 #include <linux/uaccess.h>
@@ -261,8 +262,6 @@ enum tpacpi_hkey_event_t {
 #define TPACPI_DBG_BRGHT	0x0020
 #define TPACPI_DBG_MIXER	0x0040
 
-#define onoff(status, bit) ((status) & (1 << (bit)) ? "on" : "off")
-#define enabled(status, bit) ((status) & (1 << (bit)) ? "enabled" : "disabled")
 #define strlencmp(a, b) (strncmp((a), (b), strlen(b)))
 
 
@@ -1316,9 +1315,7 @@ static int tpacpi_rfk_procfs_read(const enum tpacpi_rfk_id id, struct seq_file *
 				return status;
 		}
 
-		seq_printf(m, "status:\t\t%s\n",
-				(status == TPACPI_RFK_RADIO_ON) ?
-					"enabled" : "disabled");
+		seq_printf(m, "status:\t\t%s\n", str_enabled_disabled(status == TPACPI_RFK_RADIO_ON));
 		seq_printf(m, "commands:\tenable, disable\n");
 	}
 
@@ -1345,8 +1342,7 @@ static int tpacpi_rfk_procfs_write(const enum tpacpi_rfk_id id, char *buf)
 
 	if (status != -1) {
 		tpacpi_disclose_usertask("procfs", "attempt to %s %s\n",
-				(status == TPACPI_RFK_RADIO_ON) ?
-						"enable" : "disable",
+				str_enable_disable(status == TPACPI_RFK_RADIO_ON),
 				tpacpi_rfkill_names[id]);
 		res = (tpacpi_rfkill_switches[id]->ops->set_status)(status);
 		tpacpi_rfk_update_swstate(tpacpi_rfkill_switches[id]);
@@ -3503,8 +3499,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 	if (acpi_evalf(hkey_handle, &status, "WLSW", "qd")) {
 		tp_features.hotkey_wlsw = 1;
 		radiosw_state = !!status;
-		pr_info("radio switch found; radios are %s\n",
-			enabled(status, 0));
+		pr_info("radio switch found; radios are %s\n", str_enabled_disabled(status & BIT(0)));
 	}
 
 	tabletsw_state = hotkey_init_tablet_mode();
@@ -4163,7 +4158,7 @@ static int hotkey_read(struct seq_file *m)
 	if (res)
 		return res;
 
-	seq_printf(m, "status:\t\t%s\n", enabled(status, 0));
+	seq_printf(m, "status:\t\t%s\n", str_enabled_disabled(status & BIT(0)));
 	if (hotkey_all_mask) {
 		seq_printf(m, "mask:\t\t0x%08x\n", hotkey_user_mask);
 		seq_printf(m, "commands:\tenable, disable, reset, <mask>\n");
@@ -4296,9 +4291,8 @@ static int bluetooth_set_status(enum tpacpi_rfkill_state state)
 {
 	int status;
 
-	vdbg_printk(TPACPI_DBG_RFKILL,
-		"will attempt to %s bluetooth\n",
-		(state == TPACPI_RFK_RADIO_ON) ? "enable" : "disable");
+	vdbg_printk(TPACPI_DBG_RFKILL, "will attempt to %s bluetooth\n",
+		    str_enable_disable(state == TPACPI_RFK_RADIO_ON));
 
 #ifdef CONFIG_THINKPAD_ACPI_DEBUGFACILITIES
 	if (dbg_bluetoothemul) {
@@ -4662,9 +4656,8 @@ static int wan_set_status(enum tpacpi_rfkill_state state)
 {
 	int status;
 
-	vdbg_printk(TPACPI_DBG_RFKILL,
-		"will attempt to %s wwan\n",
-		(state == TPACPI_RFK_RADIO_ON) ? "enable" : "disable");
+	vdbg_printk(TPACPI_DBG_RFKILL, "will attempt to %s wwan\n",
+		    str_enable_disable(state == TPACPI_RFK_RADIO_ON));
 
 #ifdef CONFIG_THINKPAD_ACPI_DEBUGFACILITIES
 	if (dbg_wwanemul) {
@@ -4840,9 +4833,8 @@ static int uwb_set_status(enum tpacpi_rfkill_state state)
 {
 	int status;
 
-	vdbg_printk(TPACPI_DBG_RFKILL,
-		"will attempt to %s UWB\n",
-		(state == TPACPI_RFK_RADIO_ON) ? "enable" : "disable");
+	vdbg_printk(TPACPI_DBG_RFKILL, "will attempt to %s UWB\n",
+		    str_enable_disable(state == TPACPI_RFK_RADIO_ON));
 
 #ifdef CONFIG_THINKPAD_ACPI_DEBUGFACILITIES
 	if (dbg_uwbemul) {
@@ -5196,11 +5188,11 @@ static int video_read(struct seq_file *m)
 		return autosw;
 
 	seq_printf(m, "status:\t\tsupported\n");
-	seq_printf(m, "lcd:\t\t%s\n", enabled(status, 0));
-	seq_printf(m, "crt:\t\t%s\n", enabled(status, 1));
+	seq_printf(m, "lcd:\t\t%s\n", str_enabled_disabled(status & BIT(0)));
+	seq_printf(m, "crt:\t\t%s\n", str_enabled_disabled(status & BIT(1)));
 	if (video_supported == TPACPI_VIDEO_NEW)
-		seq_printf(m, "dvi:\t\t%s\n", enabled(status, 3));
-	seq_printf(m, "auto:\t\t%s\n", enabled(autosw, 0));
+		seq_printf(m, "dvi:\t\t%s\n", str_enabled_disabled(status & BIT(3)));
+	seq_printf(m, "auto:\t\t%s\n", str_enabled_disabled(autosw & BIT(0)));
 	seq_printf(m, "commands:\tlcd_enable, lcd_disable\n");
 	seq_printf(m, "commands:\tcrt_enable, crt_disable\n");
 	if (video_supported == TPACPI_VIDEO_NEW)
@@ -5631,7 +5623,7 @@ static int light_read(struct seq_file *m)
 		status = light_get_status();
 		if (status < 0)
 			return status;
-		seq_printf(m, "status:\t\t%s\n", onoff(status, 0));
+		seq_printf(m, "status:\t\t%s\n", str_on_off(status & BIT(0)));
 		seq_printf(m, "commands:\ton, off\n");
 	}
 
@@ -6087,9 +6079,7 @@ static int __init led_init(struct ibm_init_struct *iibm)
 	return 0;
 }
 
-#define str_led_status(s) \
-	((s) == TPACPI_LED_OFF ? "off" : \
-		((s) == TPACPI_LED_ON ? "on" : "blinking"))
+#define str_led_status(s)	((s) >= TPACPI_LED_BLINK ? "blinking" : str_on_off(s))
 
 static int led_read(struct seq_file *m)
 {
@@ -6106,8 +6096,7 @@ static int led_read(struct seq_file *m)
 			status = led_get_status(i);
 			if (status < 0)
 				return -EIO;
-			seq_printf(m, "%d:\t\t%s\n",
-				       i, str_led_status(status));
+			seq_printf(m, "%d:\t\t%s\n", i, str_led_status(status));
 		}
 	}
 
@@ -7832,8 +7821,7 @@ static int volume_read(struct seq_file *m)
 			seq_printf(m, "level:\t\t%d\n",
 					status & TP_EC_AUDIO_LVL_MSK);
 
-		seq_printf(m, "mute:\t\t%s\n",
-				onoff(status, TP_EC_AUDIO_MUTESW));
+		seq_printf(m, "mute:\t\t%s\n", str_on_off(status & BIT(TP_EC_AUDIO_MUTESW)));
 
 		if (volume_control_allowed) {
 			seq_printf(m, "commands:\tunmute, mute\n");
@@ -9062,7 +9050,7 @@ static int fan_read(struct seq_file *m)
 
 		seq_printf(m, "status:\t\t%s\n"
 			       "level:\t\t%d\n",
-			       (status != 0) ? "enabled" : "disabled", status);
+			       str_enabled_disabled(status), status);
 		break;
 
 	case TPACPI_FAN_RD_TPEC:
@@ -9071,8 +9059,7 @@ static int fan_read(struct seq_file *m)
 		if (rc)
 			return rc;
 
-		seq_printf(m, "status:\t\t%s\n",
-			       (status != 0) ? "enabled" : "disabled");
+		seq_printf(m, "status:\t\t%s\n", str_enabled_disabled(status));
 
 		rc = fan_get_speed(&speed);
 		if (rc < 0)
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
