Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 873002818DE
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  2 Oct 2020 19:10:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kOOZA-0006cx-Gb; Fri, 02 Oct 2020 17:09:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <aaron.ma@canonical.com>) id 1kOOZ8-0006co-Pm
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 02 Oct 2020 17:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hTZCuC0HXUl/R903qHdcqv1RxxFItMsxdurWYHL8G2g=; b=QI3HB6e7hd35g8CLYqJLjbqZPo
 mwQi8ek08csPg++WlhGDRXERVBt/1MjfHKc1+rFB6Pe2c9JTs/8fVblS1L0G2jJ+LBmwPj38w1Q35
 sMdxItg218LaJTb+5To5d4CQv8zrBAkd/zo4P6JehooFIQaZwk4RLqN/+hQxJXp59g9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hTZCuC0HXUl/R903qHdcqv1RxxFItMsxdurWYHL8G2g=; b=JYqA7zWVZwruiTXpWrlnf2tWLL
 ompuYmKcReillwi9BWTjdo0mxhSwsVS8T4SmS97IfI4jdoQbgmr9Rkj7kX3+7vv5xIrLV4fsb3F5G
 7YYkt/sY4VbsNj676zIeDQhndYphEYOaag6wi++NpA5RmhhxfkBRV3LZKsJjQFhIBxl0=;
Received: from youngberry.canonical.com ([91.189.89.112])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA:128) (Exim 4.92.2) id 1kOOYz-00EMlU-Q1
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 02 Oct 2020 17:09:54 +0000
Received: from [222.129.36.226] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1kOOYi-00038m-V4; Fri, 02 Oct 2020 17:09:29 +0000
From: Aaron Ma <aaron.ma@canonical.com>
To: aaron.ma@canonical.com, mapengyu@gmail.com, ibm-acpi@hmh.eng.br,
 dvhart@infradead.org, andy@infradead.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Sat,  3 Oct 2020 01:09:16 +0800
Message-Id: <20201002170916.64328-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929082025.51446-1-aaron.ma@canonical.com>
References: <20200929082025.51446-1-aaron.ma@canonical.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kOOYz-00EMlU-Q1
Subject: [ibm-acpi-devel] [PATCH v2] platform/x86: thinkpad_acpi:
 re-initialize ACPI buffer size when reuse
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Evaluating ACPI _BCL could fail, then ACPI buffer size will be set to 0.
When reuse this ACPI buffer, AE_BUFFER_OVERFLOW will be triggered.

Re-initialize buffer size will make ACPI evaluate successfully.

Fixes: 46445b6b896fd ("thinkpad-acpi: fix handle locate for video and query of _BCL")
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 9c4df41687a3..477d63c49c04 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -6829,8 +6829,10 @@ static int __init tpacpi_query_bcl_levels(acpi_handle handle)
 	list_for_each_entry(child, &device->children, node) {
 		acpi_status status = acpi_evaluate_object(child->handle, "_BCL",
 							  NULL, &buffer);
-		if (ACPI_FAILURE(status))
+		if (ACPI_FAILURE(status)) {
+			buffer.length = ACPI_ALLOCATE_BUFFER;
 			continue;
+		}
 
 		obj = (union acpi_object *)buffer.pointer;
 		if (!obj || (obj->type != ACPI_TYPE_PACKAGE)) {
-- 
2.28.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
