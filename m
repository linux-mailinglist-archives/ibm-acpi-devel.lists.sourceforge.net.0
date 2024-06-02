Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5901B8D748D
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  2 Jun 2024 11:20:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sDhNA-0002Ry-T3;
	Sun, 02 Jun 2024 09:19:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1sDhN5-0002Rg-OE
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bHdxR5NyvwCqUDQn4y5ud313UyM6kYkukv3oO78nYGI=; b=WheNbCmsOhb2TZwAONw0xWEvSD
 5aAz4E05e/81ZzMMQRW7fhAvMIb2mpW36ZyhUrPH5JJEPycObUq4kfKLI5CCxwlT3TD+fYccUnQsh
 IPysClopE5V9RgCd3GmLrC635RtfwyWaoFQJnoYNFPliQ5oGz83nJD3NgdMnKK/Pyu6g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bHdxR5NyvwCqUDQn4y5ud313UyM6kYkukv3oO78nYGI=; b=D
 YtbSlnYIYomdkueLGI/t1jt/E21IlE2hRchO3ZjiBTqiC+JLLvfJhdWTWv95p2gdTGaP6HTMskp9X
 aukMhsko6f5LZVeX6awQ7R94HWxzY5iqxRpN/CL/Im6zX8ewk2LEpdtMzYGU4dif0OsolC/gnufMF
 UuELIp1PWQV6Xalc=;
Received: from fgw23-7.mail.saunalahti.fi ([62.142.5.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sDhN6-0005GP-6Q for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:24 +0000
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
 by fgw22.mail.saunalahti.fi (Halon) with ESMTP
 id e0b351d6-20be-11ef-8e3d-005056bdf889;
 Sun, 02 Jun 2024 12:02:48 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jorge Lopez <jorge.lopez2@hp.com>, Li Zetao <lizetao1@huawei.com>,
 Simon Trimmer <simont@opensource.cirrus.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
Date: Sun,  2 Jun 2024 11:57:53 +0300
Message-ID: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Move to 2-argument strscpy() to make code shorter and have
 an additional check. No functional change intended. Some cases are let
 untouched
 where it looks better with the 3rd argument. Andy Shevchenko (7):
 platform/x86:
 asus-tf103c-dock: Use 2-argument strscpy() platform/x86: hp: hp-bioscfg:
 Use 2-argument strscpy() platform/x86: intel: chtwc_int33fe: Use 2-argument
 strscpy() platfo [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.84 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [62.142.5.84 listed in list.dnswl.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.84 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list 0.0 SPOOFED_FREEMAIL       No description available.
 1.5 SPOOF_GMAIL_MID        From Gmail but it doesn't seem to be...
X-Headers-End: 1sDhN6-0005GP-6Q
Subject: [ibm-acpi-devel] [PATCH v1 0/7] platform/x86: Move to 2-argument
 strscpy()
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

Move to 2-argument strscpy() to make code shorter and have an additional check.
No functional change intended.

Some cases are let untouched where it looks better with the 3rd argument.

Andy Shevchenko (7):
  platform/x86: asus-tf103c-dock: Use 2-argument strscpy()
  platform/x86: hp: hp-bioscfg: Use 2-argument strscpy()
  platform/x86: intel: chtwc_int33fe: Use 2-argument strscpy()
  platform/x86: serial-multi-instantiate: Use 2-argument strscpy()
  platform/x86: think-lmi: Use 2-argument strscpy()
  platform/x86: thinkpad_acpi: Use 2-argument strscpy()
  platform/x86: touchscreen_dmi: Use 2-argument strscpy()

 drivers/platform/x86/asus-tf103c-dock.c       | 10 +++++-----
 .../x86/hp/hp-bioscfg/enum-attributes.c       | 18 +++++-------------
 .../x86/hp/hp-bioscfg/int-attributes.c        |  7 ++-----
 .../x86/hp/hp-bioscfg/order-list-attributes.c | 18 +++++-------------
 .../x86/hp/hp-bioscfg/passwdobj-attributes.c  | 19 +++++--------------
 .../x86/hp/hp-bioscfg/spmobj-attributes.c     |  3 +--
 .../x86/hp/hp-bioscfg/string-attributes.c     | 12 ++++--------
 drivers/platform/x86/intel/chtwc_int33fe.c    |  6 +++---
 .../platform/x86/serial-multi-instantiate.c   |  4 ++--
 drivers/platform/x86/think-lmi.c              |  4 ++--
 drivers/platform/x86/thinkpad_acpi.c          |  6 ++----
 drivers/platform/x86/touchscreen_dmi.c        |  2 +-
 12 files changed, 37 insertions(+), 72 deletions(-)

-- 
2.45.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
