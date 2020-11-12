Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DDE2AFFFC
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 12 Nov 2020 08:02:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kd6cz-0001us-1g; Thu, 12 Nov 2020 07:02:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tamiko@peregrine.43-1.org>) id 1kd6cx-0001uW-Cx
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 12 Nov 2020 07:02:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3MNlkEsPCTJmFnehmhD+5vz2kZyzAoUgYUXQPLpK2Cw=; b=c5hkGYuyjSqxJYhlNDZS1UQeEC
 NWgCNxVkhE2nLO+LrlqaG1D/qK4/e020NmS45toqqZjpeRwgkBxkh8q9VFbHovTKbPHNBR8+0+ZuA
 nCKy6LHYCeoBhwrsw1IXqQUMpkvgtlwJt4EhYPJK/NgI60xqtRt66z7uE6P5AyfQOmj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3MNlkEsPCTJmFnehmhD+5vz2kZyzAoUgYUXQPLpK2Cw=; b=iPe5hJyeo2NDO6jFn5Ou6OkMsF
 IFg9MQEznNbcKpcX/zvIaVIYYjoT3afTNyO5nnBBR01fMn2/W8xdsJx5pbZxBb4vmnFhuIaM0NLsf
 Uwbpr18QiBftzdgEiAxvfog98+c7TRjs0dhTCEpeBphfFVrNm/hgPc/ta6omXBX68SzI=;
Received: from tsukuyomi.43-1.org ([116.203.33.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kd6cs-008mmH-OX
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 12 Nov 2020 07:02:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=43-1.org;
 i=@43-1.org; q=dns/txt; s=2019; t=1605163631; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version
 : content-transfer-encoding : from;
 bh=6ca/tFV7EP8qDO00PPCPMOgxC7TLknUM7W0CVTreqQc=;
 b=ePC2uc0Dr+JyOTfQepB5429hoslBoMnrVKTKUgWJXP4YTogy2qfYDFZRBl0rGShy+4rnw
 yA7F6sWwvtGI/gMItpaMK17qubRaVONn8c5O7pl+QK26KTGZLKvv+xDJ9HEcUhGIEH7k7xV
 nOr6qcoJ+ueaE5mFLNfkPh7AsmN37E0mVvFFrhGEOVACcAxkiqFqwDtEIeh6WH4HhMdKGQw
 plEZ0HAbFQrZIkhL2iw6vWLOYF4hD8Jx10eCSL/u3NajaTN0lXkUh5RdV9f2ztecZtuccjp
 pFEiOH6VftOZzknfgV/GGDZM/Y0SbCeCa7xGXkVDqAvIi/2FqR3lEkI5kc9A==
From: tamiko-ibm-acpi-devel@43-1.org
To: ibm-acpi-devel@lists.sourceforge.net
Date: Thu, 12 Nov 2020 00:46:46 -0600
Message-Id: <20201112064646.12125-2-tamiko-ibm-acpi-devel@43-1.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201112064646.12125-1-tamiko-ibm-acpi-devel@43-1.org>
References: <20201112064646.12125-1-tamiko-ibm-acpi-devel@43-1.org>
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
X-Headers-End: 1kd6cs-008mmH-OX
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
Cc: Matthias Maier <tamiko@43-1.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

From: Matthias Maier <tamiko@43-1.org>

This commit enables dual fan control for the following new Lenovo
models: P15, P15s, P15v.
---
 drivers/platform/x86/thinkpad_acpi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 36d9594bca7f..228f00230fbe 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -8784,6 +8784,8 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
 	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
 	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
 	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
+	TPACPI_Q_LNV3('N', '2', 'X', TPACPI_FAN_2CTL),	/* P15s (1st gen) */
+	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
 };
 
 static int __init fan_init(struct ibm_init_struct *iibm)
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
