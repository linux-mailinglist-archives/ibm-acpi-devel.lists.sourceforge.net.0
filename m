Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7792130F8
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  3 Jul 2020 03:24:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jrARR-0002U7-QR; Fri, 03 Jul 2020 01:24:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1jrARQ-0002Tz-I8
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 03 Jul 2020 01:24:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C87uvYbITHix29eJyzv+mhiIo1DYVKv6Ca8mfi3bLx4=; b=agljGnlCwOLdmHTmVa7mDrSR57
 Zh6TNkr9/q06Kdwo82oUjukgmeb+0+Fjn9YPir8XHi5Nw5j1bxpZmY/L9WQV0cbfSrn9wSO1Z2ijn
 MwLbzHQyv12dTzHJAK32A3LpXtZ1VQIuSE6WdFK1FJbZJI/8L/kKksNZMfHbcBIgOJq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C87uvYbITHix29eJyzv+mhiIo1DYVKv6Ca8mfi3bLx4=; b=cibFMB9pi7Y/0n57UOQ35JDc7u
 7XRj699VxxJmjn0bQ4jIB8+cycEtlBElKOHYZM2p/SuMiLnLFUzDfEpeHBZ38O6A2yWa6B69PX3jb
 Ecl6nt999RypGLr0nSH+0p1gYAMmHm/fsGy5XQzRH4LyOqlE2UTzXij8DGPKsVx0xI4I=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.4])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jrARO-006RDY-EJ
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 03 Jul 2020 01:24:36 +0000
Received: from [100.112.128.228] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-a.us-west-2.aws.symcld.net id CD/E4-25315-6C88EFE5;
 Fri, 03 Jul 2020 01:24:22 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRWlGSWpSXmKPExsWS8eIhj+6xjn9
 xBo/fKVq8nHCY0eLB3HSL2YdtLOY8W8tosXrPC2YHVo+ds+6ye/w+wOixe8FnJo/3+66yeXze
 JBfAGsWamZeUX5HAmnHvGl/BE+OKje9eMDcwtut0MXJyCAn8Z5T4MMOmi5ELyH7FKDF32zoWk
 ASbgLbEli2/2LoYOThEBGQkPqz1BKlhFvjBKPFx5lE2kBphAW+JvTtnMIPYLAIqEgcmLwWzeQ
 WsJW7vOMsEYksIyEu0L98OVs8poCpxpusxC8RiFYn7D5awQdQLSpyc+QQszgxU37x1NjOELSF
 x8MULZpg582d3sUHYCRLLXt5hnsAoMAtJ+ywk7bOQtC9gZF7FaJFUlJmeUZKbmJmja2hgoGto
 aKRraGyoa2RoppdYpZuoV1qsW55aXKJrpJdYXqxXXJmbnJOil5dasokRGAUpBc03djDOevNB7
 xCjJAeTkigvR+u/OCG+pPyUyozE4oz4otKc1OJDjDIcHEoSvL9agHKCRanpqRVpmTnAiIRJS3
 DwKInwRrUDpXmLCxJzizPTIVKnGHU5Tq5asohZiCUvPy9VSpy3tw2oSACkKKM0D24ELDlcYpS
 VEuZlZGBgEOIpSC3KzSxBlX/FKM7BqCTMGwayiiczrwRuEzCKge4X4fWSBzuiJBEhJdXAVD5l
 0cTyXQodz+f/Spo+OU3LceaM/0acqV+nXfmz4G9ih4CsT4ObyK/lZ0/9vjIxYmn9CX2b2/MfN
 nObbLU3z3VdX2drlbyAU8NWhomtosT576XS5YvjGK9K8HVs028+szWssi718+1by16pbeqYy9
 ldapvypeff8W/2pnnvI/+d335s6lKnEqFEa/uP+WnT9u22O6UhkJLz6u6/0CdXPyhVnmOvfMI
 VeuxJh8t+09wEfraSSgXr47vu7ze7vK2+aPmpNK6o4AUG5cHBIZ4xk08xc82t6GH51t2tIjon
 7pBP9/lnv5y0bu+dO8uue53Ek7Rj3Gp7zlmer/uq69PcxW4h16Qje9lZXNHpdXmnEktxRqKhF
 nNRcSIAWPdk8IkDAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-13.tower-335.messagelabs.com!1593739461!26365!1
