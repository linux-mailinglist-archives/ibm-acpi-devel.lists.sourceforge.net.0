Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C23202218A2
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 16 Jul 2020 01:53:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jvrDQ-0005nE-Vw; Wed, 15 Jul 2020 23:53:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1jvrDQ-0005n7-2q
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 15 Jul 2020 23:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rKLnd2kyxm7gvvP1Dj0duRWqDT5CUm4GMLxeGIdj4h4=; b=IRAV9azuElGajbLw6qKY6egyRP
 ITj92rPxrxJ9FWyiFYzYBpjPf8TQIBTvbOMIOxpACK/VUAOdXls/xvuG2M068mDdxEip0wxaS75BC
 3iUeWVVrALjTaESKVvrjAJrRlk0pWjoJqVfkU1w/rMeRyYH2OWys6MXOuuXeBza7boMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rKLnd2kyxm7gvvP1Dj0duRWqDT5CUm4GMLxeGIdj4h4=; b=R0PZP2BxhJ+ToQ8aF6W3Wk7QyX
 zHyK2m+RMu1jTH+agpfMRmmZe67Jf9PqFKIfDU/pZuuIGcrWro/AJi1x7q32NgltckRL7oWTqzcFw
 gj+LMJu5afyBAZUXe981RUS+MkMdLgJkBpDcHh8vgrQ3U5HtD0vBqLKJ4yJMLox4wiOk=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.5])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvrDL-009SH9-F6
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 15 Jul 2020 23:53:32 +0000
Received: from [100.112.131.63] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-a.us-west-2.aws.symcld.net id 51/1E-15041-4E69F0F5;
 Wed, 15 Jul 2020 23:53:08 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRWlGSWpSXmKPExsWSLveKTffxNP5
 4g79eFrMP21jMebaW0WL1nhfMDswevw8weuxe8JnJ4/MmuQDmKNbMvKT8igTWjO4Lj1gL+nQr
 dl18yNbAuEOti5GLQ0jgP6PE5sXXWCCc14wSvz+2snYxcnKwCWhLbNnyi62LkYNDREBG4sNaT
 5AaZoEeRomOM3eZQeLCAvYSpzZZg5SzCKhKvFmwjhHE5hWwkuiY/5EJxJYQkJdoX76dDcTmBK
 o50/WYBcQWElCRuP9gCRtEvaDEyZlPwOLMQPXNW2czQ9gSEgdfvGCGmbPt9DsoO0Fi2cs7zBM
 YBWYhaZ+FpH0WkvYFjMyrGC2SijLTM0pyEzNzdA0NDHQNDY10DY0sdQ0tjfQSq3QT9UqLdctT
 i0t0gdzyYr3iytzknBS9vNSSTYzA8E4paDywg/HG6w96hxglOZiURHmjIvjjhfiS8lMqMxKLM
 +KLSnNSiw8xynBwKEnw1gIjRkiwKDU9tSItMwcYazBpCQ4eJRFeBpA0b3FBYm5xZjpE6hSjLs
 fJVUsWMQux5OXnpUqJ84aBFAmAFGWU5sGNgMX9JUZZKWFeRgYGBiGegtSi3MwSVPlXjOIcjEr
 CvHunAk3hycwrgdv0CugIJqAjNn7mBTmiJBEhJdXAxFlx9/fhl6pb5rZxpz9ysK8peP7Z8uzl
 m8e/1MSIyK7Smvp67o/g9xLqPuvdDHbNMb9zbd4+f6aAaQcf+IQ0Bih/2W8YKSlfuC+ne3Pd4
 m2L/9i/z+z7HMiU76+QGi2xqeG00QXH6WfPehjxbn53/+97x4NiH3Vb7B7X74/Inv+wZLkUe3
 T55dVHg0x3z7sdw1imeUB0ebin+sqSuYpptTeWFVzNnhfxZ/3pymmrdtx7fucX223XyI5lu78
 obzEv2bnumcqP6Szb8/YwfbbaMCVY1aI0qnKVdGVKb8nuqY0JLk/ZX5z8I77/N0vycf4/d54o
 ap4s/FV5YMKCW1M7btd5eD6KNNSzWaCd4jwz74ISS3FGoqEWc1FxIgB2vjOddgMAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-17.tower-335.messagelabs.com!1594857184!28622!1
X-Originating-IP: [103.30.234.6]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.2; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 7509 invoked from network); 15 Jul 2020 23:53:06 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.6)
 by server-17.tower-335.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 15 Jul 2020 23:53:06 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 5DED2D946AC09802163B;
 Thu, 16 Jul 2020 07:53:03 +0800 (CST)
Received: from localhost.localdomain.com (10.64.81.74) by
 reswpmail04.lenovo.com (10.62.32.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1913.5; Wed, 15 Jul 2020 16:52:59 -0700
From: Mark Pearson <markpearson@lenovo.com>
To: <markpearson@lenovo.com>
Date: Wed, 15 Jul 2020 19:52:42 -0400
Message-ID: <20200715235242.4934-1-markpearson@lenovo.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <markpearson@lenovo.com>
References: <markpearson@lenovo.com>
MIME-Version: 1.0
X-Originating-IP: [10.64.81.74]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.5 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jvrDL-009SH9-F6
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: psensor
 interface
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
Cc: ibm-acpi-devel@lists.sourceforge.net, ibm-acpi@hmh.eng.br,
 Nitin Joshi <njoshi1@lenovo.com>, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Some Lenovo Thinkpad platforms are equipped with a 'palm sensor' so as
to be able to determine if a user is physically proximate to the device.

This patch provides the ability to retrieve the psensor state via sysfs
entrypoints and will be used by userspace for WWAN functionality to
control the transmission level safely

Co-developed-by: Nitin Joshi <njoshi1@lenovo.com>
Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
Signed-off-by: Mark Pearson <markpearson@lenovo.com>
---
 .../admin-guide/laptops/thinkpad-acpi.rst     |  19 ++++
 drivers/platform/x86/thinkpad_acpi.c          | 104 +++++++++++++++++-
 2 files changed, 121 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
index 99066aa8d97b..c2c238d5d5f6 100644
--- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
+++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
@@ -51,6 +51,7 @@ detailed description):
 	- UWB enable and disable
 	- LCD Shadow (PrivacyGuard) enable and disable
 	- Lap mode sensor
