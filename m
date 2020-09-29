Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2371927BFA8
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 29 Sep 2020 10:37:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kNB7U-0008O7-Vf; Tue, 29 Sep 2020 08:36:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <aaron.ma@canonical.com>) id 1kNB7R-0008Ny-ES
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 29 Sep 2020 08:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7GlnEuaIn9naWgleQBNJRv3mDoR9KpM13B4no5V1CTg=; b=JBtB0qmxo7ZNKJI5tvROQ/mZHQ
 c9QgVPqNqYCTFJNnAfiqfDL0B02mgSc+wNQbSO7l5TFmhtDFSAJwhnbkJs8iFaO+htonBvJg7nR2V
 545s7AVwix097lqmFtT6tYXGVC0Gyko9lp6l72kWY4meEafeH/h+Frk//bELHh5rY1EQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7GlnEuaIn9naWgleQBNJRv3mDoR9KpM13B4no5V1CTg=; b=D
 1j2Jhg2I+obsI/2ABd9ew3UAKjJeN1Dre30ckZ2U+f2HZPpmpNyd6ZLn9hphNMVvlB9ztyDNSRkFi
 Q7pte4svRjhi5BY+QngLw4NhpQki9NxvgGPNoM35YLYQHpkLl0E+PJn07l/vo/OhjuCkihAGIVGF1
 UFgVOUqZLDNnI3JM=;
Received: from youngberry.canonical.com ([91.189.89.112])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA:128) (Exim 4.92.2) id 1kNB7N-009pZo-35
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 29 Sep 2020 08:36:17 +0000
Received: from [222.129.32.87] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1kNAsH-00080V-GV; Tue, 29 Sep 2020 08:20:38 +0000
From: Aaron Ma <aaron.ma@canonical.com>
To: aaron.ma@canonical.com, mapengyu@gmail.com, ibm-acpi@hmh.eng.br,
 dvhart@infradead.org, andy@infradead.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 29 Sep 2020 16:20:25 +0800
Message-Id: <20200929082025.51446-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kNB7N-009pZo-35
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: re-initialize
 acpi buffer size when reuse
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

Evaluating acpi _BCL could be failed, then acpi buffer size will be set
to 0. When reuse this acpi buffer, AE_BUFFER_OVERFLOW will be triggered.

Re-initialize buffer size will make acpi evaluate successfully.

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