X-Originating-IP: [104.232.225.12]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.2; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1032 invoked from network); 3 Jul 2020 01:24:22 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.12)
 by server-13.tower-335.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 3 Jul 2020 01:24:22 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 0FA906E112300A1F70D1;
 Thu,  2 Jul 2020 21:24:21 -0400 (EDT)
Received: from localhost.localdomain.com (10.64.82.46) by
 reswpmail04.lenovo.com (10.62.32.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1913.5; Thu, 2 Jul 2020 18:24:18 -0700
From: Mark Pearson <markpearson@lenovo.com>
To: <markpearson@lenovo.com>
Date: Thu, 2 Jul 2020 21:23:53 -0400
Message-ID: <20200703012353.26413-1-markpearson@lenovo.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <markpearson@lenovo.com>
References: <markpearson@lenovo.com>
MIME-Version: 1.0
X-Originating-IP: [10.64.82.46]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.4 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.4 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jrARO-006RDY-EJ
Subject: [ibm-acpi-devel] [PATCH v5] platform/x86: thinkpad_acpi: lap or
 desk mode interface
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
 andy.shevchenko@gmail.com, Nitin Joshi <njoshi1@lenovo.com>, Bastien
 Nocera <bnocera@redhat.com>
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
Reviewed-by: Bastien Nocera <bnocera@redhat.com>
Signed-off-by: Mark Pearson <markpearson@lenovo.com>
---
Changes in v5:
 - Updated with review changes from Andy Shevchenko
 - Added ABI information to thinkpad-acpi.rst
 - improved error handling and parameter passing as recommended
 - code cleanup as recommended
 - added review tag from bnocera
Changes in v4:
 - Correct hotkey event comment as we're handling event
 - Remove unnecessary check in dytc_lapmode_refresh
Changes in v3:
- Fixed inaccurate comments
- Used BIT macro to check lapmode bit setting as recommended and update
  define name
- Check for new_state == dytc_lapmode in dytc_lapmode_refresh
Changes in v2:
- cleaned up initialisation sequence to be cleaner and avoid spamming
  platforms that don't have DYTC with warning message. Tested on P52
- Adding platform-driver-x86 mailing list for review as requested

 .../admin-guide/laptops/thinkpad-acpi.rst     |  15 +++
 drivers/platform/x86/thinkpad_acpi.c          | 111 +++++++++++++++++-
 2 files changed, 124 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
index 822907dcc845..99066aa8d97b 100644
--- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
+++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
@@ -50,6 +50,7 @@ detailed description):
 	- WAN enable and disable
 	- UWB enable and disable
 	- LCD Shadow (PrivacyGuard) enable and disable
+	- Lap mode sensor
 
 A compatibility table by model and feature is maintained on the web
 site, http://ibm-acpi.sf.net/. I appreciate any success or failure
@@ -1432,6 +1433,20 @@ The first command ensures the best viewing angle and the latter one turns
 on the feature, restricting the viewing angles.
 
 
+DYTC Lapmode sensor
+------------------
+
+sysfs: dytc_lapmode
+
+Newer thinkpads and mobile workstations have the ability to determine if
+the device is in deskmode or lapmode. This feature is used by user space
+to decide if WWAN transmission can be increased to maximum power and is
+also useful for understanding the different thermal modes available as
+they differ between desk and lap mode.
+
+The property is read-only. If the platform doesn't have support the sysfs
+class is not created.
+
 EXPERIMENTAL: UWB
 -----------------
 
diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index ff7f0a4f2475..037eb77414f9 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -4022,8 +4022,8 @@ static bool hotkey_notify_6xxx(const u32 hkey,
 		return true;
 	case TP_HKEY_EV_THM_CSM_COMPLETED:
 		pr_debug("EC reports: Thermal Control Command set completed (DYTC)\n");
-		/* recommended action: do nothing, we don't have
-		 * Lenovo ATM information */
+		/* Thermal event - pass on to event handler */
+		tpacpi_driver_event(hkey);
 		return true;
 	case TP_HKEY_EV_THM_TRANSFM_CHANGED:
 		pr_debug("EC reports: Thermal Transformation changed (GMTS)\n");
@@ -9795,6 +9795,105 @@ static struct ibm_struct lcdshadow_driver_data = {
 	.write = lcdshadow_write,
 };
 
+/*************************************************************************
+ * DYTC subdriver, for the Lenovo lapmode feature
+ */
+
+#define DYTC_CMD_GET          2 /* To get current IC function and mode */
+#define DYTC_GET_LAPMODE_BIT 17 /* Set when in lapmode */
+
+static bool dytc_lapmode;
+
+static void dytc_lapmode_notify_change(void)
+{
+	sysfs_notify(&tpacpi_pdev->dev.kobj, NULL, "dytc_lapmode");
+}
+
+static int dytc_command(int command, int *output)
+{
+	acpi_handle dytc_handle;
+
+	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DYTC", &dytc_handle))) {
+		/* Platform doesn't support DYTC */
+		return -ENODEV;
+	}
+	if (!acpi_evalf(dytc_handle, output, NULL, "dd", command))
+		return -EIO;
+	return 0;
+}
+
+static int dytc_lapmode_get(bool *state)
+{
+	int output, err;
+
+	err = dytc_command(DYTC_CMD_GET, &output);
+	if (err)
+		return err;
+	*state = output & BIT(DYTC_GET_LAPMODE_BIT) ? true : false;
+	return 0;
+}
+
+static void dytc_lapmode_refresh(void)
+{
+	bool new_state;
+	int err;
+
+	err = dytc_lapmode_get(&new_state);
+	if (err || (new_state == dytc_lapmode))
+		return;
+
+	dytc_lapmode = new_state;
+	dytc_lapmode_notify_change();
+}
+
+/* sysfs lapmode entry */
+static ssize_t dytc_lapmode_show(struct device *dev,
+					struct device_attribute *attr,
+					char *buf)
+{
+	return snprintf(buf, PAGE_SIZE, "%d\n", dytc_lapmode);
+}
+
+static DEVICE_ATTR_RO(dytc_lapmode);
+
+static struct attribute *dytc_attributes[] = {
+	&dev_attr_dytc_lapmode.attr,
+	NULL,
+};
+
+static const struct attribute_group dytc_attr_group = {
+	.attrs = dytc_attributes,
+};
+
+static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
+{
+	int err;
+
+	err = dytc_lapmode_get(&dytc_lapmode);
+	/* If support isn't available (ENODEV) then don't return an error
+	 * but just don't create the sysfs group
+	 */
+	if (err == -ENODEV)
+		return 0;
+	/* For all other errors we can flag the failure */
+	if (err)
+		return err;
+
+	/* Platform supports this feature - create the group */
+	err = sysfs_create_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
+	return err;
+}
+
+static void dytc_exit(void)
+{
+	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
+}
+
+static struct ibm_struct dytc_driver_data = {
+	.name = "dytc",
+	.exit = dytc_exit,
+};
+
 /****************************************************************************
  ****************************************************************************
  *
@@ -9842,6 +9941,10 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
 
 		mutex_unlock(&kbdlight_mutex);
 	}
+
+	if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
+		dytc_lapmode_refresh();
+
 }
 
 static void hotkey_driver_event(const unsigned int scancode)
@@ -10280,6 +10383,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
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
