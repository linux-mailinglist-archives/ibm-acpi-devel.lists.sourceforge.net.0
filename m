Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 989DC2C4BC4
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 26 Nov 2020 01:05:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ki4n4-0004dv-Hk; Thu, 26 Nov 2020 00:05:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tamiko@peregrine.43-1.org>) id 1ki4n4-0004dj-4H
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 26 Nov 2020 00:05:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iC330Y4ash+p4u52hPwApeCc+ewflvPd3mNjLUG41Ug=; b=TX0ATORuxMhefj2tPbklS63EK0
 Ng5C2u+t+yf7b75G0+cCk32bSox5ydq8YTPZM0SsD0jgfgdphcoulyn6AtMxfwLOGFE0FT5lFQCW9
 mpiddNZNsLkxmI5+C7QAyhdajPqxJUNMP6Psiee/nNjlDHCwSv80XVsI6IxwO+yewgFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iC330Y4ash+p4u52hPwApeCc+ewflvPd3mNjLUG41Ug=; b=LOo5cslP/wdxS7xo49a9dJiy/U
 zKjGq8gSOwpXZeGp4QcbZDmyY0MNrHi/Fkx2Id4A0+8sEM1Si905LMeDWkC8O2NE38AJcozv2LSZy
 R/lIszLkMKDVnj3v1cVpG5yiyQfEOgbyyLXDDpuqSDnVpcUaa34TVrLDpu3qP/YKKLjE=;
Received: from tsukuyomi.43-1.org ([116.203.33.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ki4mz-00GBdL-9R
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 26 Nov 2020 00:05:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=43-1.org;
 i=@43-1.org; q=dns/txt; s=2019; t=1606349116; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version
 : content-transfer-encoding : from;
 bh=XDPZU4qE5L48A/0IUHiUHe0TCFIT9VjlKaKmqkuOKiA=;
 b=kNKInLmSRiJSwp+K0JLWSHbTWDa+kJcH/8Ohn9WKkyN37JlHklUaKfb2vLt5eDcfqwMbo
 D2c22lg+RT7uM4JyDk4sza5hFhR5rAx5B4JzNxj0RXhj6ipAyQ9JK5prLHhHIt1iIs95eoJ
 +wxa1GzD3LhPmeRmXSh4L1H6lJsYw29yMTppjB3JsbQK+jTmu4rlX71tOTkScBg1M39WPBF
 n+QaD6myB66G/AwxRVHoN9d/3E6FxxRl3QutavlxuQlDjoSK99hFPzPez26xPWhmWC/u/yz
 p4kLSyjLee8+IKNP2E23X7yGjbdRoG2BAh7TPHWnLYIAUzV9yU1XL5/2ErQw==
From: tamiko-ibm-acpi-devel@43-1.org
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>
Date: Wed, 25 Nov 2020 18:04:16 -0600
Message-Id: <20201126000416.2459645-2-tamiko-ibm-acpi-devel@43-1.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126000416.2459645-1-tamiko-ibm-acpi-devel@43-1.org>
References: <20201126000416.2459645-1-tamiko-ibm-acpi-devel@43-1.org>
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 43-1.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ki4mz-00GBdL-9R
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Whitelist P15
 firmware for dual fan control
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Matthias Maier <tamiko@43-1.org>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

From: Matthias Maier <tamiko@43-1.org>

This commit enables dual fan control for the following new Lenovo
models: P15, P15v.

Signed-off-by: Matthias Maier <tamiko@43-1.org>
---
 drivers/platform/x86/thinkpad_acpi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 5ad06fd98515..26b1502f9bbe 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -8786,6 +8786,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
 	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
 	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
 	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
+	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
 };
 
 static int __init fan_init(struct ibm_init_struct *iibm)
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
