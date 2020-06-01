Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED0D1EA6F8
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  1 Jun 2020 17:38:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jfmWG-0000C0-Bu; Mon, 01 Jun 2020 15:38:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1jfmWE-0000Bo-Rl
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 01 Jun 2020 15:38:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/XhvbxIIY2uctY1CX20CFXSXwqV1jDcjNfNVUiI/sP0=; b=AEYpNJfqmkMI4J6qbJXX+fuC4r
 2A7M4Wn6RAN3ExKy4oh0/3FTa3UiY2ruVGNlYnYRarhXmpw7NXY1tCRWpvKSDrdnm1v/w0mtvlbNG
 CkSI9IBQioyW9WusDaPKLOi9WJk3W2o51XW6eMsrXUURHuW7Pk8OIVY1NLj4X9eOn6/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/XhvbxIIY2uctY1CX20CFXSXwqV1jDcjNfNVUiI/sP0=; b=WTlOzSIu2mbBbgC726S6BhJ8mL
 riAHADhw8R0P8DQgFJg5WSFuyMUMMxtfAtWKV/9blMjrFNdTX+/xtPJ4rVcIJ+2OKc/L3ADQNlhL6
 m6vFedCRPE3W4MZRoENraIWY7B3LWKznRnFQKWtcmaabkYUm92cbr55PJlwzRHGf9tY0=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.114])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfmWC-0076Cm-Rk
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 01 Jun 2020 15:38:30 +0000
Received: from [100.112.133.94] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-b.us-west-2.aws.symcld.net id D9/A5-40102-4E025DE5;
 Mon, 01 Jun 2020 15:38:12 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRWlGSWpSXmKPExsWSLveKTfexwtU
 4g40frS1mH7ZxYPTYveAzUwBjFGtmXlJ+RQJrRt/NFqaCv0oVU3uOsjUw/pDtYuTiEBJYxSQx
 +2ATO4TznFHi36/fTF2MnBxsAtoSW7b8YgOxRQS0JHYe7ASLMwsUSpxa8A3MFhbwkPh04BGYz
 SKgIrFw0gt2EJtXwEai+f9pVhBbQkBeon35drA5nAKqEme6HrOA2EJA9fcfLGGDqBeUODnzCQ
 vEfHmJ5q2zmSFsCYmDL14A2RxAcxQklp4OhBiZILHs5R3mCYwCs5B0z0LSPQtJ9wJG5lWMFkl
 FmekZJbmJmTm6hgYGuoaGRrqGxiZAtqVeYpVukl5psW55anGJrpFeYnmxXnFlbnJOil5easkm
 RmDwphS05e5g3Pjmg94hRkkOJiVR3hzpq3FCfEn5KZUZicUZ8UWlOanFhxhlODiUJHivyAHlB
 ItS01Mr0jJzgJEEk5bg4FES4e2QB0rzFhck5hZnpkOkTjEqSonzSgDjT0gAJJFRmgfXBoveS4
 yyUsK8jAwMDEI8BalFuZklqPKvGMU5GJWEeV+BbOfJzCuBm/4KaDET0OI7My+BLC5JREhJNTA
 58R80TFzD3bN5mabMq/S9jWIL9kz8a/27exuTV63N9VWvVpbGnm6rebJSrybXPfrdkp3XY/iY
 Xym8e3r56Z/7W7et0P+14b6Zf8fOc1Ln3iStm3bh2t+OKlsD1TUJ107OdFnNz/fvVniKpnzGQ
 /P83R8vmBe+TjPkfOI+Q4X/+7f9TvvXbnT19vyg43zm6TzGoPpTn2o2MQfe6Prxx+RGnfMDL4
 kn/9MX7kwNbS39JTSJW7XIz+DprcnNRwNs3gSWiBpGbVNKP/vZ7v/xwp9Va+b97UjSTr9Zs/z
 /xPMxjjqfllwJ2cu80XdfseI/n62/91zW7lHWPTl52xo/jW4LxWDjZRV/Fe2vVCpxPNa7qcRS
 nJFoqMVcVJwIAJxLV5hZAwAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-12.tower-346.messagelabs.com!1591025890!820!1
X-Originating-IP: [103.30.234.6]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22990 invoked from network); 1 Jun 2020 15:38:11 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.6)
 by server-12.tower-346.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 1 Jun 2020 15:38:11 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 666F01F2C3522EC8A6D9
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon,  1 Jun 2020 23:38:09 +0800 (CST)
Received: from localhost.localdomain (10.64.89.203) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 1 Jun 2020
 08:38:07 -0700
From: Mark Pearson <markpearson@lenovo.com>
To: <ibm-acpi-devel@lists.sourceforge.net>
Date: Mon, 1 Jun 2020 11:37:49 -0400
Message-ID: <20200601153749.265953-1-markpearson@lenovo.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <markpearson@lenovo.com>
References: <markpearson@lenovo.com>
MIME-Version: 1.0
X-Originating-IP: [10.64.89.203]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.114 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.114 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jfmWC-0076Cm-Rk
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: lap or desk
 mode interface
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
Cc: Mark Pearson <markpearson@lenovo.com>, Nitin Joshi <njoshi1@lenovo.com>,
 Sugumaran <slacshiminar@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

  Newer Lenovo Thinkpad platforms have support to identify whether the
  system is on-lap or not using an ACPI DYTC event from the firmware.

  This patch provides the ability to retrieve the current mode via sysfs
  entrypoints and will be used by userspace for thermal mode and WWAN
  functionality

