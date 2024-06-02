Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 363EC8D7488
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  2 Jun 2024 11:20:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sDhMu-0000tp-Az;
	Sun, 02 Jun 2024 09:19:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1sDhMt-0000td-BR
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d+lj9jEW3+1WmijsW6oDadXhxUFJI/P2189/L37fCLE=; b=lQBVpvhqvRfgDpGYo+U0AAhM+I
 Ts8JMsp0IdA83iAmV1qYneFiNK2Eob+2VRkbsqYzrx4tyVCIOR7X7JgyqupNwK31jiK/HOpeU6MqN
 9R3lXOmwN5Z39Y3EbIj9rxuGs4Vw1fdYbAs51858HwdixSwsJIUFdhdBoHlt5OvzseVk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d+lj9jEW3+1WmijsW6oDadXhxUFJI/P2189/L37fCLE=; b=g66MebkpUXHHjJdYkYeAPCZT+s
 iDP7nROshi9vnjH0aVsRe8TKHTpS7TE/lOv3FqkogfoKgxRjCA0zngqphCQMeEbLwdEZRLS4BNCLK
 IWZaZmqvxjhvjIbSzxIui2TphItzfUIkgGoIugQHeVwFu9DmfROIbBcW1OJywFMjvq2I=;
Received: from fgw22-7.mail.saunalahti.fi ([62.142.5.83])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sDhMt-0005FS-I7 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:11 +0000
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
 by fgw21.mail.saunalahti.fi (Halon) with ESMTP
 id e2b70418-20be-11ef-ab01-005056bdd08f;
 Sun, 02 Jun 2024 12:02:49 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jorge Lopez <jorge.lopez2@hp.com>, Li Zetao <lizetao1@huawei.com>,
 Simon Trimmer <simont@opensource.cirrus.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
Date: Sun,  2 Jun 2024 11:57:54 +0300
Message-ID: <20240602090244.1666360-2-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
References: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use 2-argument strscpy(), which is not only shorter but also
 provides an additional check that destination buffer is an array.
 Signed-off-by:
 Andy Shevchenko --- drivers/platform/x86/asus-tf103c-dock.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-) 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.83 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.83 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [62.142.5.83 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1sDhMt-0005FS-I7
Subject: [ibm-acpi-devel] [PATCH v1 1/7] platform/x86: asus-tf103c-dock: Use
 2-argument strscpy()
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
Cc: Mark Pearson <markpearson@lenovo.com>, "Luke D. Jones" <luke@ljones.dev>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Corentin Chary <corentin.chary@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Use 2-argument strscpy(), which is not only shorter but also provides
an additional check that destination buffer is an array.

Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
 drivers/platform/x86/asus-tf103c-dock.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/platform/x86/asus-tf103c-dock.c b/drivers/platform/x86/asus-tf103c-dock.c
index 8f0f87637c5f..b441d8ca72d3 100644
--- a/drivers/platform/x86/asus-tf103c-dock.c
+++ b/drivers/platform/x86/asus-tf103c-dock.c
@@ -490,7 +490,7 @@ static void tf103c_dock_enable_touchpad(struct tf103c_dock_data *dock)
 		return;
 	}
 
-	strscpy(board_info.type, "elan_i2c", I2C_NAME_SIZE);
+	strscpy(board_info.type, "elan_i2c");
 	board_info.addr = TF103C_DOCK_TP_ADDR;
 	board_info.dev_name = TF103C_DOCK_DEV_NAME "-tp";
 	board_info.irq = dock->tp_irq;
@@ -795,7 +795,7 @@ static int tf103c_dock_probe(struct i2c_client *client)
 	 */
 	dock->ec_client = client;
 
-	strscpy(board_info.type, "tf103c-dock-intr", I2C_NAME_SIZE);
+	strscpy(board_info.type, "tf103c-dock-intr");
 	board_info.addr = TF103C_DOCK_INTR_ADDR;
 	board_info.dev_name = TF103C_DOCK_DEV_NAME "-intr";
 
@@ -803,7 +803,7 @@ static int tf103c_dock_probe(struct i2c_client *client)
 	if (IS_ERR(dock->intr_client))
 		return dev_err_probe(dev, PTR_ERR(dock->intr_client), "creating intr client\n");
 
-	strscpy(board_info.type, "tf103c-dock-kbd", I2C_NAME_SIZE);
+	strscpy(board_info.type, "tf103c-dock-kbd");
 	board_info.addr = TF103C_DOCK_KBD_ADDR;
 	board_info.dev_name = TF103C_DOCK_DEV_NAME "-kbd";
 
@@ -846,8 +846,8 @@ static int tf103c_dock_probe(struct i2c_client *client)
 	dock->hid->vendor = 0x0b05;  /* USB_VENDOR_ID_ASUSTEK */
 	dock->hid->product = 0x0103; /* From TF-103-C */
 	dock->hid->version = 0x0100; /* 1.0 */
-	strscpy(dock->hid->name, "Asus TF103C Dock Keyboard", sizeof(dock->hid->name));
-	strscpy(dock->hid->phys, dev_name(dev), sizeof(dock->hid->phys));
+	strscpy(dock->hid->name, "Asus TF103C Dock Keyboard");
+	strscpy(dock->hid->phys, dev_name(dev));
 
 	ret = hid_add_device(dock->hid);
 	if (ret)
-- 
2.45.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
