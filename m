Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED43C61FE72
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  7 Nov 2022 20:17:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1os7c0-0007p9-Sc;
	Mon, 07 Nov 2022 19:16:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bryanhundven@gmail.com>) id 1os7c0-0007p3-26
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Nov 2022 19:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LmzviEtI6za1aPVTyC/Ny2X2ZUBG9TeFGIIO0h1TScs=; b=FtYvHJ+4HIQ05l2Jp4P8pgiqKY
 PVS1OXFLLuOnFXjIFWGArH8ulX5bee9LE7ubvl3c1bLY0qq1hI5BoUa2zqeDKwmUstFroZBXdbCSm
 oECo1ws/74n/qcAUjVVVviDAZddhRVsu5vuAXAJpsK8o/9HlBclExdHGCXEbE/GZ0fbQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LmzviEtI6za1aPVTyC/Ny2X2ZUBG9TeFGIIO0h1TScs=; b=F
 I/FTKU5AE+VNzPkXBjGUU/dDbN+cDjAdLPID6CLpQLxTRXLdVMp4dbeeNBqVchh0LxQsCfQZl5qXw
 Y2KXzyTsDQJGEiY0P3Vfv/+QpaAJWfBCvl615c+DDLRRlMQ5mMOwIMjWcuvjZl9g3jDibFs7/vaXg
 eX77yKqqNwrn4+RI=;
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1os7bv-0006cW-P1 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Nov 2022 19:16:47 +0000
Received: by mail-pl1-f181.google.com with SMTP id j12so11949400plj.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 07 Nov 2022 11:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=LmzviEtI6za1aPVTyC/Ny2X2ZUBG9TeFGIIO0h1TScs=;
 b=OYIDW1J4IJQppRM5Xg2qZNFmw8IgDI9kQtJzuLiuqMTCnCqd4Dl3EQDSRzUEZC/dhf
 DGZncvgZuH5LtniDPy5IgCc2VAfmlNR0U/HqpBL2e6ONCpFeO8V98YBUxvY/auIjt41/
 iB7IyCLPWf6TVatvS+V4PlWhv5+riF46Et4FQMkJk3mYGf+DV/f3XCnW5BbCiyXtRPbu
 FuN7Kpf/koeBQf/O1mKWGg/xPMLYzd6SaPmO7XyR+SUdGDWQ9Lu3W9FgxdXP9asTfuRo
 GV+DxgVstDh1SDSQVk4JTktt9K6SIBnq+hS2Kl/HS9CMOHNAzX0FnsreTYOvZAz2z/1r
 SCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LmzviEtI6za1aPVTyC/Ny2X2ZUBG9TeFGIIO0h1TScs=;
 b=1mu6IbVxFL3pYaWHjH7M+lbnP4lsiE0drx8ywEgzRAJBOnVtdCu95+oMm/vZdiu7LP
 Aso2RuLfmlAzPYTYAxdpe5qHVokcLLNEZoATO0XsVSRxaiFlO6wqQRHyLj0JkI9xxl4+
 4x5b6ek3n/IPcak53eOyKwecvarv0gG2ABRxNWqSR9Q5HuiEO2zxt2rbU+6v/HbI4PBB
 qUH2khNRNyelqE+mZpqF7YvNcL2SqTXztDSrQAQMtVakTz8RsWredrY9AZs1lFvoXbVM
 rjSf27U72lsmWo4BWfwFsZ8jn75obD93ssQ3iaKIC7IOGCv7AmJQWTiZSlEq0C1puCjo
 b9kg==
X-Gm-Message-State: ACrzQf3ftY1ijVnDXzyCz7scVW6H3d/NXaKKYXUy+wz3ytpE3WAmSkVW
 foXKynxFNLuLVof8oZZAMg8FFJtK9lg=
X-Google-Smtp-Source: AMsMyM6HTr8ocSML0cCifXphcFAGeswTo3nx0gulve4DDsHYcF0aaFjnwbjOAj9a06EtjA2bQVnj1A==
X-Received: by 2002:a17:902:b28c:b0:186:708e:6ed7 with SMTP id
 u12-20020a170902b28c00b00186708e6ed7mr51519497plr.98.1667848597438; 
 Mon, 07 Nov 2022 11:16:37 -0800 (PST)
Received: from mill.lan (75-172-96-142.tukw.qwest.net. [75.172.96.142])
 by smtp.gmail.com with ESMTPSA id
 sj3-20020a17090b2d8300b0020ae09e9724sm4611696pjb.53.2022.11.07.11.16.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Nov 2022 11:16:36 -0800 (PST)
From: Bryan Hundven <bryanhundven@gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
Date: Mon,  7 Nov 2022 11:16:20 -0800
Message-Id: <20221107191620.33621-1-bryanhundven@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: P1/X1 Extreme 4th Gen needs 2nd Controller fan quirk.
 Signed-off-by:
 Bryan Hundven --- drivers/platform/x86/thinkpad_acpi.c | 1 + 1 file changed,
 1 insertion(+) diff --git a/drivers/platform/x86/thinkpad_acpi.c
 b/drivers/platform/x86/thinkpad_acpi.c
 index 20e5c043a8e8..2c8a25950fc9 100644 ---
 a/drivers/platform/x86/thinkpad_acpi.c
 +++ b/drivers/platform/x86/t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bryanhundven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.181 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1os7bv-0006cW-P1
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add fan quirk
 to X1 Extreme 4th Gen
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
Cc: Bryan Hundven <bryanhundven@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

P1/X1 Extreme 4th Gen needs 2nd Controller fan quirk.

Signed-off-by: Bryan Hundven <bryanhundven@gmail.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 20e5c043a8e8..2c8a25950fc9 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -8825,6 +8825,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
 	TPACPI_Q_LNV3('N', '2', 'N', TPACPI_FAN_2CTL),	/* P53 / P73 */
 	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
 	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
+	TPACPI_Q_LNV3('N', '4', '0', TPACPI_FAN_2CTL),  /* P1 / X1 Extreme (4th gen) */
 	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
 	TPACPI_Q_LNV3('N', '3', '7', TPACPI_FAN_2CTL),  /* T15g (2nd gen) */
 	TPACPI_Q_LNV3('N', '1', 'O', TPACPI_FAN_NOFAN),	/* X1 Tablet (2nd gen) */
-- 
2.38.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
