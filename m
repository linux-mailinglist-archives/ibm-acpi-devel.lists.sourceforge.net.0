Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2272AB51F
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  9 Nov 2020 11:36:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kc4X0-00029y-Kc; Mon, 09 Nov 2020 10:36:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kc4Wy-00029K-H7
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 09 Nov 2020 10:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mQ8rKr0Rvfx6JuyDLIVbfpiCXHsnp9cZwJC/Y27bV+E=; b=VC1HZGOv6ZgtH1KlrBhPMxnV+V
 8qSeOWA8kBsqfL20+LXtXRsrnhRiq4MAVZ76ABiPwIgDmWaBG/TBlEv1a62kBq3z9KJbebBYL/I6W
 99U3SIIyCvEHfg2eutfnCI0LYDlIZde53XXsfEt4NhL3uvk6rzes9UnWqxWlJFo56bPA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mQ8rKr0Rvfx6JuyDLIVbfpiCXHsnp9cZwJC/Y27bV+E=; b=m
 ZzTQPMxcwQtz189wJP5R492zMMpkrn8rx3lL1BRmhv499FWP1Wx4heBz8TLXSuAwjCBPwhcbKE25z
 FEG2/XBsU/CQR7dURONznfofGABEDmA86gtg3Y8t4ZpjEGP8o26FhTbozsSvG+Xh8f/kz2Y1AueAA
 E7fzQW1xsK7VX5L8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kc4Wp-005YNI-5c
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 09 Nov 2020 10:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604918156;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=mQ8rKr0Rvfx6JuyDLIVbfpiCXHsnp9cZwJC/Y27bV+E=;
 b=B31l5SjrDPKcNyWy5vQAkCFB6xgJdeG0Atv5ainH9b+PIrGAwjoQcvKgcp+32of4Bo+5x5
 Z5vp22A6iF79Dym7K2CsEaWmWcDmnXM+1OrcnmmFFpGSYnUUctA23iXbmdfeoyTidpJBUt
 zWu5CrhMVfCbwrPJr9iRHA7fO2msE4o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-g8lsDroTOIGE2R_xBSp_eQ-1; Mon, 09 Nov 2020 05:35:54 -0500
X-MC-Unique: g8lsDroTOIGE2R_xBSp_eQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 20747802B73;
 Mon,  9 Nov 2020 10:35:53 +0000 (UTC)
Received: from x1.localdomain (ovpn-114-3.ams2.redhat.com [10.36.114.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9C7F95D9DD;
 Mon,  9 Nov 2020 10:35:51 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Mark Gross <mgross@linux.intel.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Mon,  9 Nov 2020 11:35:50 +0100
Message-Id: <20201109103550.16265-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kc4Wp-005YNI-5c
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add BAT1 is
 primary battery quirk for Thinkpad Yoga 11e 4th gen
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
Cc: Hans de Goede <hdegoede@redhat.com>, platform-driver-x86@vger.kernel.org,
 Andy Shevchenko <andy@infradead.org>, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

The Thinkpad Yoga 11e 4th gen with the N3450 / Celeron CPU only has
one battery which is named BAT1 instead of the expected BAT0, add a
quirk for this. This fixes not being able to set the charging tresholds
on this model; and this alsoe fixes the following errors in dmesg:

ACPI: \_SB_.PCI0.LPCB.EC__.HKEY: BCTG evaluated but flagged as error
thinkpad_acpi: Error probing battery 2
battery: extension failed to load: ThinkPad Battery Extension
battery: extension unregistered: ThinkPad Battery Extension

Note that the added quirk is for the "R0K" BIOS versions which are
used on the Thinkpad Yoga 11e 4th gen's with a Celeron CPU, there
is a separate "R0L" BIOS for the i3/i5 based versions. This may also
need the same quirk, but if that really is necessary is unknown.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 08d5bb3104f9..cabf450fd7d3 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -9726,6 +9726,7 @@ static const struct tpacpi_quirk battery_quirk_table[] __initconst = {
 	TPACPI_Q_LNV3('R', '0', 'B', true), /* Thinkpad 11e gen 3 */
 	TPACPI_Q_LNV3('R', '0', 'C', true), /* Thinkpad 13 */
 	TPACPI_Q_LNV3('R', '0', 'J', true), /* Thinkpad 13 gen 2 */
+	TPACPI_Q_LNV3('R', '0', 'K', true), /* Thinkpad 11e gen 4 celeron BIOS */
 };
 
 static int __init tpacpi_battery_init(struct ibm_init_struct *ibm)
-- 
2.28.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