Co-developed-by: Nitin Joshi <njoshi1@lenovo.com>
Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
Reviewed-by: Sugumaran <slacshiminar@lenovo.com>
Signed-off-by: Mark Pearson <markpearson@lenovo.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 120 +++++++++++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 0f704484ae1d..6eb5d106bfd6 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -4049,6 +4049,7 @@ static bool hotkey_notify_6xxx(const u32 hkey,
 		pr_debug("EC reports: Thermal Control Command set completed (DYTC)\n");
 		/* recommended action: do nothing, we don't have
 		 * Lenovo ATM information */
+		tpacpi_driver_event(hkey);
 		return true;
 	case TP_HKEY_EV_THM_TRANSFM_CHANGED:
 		pr_debug("EC reports: Thermal Transformation changed (GMTS)\n");
@@ -9811,6 +9812,117 @@ static struct ibm_struct lcdshadow_driver_data = {
 	.write = lcdshadow_write,
 };
 
+/*************************************************************************
+ * DYTC subdriver, for the Lenovo performace mode feature
+ */
+
+#define DYTC_CMD_GET      2 /*To get current IC function and mode*/
+
+#define DYTC_GET_ENABLE_MASK  0x1 /*0 = disabled, 1 = enabled*/
+#define DYTC_GET_LAPMODE_SHIFT 17
+
+static int  dytc_lapmode;
+static bool dytc_available;
+static void dytc_lapmode_notify_change(void)
+{
+	sysfs_notify(&tpacpi_pdev->dev.kobj, NULL,
+			"dytc_lapmode");
+}
+
+static int dytc_command(int command)
+{
+	acpi_handle dytc_handle;
+	int output;
+
+	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DYTC", &dytc_handle))) {
+		pr_warn("Thinkpad ACPI has no DYTC interface.\n");
+		return -ENODEV;
+	}
+	if (!acpi_evalf(dytc_handle, &output, NULL, "dd", command))
+		return -EIO;
+	return output;
+}
+
+static int dytc_lapmode_get(void)
+{
+	int output;
+
+	output = dytc_command(DYTC_CMD_GET);
+	if ((output == -ENODEV) || (output == -EIO))
+		return output;
+
+	return ((output >> DYTC_GET_LAPMODE_SHIFT) &
+				DYTC_GET_ENABLE_MASK);
+}
+
+static void dytc_lapmode_refresh(void)
+{
+	int new_state;
+
+	new_state = dytc_lapmode_get();
+	if ((new_state == -ENODEV) || (new_state == -EIO))
+		return;
+
+	if (dytc_lapmode != new_state) {
+		dytc_lapmode = new_state;
+		dytc_lapmode_notify_change();
+	}
+}
+
+/* sysfs lapmode entry */
+static ssize_t dytc_lapmode_show(struct device *dev,
+					struct device_attribute *attr,
+					char *buf)
+{
+	if (dytc_lapmode < 0)
+		return dytc_lapmode;
+
+	return snprintf(buf, PAGE_SIZE, "%d\n", dytc_lapmode);
+}
+
+static DEVICE_ATTR_RO(dytc_lapmode);
+
+static struct attribute *dytc_attributes[] = {
+	&dev_attr_dytc_lapmode.attr,
+	NULL
+};
+
+static const struct attribute_group dytc_attr_group = {
+	.attrs = dytc_attributes,
+};
+
+static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
+{
+	int res;
+
+	dytc_available = false;
+	dytc_lapmode = dytc_lapmode_get();
+
+	if (dytc_lapmode < 0 && dytc_lapmode != -ENODEV)
+		return dytc_lapmode;
+
+	dytc_available = true;
+
+	res = sysfs_create_group(&tpacpi_pdev->dev.kobj,
+				&dytc_attr_group);
+
+	return res;
+}
+
+static void dytc_exit(void)
+{
+	if (dytc_available) {
+		sysfs_remove_group(&tpacpi_pdev->dev.kobj,
+					&dytc_attr_group);
+		dytc_available = false;
+	}
+}
+
+static struct ibm_struct dytc_driver_data = {
+	.name = "dytc",
+	.exit = dytc_exit
+};
+
 /****************************************************************************
  ****************************************************************************
  *
@@ -9858,6 +9970,10 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
 
 		mutex_unlock(&kbdlight_mutex);
 	}
+
+	if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
+		dytc_lapmode_refresh();
+
 }
 
 static void hotkey_driver_event(const unsigned int scancode)
@@ -10296,6 +10412,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
 		.init = tpacpi_lcdshadow_init,
 		.data = &lcdshadow_driver_data,
 	},
+	{
+		.init = tpacpi_dytc_init,
+		.data = &dytc_driver_data,
+	},
 };
 
 static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
