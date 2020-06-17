Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0571FD421
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Jun 2020 20:10:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jlcW4-00026j-DR; Wed, 17 Jun 2020 18:10:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1jlcW2-00026c-SF
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Jun 2020 18:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4vSK03nrUtIB4mg6a5BdcgxfOB/oRraAtDri1CcBwHE=; b=RGZ6nyIhGPPLBX7Z+k/BcHfCvv
 9w4ZFBXG6DmSgIGKeLxVnxefmrHDh4f4yflWyJRbBPRUWhqKuveXKi7b70q3HanjknMzv7djEgXuT
 TLkUPcFAf2h29Y0iUOlZScaxDNWPcHwS7ntAOUqY4fUnM+9VO32G0RHEi+NXvB+pv5m8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4vSK03nrUtIB4mg6a5BdcgxfOB/oRraAtDri1CcBwHE=; b=b3ebHZrq/HRSwT0EuZnSnwX+I8
 Yykn9c7fKstKRjjyxYFgiCuZLyQY7XVnUktC5twYCJOREz8afaZ5sSTHM6JrR3omn/uUybPs1ZXhj
 stqQQSNnOgmfxR+aeAmIs73aXtLAoZBHlyy3ipaqJxyS/qrZjdE2YMWoBC4/XMHRAnRQ=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.115])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlcW0-009enf-RZ
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Jun 2020 18:10:26 +0000
Received: from [100.112.135.148] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-b.us-west-2.aws.symcld.net id F0/FD-28867-28C5AEE5;
 Wed, 17 Jun 2020 18:10:10 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPIsWRWlGSWpSXmKPExsWS8eIhj25jzKs
 4g7cdFhYP5qZbzD5sYzHn2VpGi9V7XjA7sHj8PsDosXvBZyaP9/uusnl83iQXwBLFmpmXlF+R
 wJqxpr+RpeCrcsXRP+oNjHfluhg5OYQE/jNKPH2i2cXIBWS/YZT4uHkeG0iCTUBbYsuWX2C2i
 ACzxIKp5xlBipgF3jNKnG+4wdzFyMEhLBAksfx9EUgNi4CqxJSLu1hBbF4Ba4kfk56xg9gSAv
 IS7cu3g83hBKo50/WYBWKxisT9B0vYIOoFJU7OfAIWZwaqb946mxnClpA4+OIFM8QcBYm2HUv
 ZIOwEiWUv7zBPYBSYhaR9FpL2WUjaFzAyr2I0TyrKTM8oyU3MzNE1NDDQNTQ00jU0NtU1NdVL
 rNJN0ist1i1PLS7RNdJLLC/WK67MTc5J0ctLLdnECAz3lIJ28x2ML15/0DvEKMnBpCTKmx76K
 k6ILyk/pTIjsTgjvqg0J7X4EKMMB4eSBO+LaKCcYFFqempFWmYOMPZg0hIcPEoivK8igdK8xQ
 WJucWZ6RCpU4yKUuK8a0D6BEASGaV5cG2weL/EKCslzMvIwMAgxFOQWpSbWYIq/4pRnINRSZj
 XGmQKT2ZeCdz0V0CLmYAWa4WDLS5JREhJNTA1qzrNulzJ0y3J4rVygzbz3Idh92fJsmklbjy8
 7YCTzdVaT4NHj5MO3UtgY0wNF77Kt/zmBOkTiWH3LbdlrFo83dplqbtTQkHBkxdJml+vVu3xu
 zApMPksb+TmJxw3ig1nPTUVChG4PP9m+Z5p8dJ/pr2YXHvh5NIAc2PVd4+2dDTWO1QzdcxI3e
 S1cPV6w32vf3Ks4QpjNRR+UPfba/uONyz6mqv0n/rfOrKsXGKS39p4NVnWQA4nK57tXOIXuk7
 +XaLhYqGwu/Fv3abedLsuNze9c7IX7NObJhjv3Jj99PzL5bEHT79YINz75/u9Zaye0e+uNOxT
 8f/uUzv/Ukr5M60Jtd1CAcpvfqotDM1UYinOSDTUYi4qTgQAZ7YHAXIDAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-17.tower-355.messagelabs.com!1592417408!12302!1
X-Originating-IP: [104.232.225.12]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.2; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 17443 invoked from network); 17 Jun 2020 18:10:09 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.12)
 by server-17.tower-355.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 17 Jun 2020 18:10:09 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 20DECBEE2DA589C38A6D;
 Wed, 17 Jun 2020 14:10:08 -0400 (EDT)
Received: from localhost.localdomain.com (10.64.81.212) by
 reswpmail04.lenovo.com (10.62.32.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1913.5; Wed, 17 Jun 2020 11:10:05 -0700
From: Mark Pearson <markpearson@lenovo.com>
To: 
Date: Wed, 17 Jun 2020 14:09:37 -0400
Message-ID: <20200617180937.14949-1-markpearson@lenovo.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <markpearson@lenovo.com>
References: <markpearson@lenovo.com>
MIME-Version: 1.0
X-Originating-IP: [10.64.81.212]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.115 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.115 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jlcW0-009enf-RZ
Subject: [ibm-acpi-devel] [RESEND PATCH v2] platform/x86: thinkpad_acpi: lap
 or desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>, ibm-acpi@hmh.eng.br,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Mark Pearson <markpearson@lenovo.com>, Nitin Joshi <njoshi1@lenovo.com>,
 bnocera@redhat.com
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
Resend:
- Adding Bastien Nocera to cc list as requested
Changes in v2:
- cleaned up initialisation sequence to be cleaner and avoid spamming
  platforms that don't have DYTC with warning message. Tested on P52
- Adding platform-driver-x86 mailing list for review as requested

 drivers/platform/x86/thinkpad_acpi.c | 113 +++++++++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 0f704484ae1d..8f51bbba21cd 100644
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
@@ -9811,6 +9812,110 @@ static struct ibm_struct lcdshadow_driver_data = {
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
+		/*Platform doesn't support DYTC*/
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
+	dytc_lapmode = dytc_lapmode_get();
+
+	if (dytc_lapmode < 0 && dytc_lapmode != -ENODEV)
+		return dytc_lapmode;
+
+	res = sysfs_create_group(&tpacpi_pdev->dev.kobj,
+				&dytc_attr_group);
+
+	return res;
+}
+
+static void dytc_exit(void)
+{
+	sysfs_remove_group(&tpacpi_pdev->dev.kobj,
+			&dytc_attr_group);
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
@@ -9858,6 +9963,10 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
 
 		mutex_unlock(&kbdlight_mutex);
 	}
+
+	if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
+		dytc_lapmode_refresh();
+
 }
 
 static void hotkey_driver_event(const unsigned int scancode)
@@ -10296,6 +10405,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
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
