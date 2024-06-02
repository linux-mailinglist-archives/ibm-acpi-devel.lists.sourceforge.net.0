Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE008D7487
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  2 Jun 2024 11:20:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sDhN5-0000vS-M4;
	Sun, 02 Jun 2024 09:19:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1sDhN4-0000vD-By
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VHJp9gFeb+3Da4MkJMfRcyFJpNbFPck4zO1RTY85Kxw=; b=GBMNKCRPS0EEVspamY1Z2S/fCx
 wZatSNHE06qzXoyqN6mVcSr1LVpZZLLuX5np0i04b7FDa6/MIVmNjxaK08/MScYsbX9Iio0rQaz4G
 MerQ7BRgzK4Da8TI7FM3J2TTd+SxzkGU1b7MmpynazEq73uECvEQ1yriu305slCykSng=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VHJp9gFeb+3Da4MkJMfRcyFJpNbFPck4zO1RTY85Kxw=; b=H9nQ95nr8P2EFj+68w7g/a6262
 /RepRCEjASKZQapzwMLXN19eM/RmQ4Bx2cJgEy1hLM2jBxINlUEUg5mJ5YU5/hrdrSRWmAfMvJsSF
 LmwhkZ4M6JcKH1O8I0mAlwhKE1KkiMhKJ7r8/wzOTehFNCs3RZZoNq9vP9eNQO9NZfWk=;
Received: from fgw23-7.mail.saunalahti.fi ([62.142.5.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sDhN4-0005GJ-Ne for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:22 +0000
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
 by fgw20.mail.saunalahti.fi (Halon) with ESMTP
 id e40e5ddf-20be-11ef-8d47-005056bd6ce9;
 Sun, 02 Jun 2024 12:02:51 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jorge Lopez <jorge.lopez2@hp.com>, Li Zetao <lizetao1@huawei.com>,
 Simon Trimmer <simont@opensource.cirrus.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
Date: Sun,  2 Jun 2024 11:57:56 +0300
Message-ID: <20240602090244.1666360-4-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
References: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use 2-argument strscpy(), which is not only shorter but also
 provides an additional check that destination buffer is an array.
 Signed-off-by:
 Andy Shevchenko --- drivers/platform/x86/intel/chtwc_int33fe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-) 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.84 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.84 listed in sa-accredit.habeas.com]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [62.142.5.84 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1sDhN4-0005GJ-Ne
Subject: [ibm-acpi-devel] [PATCH v1 3/7] platform/x86: intel: chtwc_int33fe:
 Use 2-argument strscpy()
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
 drivers/platform/x86/intel/chtwc_int33fe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/platform/x86/intel/chtwc_int33fe.c b/drivers/platform/x86/intel/chtwc_int33fe.c
index 93f75ba1dafd..11503b1c85f3 100644
--- a/drivers/platform/x86/intel/chtwc_int33fe.c
+++ b/drivers/platform/x86/intel/chtwc_int33fe.c
@@ -270,7 +270,7 @@ cht_int33fe_register_max17047(struct device *dev, struct cht_int33fe_data *data)
 	}
 
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "max17047", I2C_NAME_SIZE);
+	strscpy(board_info.type, "max17047");
 	board_info.dev_name = "max17047";
 	board_info.fwnode = fwnode;
 	data->battery_fg = i2c_acpi_new_device(dev, 1, &board_info);
@@ -361,7 +361,7 @@ static int cht_int33fe_typec_probe(struct platform_device *pdev)
 	}
 
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "typec_fusb302", I2C_NAME_SIZE);
+	strscpy(board_info.type, "typec_fusb302");
 	board_info.dev_name = "fusb302";
 	board_info.fwnode = fwnode;
 	board_info.irq = fusb302_irq;
@@ -381,7 +381,7 @@ static int cht_int33fe_typec_probe(struct platform_device *pdev)
 	memset(&board_info, 0, sizeof(board_info));
 	board_info.dev_name = "pi3usb30532";
 	board_info.fwnode = fwnode;
-	strscpy(board_info.type, "pi3usb30532", I2C_NAME_SIZE);
+	strscpy(board_info.type, "pi3usb30532");
 
 	data->pi3usb30532 = i2c_acpi_new_device(dev, 3, &board_info);
 	if (IS_ERR(data->pi3usb30532)) {
-- 
2.45.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
