Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D668B15B9E4
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 13 Feb 2020 08:09:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1j28c5-00087N-2N; Thu, 13 Feb 2020 07:08:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <root@nitin-ThinkPad-X1-Yoga-4th.lenovo.com>)
 id 1j28c3-00087B-TM
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 13 Feb 2020 07:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Nh/sE8E54kbhANiaxeyQqh/Z69sM3wG9T1CQJH+T/g=; b=JZmgpb9XKfx0MmgLcd0CBy0a+A
 76QhZOwfdXxejuFn+5sGWKvnoDCP3TyEzG3tU2GiTJGaSfxHSGoe0gajR4plzqgyJtSZrdM8Axv1r
 d3sFdQDtujgbf0m30UFH4rIAGp/fEs5AixXrPz1NBGRBqWJRi7Tcc/j9vI1Aem1pVXPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8Nh/sE8E54kbhANiaxeyQqh/Z69sM3wG9T1CQJH+T/g=; b=YTRZvkCPSKB8wijn4pEwfYWnAk
 uQ9ePiUZlr5jzIdvxk67g7rzBuR6/FyBxKNJYMGFn9IfBAuvvn8np6XsMDE0VzoQ7jr+exanuGB25
 +arrqpO4HjNfPunvQd+Ft8i5S9CAkjW8C++M9qW73Wwsqnc8kUYd6mYyvQfSSkzDBGLQ=;
Received: from [120.138.48.130] (helo=nitin-ThinkPad-X1-Yoga-4th.lenovo.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1j28c2-002hIt-CZ
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 13 Feb 2020 07:08:39 +0000
Received: by nitin-ThinkPad-X1-Yoga-4th.lenovo.com (Postfix, from userid 0)
 id A66634C1051; Thu, 13 Feb 2020 15:43:32 +0900 (JST)
From: Nitin Joshi <njoshi1@lenovo.com>
To: ibm-acpi@hmh.eng.br,
	dvhart@infradead.org,
	andy@infradead.org
Date: Thu, 13 Feb 2020 15:42:32 +0900
Message-Id: <20200213064232.13267-1-njoshi1@lenovo.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1j28c2-002hIt-CZ
Subject: [ibm-acpi-devel] [PATCH] thinkpad_acpi: Add sysfs entry for
 lcdshadow feature
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Benjamin Berg <bberg@redhat.com>,
 Nitin Joshi <njoshi1@lenovo.com>, mpearson@lenovo.com,
 platform-driver-x86@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

  This feature is supported on some Thinkpad products like T490s, Thinkpad
  X1 yoga 4th Gen etc . The lcdshadow feature can be enabled and disabled
  when user press "Fn" + "D" key. Currently, no user feedback is given for
  this action. Adding as sysfs entry allows userspace to show an On Screen
  Display whenever the setting changes.

  Summary of changes is mentioned below :

 - Added TP_HKEY_EV_LCDSHADOW_CHANGED for consistency inside the driver
 - Added unmapped LCDSHADOW to keymap
 - Added lcdshadow_get function to read value using ACPI
 - Added lcdshadow_refresh function to re-read value and send notification
 - Added sysfs group creation to tpaci_lcdshadow_init
 - Added lcdshadow_exit to remove sysfs group again
 - Implemented lcdshadow_enable_show/lcdshadow_enable_store
 - Added handler to tpacpi_driver_event to update refresh lcdshadow
 - Explicitly call tpacpi_driver_event for extended keyset

 Patch is tested on kernel 5.5 on Thinkpad X1 Yoga 4th Gen.

Co-developed-by: Benjamin Berg <bberg@redhat.com>
Signed-off-by: Benjamin Berg <bberg@redhat.com>
Reviewed-by: Mark Pearson <mpearson@lenovo.com>
Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 117 +++++++++++++++++++++++----
 1 file changed, 102 insertions(+), 15 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index da794dcfdd92..bd137cc7baee 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -155,6 +155,7 @@ enum tpacpi_hkey_event_t {
 	TP_HKEY_EV_VOL_UP		= 0x1015, /* Volume up or unmute */
 	TP_HKEY_EV_VOL_DOWN		= 0x1016, /* Volume down or unmute */
 	TP_HKEY_EV_VOL_MUTE		= 0x1017, /* Mixer output mute */
+	TP_HKEY_EV_LCDSHADOW_CHANGED	= 0x130f, /* Eprivacy status changed */
 
 	/* Reasons for waking up from S3/S4 */
 	TP_HKEY_EV_WKUP_S3_UNDOCK	= 0x2304, /* undock requested, S3 */
@@ -1925,6 +1926,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 
 	/* Lenovo extended keymap, starting at 0x1300 */
 	TP_ACPI_HOTKEYSCAN_EXTENDED_START,
+	TP_ACPI_HOTKEYSCAN_LCDSHADOW = 67,
 	/* first new observed key (star, favorites) is 0x1311 */
 	TP_ACPI_HOTKEYSCAN_STAR = 69,
 	TP_ACPI_HOTKEYSCAN_CLIPPING_TOOL2,
@@ -3342,7 +3344,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
 		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
 		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN
+		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
 
 		},
 
@@ -3444,7 +3446,8 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
 		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
 		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
+		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
+		KEY_RESERVED,         /* LCD Shadow/ePrivacy */
 		KEY_UNKNOWN,
 
 		KEY_BOOKMARKS,       /* Favorite app, 0x311 */
@@ -3921,6 +3924,7 @@ static bool hotkey_notify_hotkey(const u32 hkey,
 		scancode -= (0x300 - TP_ACPI_HOTKEYSCAN_EXTENDED_START);
 		if (scancode >= TP_ACPI_HOTKEYSCAN_EXTENDED_START &&
 		    scancode < TPACPI_HOTKEY_MAP_LEN) {
+			tpacpi_driver_event(hkey);
 			tpacpi_input_send_key(scancode);
 			return true;
 		}
@@ -9717,6 +9721,12 @@ static struct ibm_struct battery_driver_data = {
 
 static int lcdshadow_state;
 
+static void lcdshadow_notify_change(void)
+{
+	sysfs_notify(&tpacpi_pdev->dev.kobj, NULL,
+		     "lcdshadow_enable");
+}
+
 static int lcdshadow_on_off(bool state)
 {
 	acpi_handle set_shadow_handle;
@@ -9731,6 +9741,7 @@ static int lcdshadow_on_off(bool state)
 		return -EIO;
 
 	lcdshadow_state = state;
+	lcdshadow_notify_change();
 	return 0;
 }
 
@@ -9743,27 +9754,90 @@ static int lcdshadow_set(bool on)
 	return lcdshadow_on_off(on);
 }
 
-static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
+static int lcdshadow_get(void)
 {
 	acpi_handle get_shadow_handle;
 	int output;
 
-	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GSSS", &get_shadow_handle))) {
-		lcdshadow_state = -ENODEV;
-		return 0;
-	}
+	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GSSS",
+					&get_shadow_handle)))
+		return -ENODEV;
 
