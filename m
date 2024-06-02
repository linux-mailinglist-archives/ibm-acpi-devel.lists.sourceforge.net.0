Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF8F8D7485
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  2 Jun 2024 11:20:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sDhN8-0000hO-7b;
	Sun, 02 Jun 2024 09:19:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1sDhN6-0000h8-35
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZNshTSTyMNzdhU8F6OTByctUHT0mk+WbuONPSHCezXw=; b=PilGv9bEmBXFGgrH9ANWmdnWEd
 HzzFSOCbYNzjoS2mbeYnBYlu1hugQhV1J8TozXZc/q9XXugaODgnd/IfCkpV6Ax2OSTU0aKHfIx7l
 P7a6x113aYymisRJd7MAhv8R0qoAkEbTKxzKmMaPtMlGAzjkpODzLvcLwVK1AgVp2524=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZNshTSTyMNzdhU8F6OTByctUHT0mk+WbuONPSHCezXw=; b=lL+n+9etuY55bpOrQA70MLRYD1
 zawmfp95kjMBNsHOiSB1/ldYKcz62X3H7A+9H8Lp5ehb2RIJj+U10JNnLxCh99mGs7sYmR56bKOm5
 2GTaN3KwLHOmrNRDFZ7QLMER4SRjseuYjcir+3EjoSA+zS4fOH5CIGx4X7oyNml/U2y0=;
Received: from fgw21-7.mail.saunalahti.fi ([62.142.5.82])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sDhN5-0005GL-GH for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:23 +0000
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
 by fgw21.mail.saunalahti.fi (Halon) with ESMTP
 id e4aa8b06-20be-11ef-ab01-005056bdd08f;
 Sun, 02 Jun 2024 12:02:52 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jorge Lopez <jorge.lopez2@hp.com>, Li Zetao <lizetao1@huawei.com>,
 Simon Trimmer <simont@opensource.cirrus.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
Date: Sun,  2 Jun 2024 11:57:57 +0300
Message-ID: <20240602090244.1666360-5-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
References: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use 2-argument strscpy(), which is not only shorter but also
 provides an additional check that destination buffer is an array.
 Signed-off-by:
 Andy Shevchenko --- drivers/platform/x86/serial-multi-instantiate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-) 
 Content analysis details:   (3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.82 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.82 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [62.142.5.82 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1sDhN5-0005GL-GH
Subject: [ibm-acpi-devel] [PATCH v1 4/7] platform/x86:
 serial-multi-instantiate: Use 2-argument strscpy()
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
 drivers/platform/x86/serial-multi-instantiate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/x86/serial-multi-instantiate.c b/drivers/platform/x86/serial-multi-instantiate.c
index 97b9c6392230..3be016cfe601 100644
--- a/drivers/platform/x86/serial-multi-instantiate.c
+++ b/drivers/platform/x86/serial-multi-instantiate.c
@@ -131,7 +131,7 @@ static int smi_spi_probe(struct platform_device *pdev, struct smi *smi,
 
 		ctlr = spi_dev->controller;
 
-		strscpy(spi_dev->modalias, inst_array[i].type, sizeof(spi_dev->modalias));
+		strscpy(spi_dev->modalias, inst_array[i].type);
 
 		ret = smi_get_irq(pdev, adev, &inst_array[i]);
 		if (ret < 0) {
@@ -205,7 +205,7 @@ static int smi_i2c_probe(struct platform_device *pdev, struct smi *smi,
 
 	for (i = 0; i < count && inst_array[i].type; i++) {
 		memset(&board_info, 0, sizeof(board_info));
-		strscpy(board_info.type, inst_array[i].type, I2C_NAME_SIZE);
+		strscpy(board_info.type, inst_array[i].type);
 		snprintf(name, sizeof(name), "%s-%s.%d", dev_name(dev), inst_array[i].type, i);
 		board_info.dev_name = name;
 
-- 
2.45.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
