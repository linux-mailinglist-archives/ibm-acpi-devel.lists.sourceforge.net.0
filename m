Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9054F8D7486
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  2 Jun 2024 11:20:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sDhN3-0002RO-JE;
	Sun, 02 Jun 2024 09:19:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1sDhN2-0002RF-1i
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hEQkEETN3f5Yn0iqlG10Wl7KADsqruL4/D3OgEYqnG4=; b=eRIfsM6ZC8FB/q6oekoh37o5IC
 qyLveHTUFJFNzP4Z2LHTAn57Fym1AMRQMP/Arfpw/rAvmb7As1rfvUgFcqVyPTmAvnJdbNHyteVo+
 xaXP3ow75zi/53w9viI3sox+kwCeSzsgBza3ESC7gjV69tpf7hkusQ7q1j19xRFqFoh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hEQkEETN3f5Yn0iqlG10Wl7KADsqruL4/D3OgEYqnG4=; b=dnG5rRTCntW8JzpD6vMCoChF9y
 Eqc/vwITMHh+Wp+1l3DDkeqSd+vuVP6USVJ2KfQ9xIhXPiEOULBb/6plSzvgQBMsKcBXF6wyEfzEj
 K1hEDV+a+GDwiCz/ExgsGpaVpTSWy47F9czw2kHu5SP7i5mAj7yXvw6IMfI+XeleR634=;
Received: from fgw20-7.mail.saunalahti.fi ([62.142.5.81])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sDhN1-0005G3-Uu for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:19 +0000
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
 by fgw22.mail.saunalahti.fi (Halon) with ESMTP
 id e585c43e-20be-11ef-8e3d-005056bdf889;
 Sun, 02 Jun 2024 12:02:53 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jorge Lopez <jorge.lopez2@hp.com>, Li Zetao <lizetao1@huawei.com>,
 Simon Trimmer <simont@opensource.cirrus.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
Date: Sun,  2 Jun 2024 11:57:59 +0300
Message-ID: <20240602090244.1666360-7-andy.shevchenko@gmail.com>
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
 Andy Shevchenko --- drivers/platform/x86/thinkpad_acpi.c | 6 ++---- 1 file
 changed, 2 insertions(+), 4 deletions(-) 
 Content analysis details:   (3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.81 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.81 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [62.142.5.81 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1sDhN1-0005G3-Uu
Subject: [ibm-acpi-devel] [PATCH v1 6/7] platform/x86: thinkpad_acpi: Use
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
 drivers/platform/x86/thinkpad_acpi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 397b409064c9..f269ca1ff771 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -7416,10 +7416,8 @@ static int __init volume_create_alsa_mixer(void)
 	data = card->private_data;
 	data->card = card;
 
-	strscpy(card->driver, TPACPI_ALSA_DRVNAME,
-		sizeof(card->driver));
-	strscpy(card->shortname, TPACPI_ALSA_SHRTNAME,
-		sizeof(card->shortname));
+	strscpy(card->driver, TPACPI_ALSA_DRVNAME);
+	strscpy(card->shortname, TPACPI_ALSA_SHRTNAME);
 	snprintf(card->mixername, sizeof(card->mixername), "ThinkPad EC %s",
 		 (thinkpad_id.ec_version_str) ?
 			thinkpad_id.ec_version_str : "(unknown)");
-- 
2.45.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