-	if (!acpi_evalf(get_shadow_handle, &output, NULL, "dd", 0)) {
-		lcdshadow_state = -EIO;
+	if (!acpi_evalf(get_shadow_handle, &output, NULL, "dd", 0))
 		return -EIO;
+
+	if (!(output & 0x10000))
+		return -ENODEV;
+
+	return output & 0x1;
+}
+
+static void lcdshadow_refresh(void)
+{
+	int new_state;
+
+	new_state = lcdshadow_get();
+
+	if (lcdshadow_state != new_state) {
+		lcdshadow_state = new_state;
+		lcdshadow_notify_change();
 	}
-	if (!(output & 0x10000)) {
-		lcdshadow_state = -ENODEV;
-		return 0;
-	}
-	lcdshadow_state = output & 0x1;
+}
 
-	return 0;
+
+/* sysfs lcdshadow entry */
+static ssize_t lcdshadow_enable_show(struct device *dev,
+				      struct device_attribute *attr,
+				      char *buf)
+{
+	if (lcdshadow_state < 0)
+		return lcdshadow_state;
+
+	return snprintf(buf, PAGE_SIZE, "%d\n", lcdshadow_state);
+}
+
+static ssize_t lcdshadow_enable_store(struct device *dev,
+				       struct device_attribute *attr,
+				       const char *buf, size_t count)
+{
+	unsigned long t;
+	int res;
+
+	if (parse_strtoul(buf, 1, &t))
+		return -EINVAL;
+
+	tpacpi_disclose_usertask(attr->attr.name, "set to %ld\n", t);
+
+	res = lcdshadow_set(!!t);
+
+	return (res < 0) ? res : count;
+}
+
+static DEVICE_ATTR_RW(lcdshadow_enable);
+
+static struct attribute *lcdshadow_attributes[] = {
+	&dev_attr_lcdshadow_enable.attr,
+	NULL
+};
+
+static const struct attribute_group lcdshadow_attr_group = {
+	.attrs = lcdshadow_attributes,
+};
+
+
+static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
+{
+	int res;
+
+	lcdshadow_state = lcdshadow_get();
+
+	if (lcdshadow_state < 0 && lcdshadow_state != -ENODEV)
+		return lcdshadow_state;
+
+	res = sysfs_create_group(&tpacpi_pdev->dev.kobj,
+				  &lcdshadow_attr_group);
+
+	return res;
 }
 
 static void lcdshadow_resume(void)
@@ -9805,11 +9879,18 @@ static int lcdshadow_write(char *buf)
 	return lcdshadow_set(state);
 }
 
+static void lcdshadow_exit(void)
+{
+	sysfs_remove_group(&tpacpi_pdev->dev.kobj,
+			   &lcdshadow_attr_group);
+}
+
 static struct ibm_struct lcdshadow_driver_data = {
 	.name = "lcdshadow",
 	.resume = lcdshadow_resume,
 	.read = lcdshadow_read,
 	.write = lcdshadow_write,
+	.exit = lcdshadow_exit,
 };
 
 /****************************************************************************
@@ -9859,6 +9940,12 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
 
 		mutex_unlock(&kbdlight_mutex);
 	}
+	if (lcdshadow_state >= 0) {
+		switch (hkey_event) {
+		case TP_HKEY_EV_LCDSHADOW_CHANGED:
+			lcdshadow_refresh();
+		}
+	}
 }
 
 static void hotkey_driver_event(const unsigned int scancode)
-- 
2.17.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
