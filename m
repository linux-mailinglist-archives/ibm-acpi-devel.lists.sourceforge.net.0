Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90536248E84
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 18 Aug 2020 21:16:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k875v-00043X-9y; Tue, 18 Aug 2020 19:16:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1k875t-00043H-Qt
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 18 Aug 2020 19:16:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Eudzlo7fP+mx7Xy3Fe89wsVYl3YHtw9LESvrcqzpFDg=; b=HqXxNzm7rFIO/hvUF02Qg1E64R
 1cIiHpX+i2LqoY6qKASkoD5KJ7yM/nJMEZkXL4aeitFAXKh7S4Sf4c6Qekn5Tu3dbSv059kIB9tQB
 Wm6oSRzMup7olOyLkSihYj8Kx/2x/280WgBAbUiGF9p+JPidWd95NBFuLtdTuoD6aSPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Eudzlo7fP+mx7Xy3Fe89wsVYl3YHtw9LESvrcqzpFDg=; b=TEqwwcG1w1ZKUAvF4P2Jw7hCaD
 uLjKv4QO36g4WeXo9+M3kAgzse7qkxm/GX2n+Ca2yNXnA6aVSFwqsR1Rl5j1ZjecRTvInQR9lzp8h
 2S7uGYRgtsue41cuyPiyAHNbCRbDJKuHYYRLwxo8zd0ssYjhIeoXm6mHVrxZ1tVe83WI=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.112])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k875p-00BiDV-J0
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 18 Aug 2020 19:16:25 +0000
Received: from [100.112.135.196] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-b.us-west-2.aws.symcld.net id 44/CE-29381-BF82C3F5;
 Tue, 18 Aug 2020 19:16:11 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNIsWRWlGSWpSXmKPExsWS8eIhr+5vDZt
 4g9crxSwmzfjPbDH7sI3FnGdrGS1W73nB7MDi8fsAo8fmFVoeuxd8ZvL4vEkugCWKNTMvKb8i
 gTWjr8GzoFm/4uvOj2wNjN/Uuxi5OIQE/jNKnLp2kQnCec0ocaS9g7WLkZODTUBbYsuWX2xdj
 BwcIgIyEh/WeoKEmQUWMUo83KMNYgsLOEm8WNrDDFLCIqAq0X4+ByTMK2AjsXrXFyYQW0JAXq
 J9+XY2EJsTqORM12MWEFtIQEXi/oMlbBD1ghInZz5hgRgvL9G8dTYzhC0hcfDFC2aYOXMXrmS
 HsBMklr28wzyBUWAWkvZZSNpnIWlfwMi8itEiqSgzPaMkNzEzR9fQwEDX0NBI19DYRNfQxFgv
 sUo3Sa+0WLc8tbhE10gvsbxYr7gyNzknRS8vtWQTIzDcUwra+ncwrn/zQe8QoyQHk5Io714em
 3ghvqT8lMqMxOKM+KLSnNTiQ4wyHBxKErxawAgSEixKTU+tSMvMAcYeTFqCg0dJhHeRClCat7
 ggMbc4Mx0idYpRl+PkqiWLmIVY8vLzUqXEedeCzBAAKcoozYMbAUsDlxhlpYR5GRkYGIR4ClK
 LcjNLUOVfMYpzMCoJ80qoAk3hycwrgdv0CugIJqAjJCotQY4oSURISTUwGT2suHw/r1hp2q81
 0pfVomu7GpxvMalZnO4SWF6rdPXaxGlrvc+75hWUiPnON2v9tlF254wIBsb34edni7CdauEXX
 nZWPeqT0GUNxew1Kq9YHxmx6JTr5LUWT3uxKLCIhXvSs1Nbk+dYr1j0bMnfmQapF3pUXAyKty
 f75LEnlP/arPdheZalomb0iR0rNSafYsxodV33I+V8/n3ehRflls5vkl+3dcWb5Tx/aoscdx1
 exibF6XXvzJso/fiFR3ZMe+vnrz/bMC2LJ9HemvF2dPb+xyxTee/EXAg/sP31uY6F71mTN39c
 MlmyInL2vANvUrnrhOR28bEZ+q50NmpsPx84ZeX5+7FG4TbfCsWclFiKMxINtZiLihMBftPlv
 n4DAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-15.tower-346.messagelabs.com!1597778170!9188!1