+        - Palm sensor (aka p-sensor)
 
 A compatibility table by model and feature is maintained on the web
 site, http://ibm-acpi.sf.net/. I appreciate any success or failure
@@ -1447,6 +1448,24 @@ they differ between desk and lap mode.
 The property is read-only. If the platform doesn't have support the sysfs
 class is not created.
 
+Palm sensor
+------------------
+
+sysfs: psensor_state
+
+Certain thinkpads and mobile workstations are equipped with a palm sensor to
+detect when a user is physically near the device. This device, when present,
+is used in conjunction with the lapmode sensor to decide if WWAN transmission
+can be increased to maximum power.
+
+The property is read-only. If the platform doesn't have support the sysfs
+class is not created.
+
+Note - some platforms have a limitation whereby the EC firmware cannot
+determine if the sensor is not installed or not. On these platforms the
+p-sensor state will always be reported as true to avoid high power being used
+incorrectly.
+
 EXPERIMENTAL: UWB
 -----------------
 
diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 037eb77414f9..40f2e368fdf9 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -4071,8 +4071,8 @@ static bool hotkey_notify_6xxx(const u32 hkey,
 
 	case TP_HKEY_EV_PALM_DETECTED:
 	case TP_HKEY_EV_PALM_UNDETECTED:
-		/* palm detected hovering the keyboard, forward to user-space
-		 * via netlink for consumption */
+		/* palm detected - pass on to event handler */
+		tpacpi_driver_event(hkey);
 		return true;
 
 	default:
@@ -9894,6 +9894,99 @@ static struct ibm_struct dytc_driver_data = {
 	.exit = dytc_exit,
 };
 
+/*************************************************************************
+ * Palm sensor subdriver
+ */
+#define PSENSOR_PRESENT_BIT 0 /* Determine if psensor present */
+#define PSENSOR_ON_BIT      1 /* psensor status */
+
+static bool psensor_state;
+
+static void psensor_notify_change(void)
+{
+	sysfs_notify(&tpacpi_pdev->dev.kobj, NULL, "psensor_state");
+}
+
+static int psensor_get(bool *state)
+{
+	acpi_handle psensor_handle;
+	int output;
+
+	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GPSS", &psensor_handle)))
+		return -ENODEV;
+
+	if (!acpi_evalf(psensor_handle, &output, NULL, "d"))
+		return -EIO;
+
+	/* Check if sensor has a Psensor */
+	if (!(output & BIT(PSENSOR_PRESENT_BIT)))
+		return -ENODEV;
+
+	/* Return if psensor is set or not */
+	*state = output & BIT(PSENSOR_ON_BIT) ? true : false;
+	return 0;
+}
+
+static void psensor_state_refresh(void)
+{
+	bool new_state;
+	int err;
+
+	err = psensor_get(&new_state);
+	if (err || (new_state == psensor_state))
+		return;
+
+	psensor_state = new_state;
+	psensor_notify_change();
+}
+
+/* sysfs psensor entry */
+static ssize_t psensor_state_show(struct device *dev,
+					struct device_attribute *attr,
+					char *buf)
+{
+	return snprintf(buf, PAGE_SIZE, "%d\n", psensor_state);
+}
+
+static DEVICE_ATTR_RO(psensor_state);
+
+static struct attribute *psensor_attributes[] = {
+	&dev_attr_psensor_state.attr,
+	NULL,
+};
+
+static const struct attribute_group psensor_attr_group = {
+	.attrs = psensor_attributes,
+};
+
+static int tpacpi_psensor_init(struct ibm_init_struct *iibm)
+{
+	int err;
+
+	err = psensor_get(&psensor_state);
+	/* If support isn't available (ENODEV) then don't return an error
+	 * but just don't create the sysfs group
+	 */
+	if (err == -ENODEV)
+		return 0;
+	/* For all other errors we can flag the failure */
+	if (err)
+		return err;
+
+	err = sysfs_create_group(&tpacpi_pdev->dev.kobj, &psensor_attr_group);
+	return err;
+}
+
+static void psensor_exit(void)
+{
+	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &psensor_attr_group);
+}
+
+static struct ibm_struct psensor_driver_data = {
+	.name = "psensor",
+	.exit = psensor_exit,
+};
+
 /****************************************************************************
  ****************************************************************************
  *
@@ -9945,6 +10038,9 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
 	if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
 		dytc_lapmode_refresh();
 
+	if ((hkey_event == TP_HKEY_EV_PALM_DETECTED) ||
+		(hkey_event == TP_HKEY_EV_PALM_UNDETECTED))
+		psensor_state_refresh();
 }
 
 static void hotkey_driver_event(const unsigned int scancode)
@@ -10387,6 +10483,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
 		.init = tpacpi_dytc_init,
 		.data = &dytc_driver_data,
 	},
+	{
+		.init = tpacpi_psensor_init,
+		.data = &psensor_driver_data,
+	},
 };
 
 static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
