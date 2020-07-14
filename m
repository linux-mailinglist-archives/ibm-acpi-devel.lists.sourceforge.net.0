Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5358E21EB1D
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 Jul 2020 10:16:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jvG6Z-0004rf-GR; Tue, 14 Jul 2020 08:15:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jvG6X-0004rI-Oy
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 08:15:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f8+KnFgAxKm6sgEPySfwahianaqUhM5wZ//swhq+ahg=; b=C/Z/md/NY0pALbi0MoGp8fAoQs
 rbDeYZU39lWXk21G30ACB0fZMcM63jleHJSCFbOS1ZP6LupgE/Uk5vwMko3uDpzs8HpfRyLYqSFzT
 UWPQpU9zz5R7kNj1N5DjXvSCKA88H1er0taQtkd4u0jUYPbX7bQhegmf1ZaXp2vA3/fU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f8+KnFgAxKm6sgEPySfwahianaqUhM5wZ//swhq+ahg=; b=C
 RO8EyygBZxKD08N3/kQ+pZaiFChi4reMmnBVSVrlTBC5RVMA0iGdyTwGeCt4kGVkdnDvSM344AGYM
 jzXcHXgol4f7kEkguQLb4KA8IDoxcEUSv0wgZak/pXwEzB35hOU7cIGgfHj7w/LkHwvaahxTrCAJ+
 m7xIrBUz+uyOCWEQ=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jvG6J-00H8cS-LE
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 08:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594714534;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=f8+KnFgAxKm6sgEPySfwahianaqUhM5wZ//swhq+ahg=;
 b=Rp+JngwKB3WhWxOJ5AqHGIDL7G5kGgvQgV8nOm0Uv4qMBgH2ZAdTMnaAZoqcLWMmWU6tK8
 qZ4TDk1giRMogvTLNDUwREF8OHuVS12oz+9Wfn3xXtRlZxUb20sbtUE7I0Wb3++4xTp740
 DSDG6MBOYWVnydBFv3dQFyS80pdivDo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-mhrCMM7eMZ2cOLwZQQt1HQ-1; Tue, 14 Jul 2020 04:15:32 -0400
X-MC-Unique: mhrCMM7eMZ2cOLwZQQt1HQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 545B91800D42;
 Tue, 14 Jul 2020 08:15:30 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-114-109.ams2.redhat.com
 [10.36.114.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B7C5760CD0;
 Tue, 14 Jul 2020 08:15:28 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Tue, 14 Jul 2020 10:15:10 +0200
Message-Id: <20200714081510.6070-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvG6J-00H8cS-LE
Subject: [ibm-acpi-devel] [PATCH 5.8 regression fix] platform/x86:
 thinkpad_acpi: Revert: Use strndup_user() in dispatch_proc_write()
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
 linux-kernel@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Commit 35d13c7a0512 ("platform/x86: thinkpad_acpi: Use strndup_user()
in dispatch_proc_write()") cleaned up dispatch_proc_write() by replacing
the code to copy the passed in data from userspae with strndup_user().

But strndup_user() expects a 0 terminated input buffer and the buffer
passed to dispatch_proc_write() is NOT 0 terminated.

So this change leads to strndup_user() copying some extra random bytes
from userspace till it hits a 0 byte.

This commit reverts the change to use strndup_user() fixing the
buffer being passed to the ibm_struct.write() call back containing extra
junk at the end.

Fixes: 35d13c7a0512 ("platform/x86: thinkpad_acpi: Use strndup_user() in dispatch_proc_write()")
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 92aad746d1f8..8ae2be5871f5 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -886,11 +886,19 @@ static ssize_t dispatch_proc_write(struct file *file,
 
 	if (!ibm || !ibm->write)
 		return -EINVAL;
+	if (count > PAGE_SIZE - 1)
+		return -EINVAL;
+
+	kernbuf = kmalloc(count + 1, GFP_KERNEL);
+	if (!kernbuf)
+		return -ENOMEM;
 
-	kernbuf = strndup_user(userbuf, PAGE_SIZE);
-	if (IS_ERR(kernbuf))
-		return PTR_ERR(kernbuf);
+	if (copy_from_user(kernbuf, userbuf, count)) {
+		kfree(kernbuf);
+		return -EFAULT;
+	}
 
+	kernbuf[count] = 0;
 	ret = ibm->write(kernbuf);
 	if (ret == 0)
 		ret = count;
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