X-Originating-IP: [104.232.225.13]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26614 invoked from network); 18 Aug 2020 19:16:11 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.13)
 by server-15.tower-346.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 18 Aug 2020 19:16:11 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id C643AE5FB16B65716A39;
 Tue, 18 Aug 2020 15:16:09 -0400 (EDT)
Received: from localhost.localdomain.com (10.38.58.36) by
 reswpmail04.lenovo.com (10.62.32.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1913.5; Tue, 18 Aug 2020 12:16:02 -0700
From: Mark Pearson <markpearson@lenovo.com>
To: <markpearson@lenovo.com>
Date: Tue, 18 Aug 2020 15:15:58 -0400
Message-ID: <20200818191558.280009-1-markpearson@lenovo.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <markpearson@lenovo.com>
References: <markpearson@lenovo.com>
MIME-Version: 1.0
X-Originating-IP: [10.38.58.36]
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
 trust [67.219.250.112 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.112 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1k875p-00BiDV-J0
Subject: [ibm-acpi-devel] [PATCH v3] platform/x86: thinkpad_acpi: psensor
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
 Nitin Joshi <njoshi1@lenovo.com>, andy@infradead.org,
 platform-driver-x86@vger.kernel.org
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
Changes in v2:
 - addressed formatting and coding style errors identified during review
Changes in v3:
 - I had missed updating thinkpad-acpi.rst in the v2 update so adding
   that back so it is correct. 

 .../admin-guide/laptops/thinkpad-acpi.rst     |  18 +++
 drivers/platform/x86/thinkpad_acpi.c          | 107 +++++++++++++++++-
 2 files changed, 122 insertions(+), 3 deletions(-)

diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
index 5e477869df18..6b57c52d8f13 100644
--- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
+++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
@@ -51,6 +51,7 @@ detailed description):
 	- UWB enable and disable
 	- LCD Shadow (PrivacyGuard) enable and disable
 	- Lap mode sensor
+        - Palm sensor (aka psensor)
 
 A compatibility table by model and feature is maintained on the web
 site, http://ibm-acpi.sf.net/. I appreciate any success or failure
@@ -1447,6 +1448,23 @@ they differ between desk and lap mode.
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
+determine if the sensor is installed or not. On these platforms the psensor
+state will always be reported as true to avoid high power being used incorrectly.
+
 EXPERIMENTAL: UWB
 -----------------
 
diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 4864a5c189d4..41b75dd4755c 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -4079,10 +4079,9 @@ static bool hotkey_notify_6xxx(const u32 hkey,
 
 	case TP_HKEY_EV_PALM_DETECTED:
 	case TP_HKEY_EV_PALM_UNDETECTED:
-		/* palm detected hovering the keyboard, forward to user-space
-		 * via netlink for consumption */
+		/* palm detected - pass on to event handler */
+		tpacpi_driver_event(hkey);
 		return true;
-
 	default:
 		/* report simply as unknown, no sensor dump */
 		return false;
@@ -9916,6 +9915,99 @@ static struct ibm_struct dytc_driver_data = {
 	.exit = dytc_exit,
 };
 
+/**********************************************************************
+ * Palm sensor subdriver
+ */
+
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
+	return sprintf(buf, "%d\n", psensor_state);
+}
+static DEVICE_ATTR_RO(psensor_state);
+
+static struct attribute *psensor_attributes[] = {
+	&dev_attr_psensor_state.attr,
+	NULL
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
+	/*
+	 * If support isn't available (ENODEV) then don't return an error,
+	 * just don't create the sysfs group.
+	 */
+	if (err == -ENODEV)
+		return 0;
+	/* For all other errors we can flag the failure */
+	if (err)
+		return err;
+
+	return sysfs_create_group(&tpacpi_pdev->dev.kobj, &psensor_attr_group);
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
@@ -9967,6 +10059,10 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
 	if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
 		dytc_lapmode_refresh();
 
+	if ((hkey_event == TP_HKEY_EV_PALM_DETECTED) ||
+		(hkey_event == TP_HKEY_EV_PALM_UNDETECTED))
+		psensor_state_refresh();
+
 }
 
 static void hotkey_driver_event(const unsigned int scancode)
@@ -10409,6 +10505,11 @@ static struct ibm_init_struct ibms_init[] __initdata = {
 		.init = tpacpi_dytc_init,
 		.data = &dytc_driver_data,
 	},
+	{
+		.init = tpacpi_psensor_init,
+		.data = &psensor_driver_data,
+	},
+
 };
 
 static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
