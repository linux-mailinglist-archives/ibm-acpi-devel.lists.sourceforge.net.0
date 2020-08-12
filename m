Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77834242EC2
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 12 Aug 2020 20:54:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k5vtA-0005bH-A4; Wed, 12 Aug 2020 18:54:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1k5vt9-0005bA-5E
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 12 Aug 2020 18:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JtCkfrxMrut/3RwZqYNzr9Ko05nH+TL6j+pwRRRQ2VI=; b=cgZpEgjaJ0naKQ7OIgWXQmWTRD
 OLWcjK12pc+yfU2k9xdbdvTMMyqhTUTZitFUeiTO3EMThDqgfpU3Dw6bsK0lpPrIUuXY6XpKaBq+K
 s8LV9ZZEZYAwo7cOQqMrjbpTNt64VX3DwMrqcd5+Jqnok8uQrcvJKSdFCbiPp1CfPIq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JtCkfrxMrut/3RwZqYNzr9Ko05nH+TL6j+pwRRRQ2VI=; b=YLfYpDRuyzTbz2ZOv3bodSId/z
 ecgi1WiJGzQkKvCtU4QtnfcuzOX3xIypLfSzjPuF2jbGZWWD8UetKVFYoJVcfkwfFRUYZJEU+A+r4
 GnumrPfM47YaZQ0kcFPGPG3RbYUWzyA+ScUC0KrB5jVjZ0mq+CSS+wyh2jUn7uZPC+38=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.2])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k5vt5-003YsR-Ee
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 12 Aug 2020 18:54:15 +0000
Received: from [100.112.1.169] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-2.bemta.az-b.us-east-1.aws.symcld.net id 50/C7-60747-FBA343F5;
 Wed, 12 Aug 2020 18:53:51 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLIsWRWlGSWpSXmKPExsWS8eIhj+5+K5N
 4g7fnJS0mzfjPbDH7sI3FnGdrGS1W73nB7MDi8fsAo8fmFVoeuxd8ZvL4vEkugCWKNTMvKb8i
 gTVjwyPzgiVKFb9fn2JqYFws28XIxSEk8J9R4nFHAxOE84ZRYlPHF9YuRk4ONgFtiS1bfrF1M
 XJwiAjISHxY6wlSwyywiFHi/pyH7CBxYQEnib9HeUDKWQRUJfp+72ECsXkFbCTuLHjBBmJLCM
 hLtC/fDmZzAtWc6XrMAmILCahI3H+whA2iXlDi5MwnYHFmoPrmrbOZIWwJiYMvXjBDzFGQmHJ
 +N5SdILHs5R3mCYwCs5C0z0LSPgtJ+wJG5lWMpklFmekZJbmJmTm6hgYGuoaGRrpGumaWeolV
 ukl6pcW6qYnFJbqGeonlxXrFlbnJOSl6eaklmxiBoZ5SwOS6g/H36w96hxglOZiURHl79Ezih
 fiS8lMqMxKLM+KLSnNSiw8xynBwKEnwfrUEygkWpaanVqRl5gDjDiYtwcGjJMLrDYw9Id7igs
 Tc4sx0iNQpRkUpcV57kIQASCKjNA+uDRbrlxhlpYR5GRkYGIR4ClKLcjNLUOVfMYpzMCoJ8xa
 CbOfJzCuBm/4KaDET0OKGfkOQxSWJCCmpBqZYpqiKvd36jP8Mvyu9fXg37uDBDdL5tfeeXk97
 kn063vnu/hcqu2tuCP5KFTeTPLTq7hZ1viPL9Dq3Fr3Rf98+Oe/2/D8PKxfbb77qNfHRV6MiI
 cO3fYnqKhE8/X1vxVbE/Hbcsir1m13JP3+tjm4XXslrfhr1E23fHPD3Kl8fVJ3xctuiTXFT3g
 WU3d8oHf/u5ZPD1e2LSyseWDW0iXD/im1kP/gtYE/DbOFjuy6si1U6yJR2NPj218AA3qMB31J
 kpFP2Ol9V7qmITnrqcOqXbaffgYnORgdYfyeu+ajyb6MN+7LDs2e8DI3R2fQo17G+eq+k554r
 9h2rBNc8/CrbvfKiwZ8b7Gt+MMuEzD2ixFKckWioxVxUnAgAD9D6hnADAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-20.tower-396.messagelabs.com!1597258431!772075!1
X-Originating-IP: [104.232.225.12]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 29509 invoked from network); 12 Aug 2020 18:53:51 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.12)
 by server-20.tower-396.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 12 Aug 2020 18:53:51 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 3757C5ED8A854529CC94;
 Wed, 12 Aug 2020 14:53:51 -0400 (EDT)
Received: from localhost.localdomain.com (10.64.92.252) by
 reswpmail04.lenovo.com (10.62.32.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1913.5; Wed, 12 Aug 2020 11:53:48 -0700
From: Mark Pearson <markpearson@lenovo.com>
To: <markpearson@lenovo.com>
Date: Wed, 12 Aug 2020 14:53:32 -0400
Message-ID: <20200812185332.277167-1-markpearson@lenovo.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <markpearson@lenovo.com>
References: <markpearson@lenovo.com>
MIME-Version: 1.0
X-Originating-IP: [10.64.92.252]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.2 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.2 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1k5vt5-003YsR-Ee
Subject: [ibm-acpi-devel] [PATCH v2] platform/x86: thinkpad_acpi: psensor
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

 drivers/platform/x86/thinkpad_acpi.c | 107 ++++++++++++++++++++++++++-
 1 file changed, 104 insertions(+), 3 deletions(-)

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
