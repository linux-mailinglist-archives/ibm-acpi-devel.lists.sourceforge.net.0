Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BAF515689
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 29 Apr 2022 23:15:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nkXx1-0005a4-O4; Fri, 29 Apr 2022 21:14:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lyude@redhat.com>) id 1nkXwl-0005Zo-8a
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 29 Apr 2022 21:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vRdwdJR3OoR56yf6TqIrpiS+NzNySH2VSMNhpjHFJH4=; b=aCksrAW5wOQOQw4Mor1btUfqax
 j8udBrTekEWe9BwqcpytBZ9TaJW1x/2fZXIwg2BHYeEL6GTVuTTVqI7iOTz4T2LPBbflIgYbAKqNG
 98yoYIzYSU+No9Wqj/2k2bUfzGa7n3uLHIxYOSAmm6UaOk8oo42N8fXJiXHu/xqAPuC8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vRdwdJR3OoR56yf6TqIrpiS+NzNySH2VSMNhpjHFJH4=; b=CbhwE0gbOpBGbsnW198Lfp536L
 qeyU5sfiR1iURQE5zBBYKog2PC585PpCcFhXrqxTl+JokRGcq+ggml5Qn7D88r5mTw2bhOHuTydUl
 t3G3q5quN324VHI2bC9IL94mLMohF00T0R3PHDHPxqmPOoXeEzcywTesBEe4YQfrLIVg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkXwf-00EGQL-Rs
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 29 Apr 2022 21:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651266867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vRdwdJR3OoR56yf6TqIrpiS+NzNySH2VSMNhpjHFJH4=;
 b=V477dg+4eMohnMfHr5fOUdO5PDbCkDaxDi/7ev8v6D2cDAqQDkzhO3bQPueVIFqSx9lcac
 QGCdnxyK476ZMbeUvyLp3lmLxM4LPz0fMIhZRgLugUGHAxSAgWesZly6kUFrNqr8dJQr3+
 +Rmd/IRs9vjoYl3mrZhmSoo+ZHmicNs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-562-XVnx60pGMza8UVmti2IyWw-1; Fri, 29 Apr 2022 17:14:24 -0400
X-MC-Unique: XVnx60pGMza8UVmti2IyWw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5C9E811E75;
 Fri, 29 Apr 2022 21:14:23 +0000 (UTC)
Received: from emerald.lyude.net (unknown [10.22.8.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 52771111CD36;
 Fri, 29 Apr 2022 21:14:23 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Fri, 29 Apr 2022 17:14:18 -0400
Message-Id: <20220429211418.4546-3-lyude@redhat.com>
In-Reply-To: <20220429211418.4546-1-lyude@redhat.com>
References: <20220429211418.4546-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If we already know that the system in question has a quirk
 telling us that the system has a second fan, there's no purpose in probing
 the second fan - especially when probing the second fan may not wo [...] 
 Content analysis details:   (-1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nkXwf-00EGQL-Rs
Subject: [ibm-acpi-devel] [PATCH 2/2] platform/x86: thinkpad_acpi: Don't
 probe 2nd fan if enabled by quirk
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
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <markpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

If we already know that the system in question has a quirk telling us that
the system has a second fan, there's no purpose in probing the second fan -
especially when probing the second fan may not work properly with systems
relying on quirks.

Also, convert all of the conditionals here into a single group of if/else
statements. This is because there's no situations where there's more then
one quirk on a device.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Fixes: bf779aaf56ea ("platform/x86: thinkpad_acpi: Add dual fan probe")
Cc: Mark Pearson <markpearson@lenovo.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Cc: Mark Gross <markgross@kernel.org>
Cc: ibm-acpi-devel@lists.sourceforge.net
Cc: platform-driver-x86@vger.kernel.org
---
 drivers/platform/x86/thinkpad_acpi.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 9067fd0a945c..677822b5d4b4 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -8747,26 +8747,25 @@ static int __init fan_init(struct ibm_init_struct *iibm)
 			unsigned int speed;
 
 			fan_status_access_mode = TPACPI_FAN_RD_TPEC;
-			if (quirks & TPACPI_FAN_Q1)
+			if (quirks & TPACPI_FAN_Q1) {
 				fan_quirk1_setup();
-			if (quirks & TPACPI_FAN_2FAN) {
+			} else if (quirks & TPACPI_FAN_2FAN) {
 				tp_features.second_fan = 1;
 				pr_info("secondary fan support enabled\n");
-			}
-			if (quirks & TPACPI_FAN_2CTL) {
+			} else if (quirks & TPACPI_FAN_2CTL) {
 				tp_features.second_fan = 1;
 				tp_features.second_fan_ctl = 1;
 				pr_info("secondary fan control enabled\n");
+			} else {
+				/* Try and probe the 2nd fan */
+				res = fan2_get_speed(&speed);
+				if (res >= 0) {
+					/* It responded - so let's assume it's there */
+					tp_features.second_fan = 1;
+					tp_features.second_fan_ctl = 1;
+					pr_info("secondary fan control detected & enabled\n");
+				}
 			}
-			/* Try and probe the 2nd fan */
-			res = fan2_get_speed(&speed);
-			if (res >= 0) {
-				/* It responded - so let's assume it's there */
-				tp_features.second_fan = 1;
-				tp_features.second_fan_ctl = 1;
-				pr_info("secondary fan control detected & enabled\n");
-			}
-
 		} else {
 			pr_err("ThinkPad ACPI EC access misbehaving, fan status and control unavailable\n");
 			return -ENODEV;
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
