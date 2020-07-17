Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB51223AB5
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Jul 2020 13:42:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jwOkn-0004a0-QM; Fri, 17 Jul 2020 11:42:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jwOkm-0004Zo-27
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 11:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DRiVIwwbVSKtgxI8TX4xFnXUWovJnEvT90U/53wTUHc=; b=gI3ivtExa5ZReqW22vMpU2qdDr
 unGEPmcRklpLXsuUL4KyQUb8/gXgo3Vo4XlQTOz9BQiJQ9zhHk7meKWmWr1/t5JkA6rdx/SvhenUo
 WcVv7rqnt4IL/8gV7zCTEstsZfjRTb0MMv2n5TYs2P0fI3kCR4OJyp5iVT34yPLbWSI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DRiVIwwbVSKtgxI8TX4xFnXUWovJnEvT90U/53wTUHc=; b=k
 df33udefUKpBxg5CFw1iMuyKUL+bquzpBL3Zjfq+o8d+mpf6b8RkpV33jereSR61dy+6XUugD7YeB
 yIovrlOJJM/5kWIArlZ/j1F7GF6KUNNbZqlb5Sf82UtlPl3WZ5Xugy7xLUDDdIJRaz2hsj7Rp6ajb
 /x8TkDaUoObbBglM=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jwOkk-007LYL-KI
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 11:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594986124;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=DRiVIwwbVSKtgxI8TX4xFnXUWovJnEvT90U/53wTUHc=;
 b=iAdQEs4GP93pZxd9SbAwhVp37VisGCH2ai9rp0yPY1GhbKWE/J9Od49taRJlRSxkkAFM8j
 pomXXTLiDfcZp3+wL7/SmDY7HnLzuVrBHwebXFYbtvIyvZFxpm5PtLzeSX4Tsdv4MgUZ44
 gWGqxtsgr7vmzFQ5Vp/JX965r1YcS+A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-sTpDt9yjO8OE8l5xBV1NxQ-1; Fri, 17 Jul 2020 07:42:02 -0400
X-MC-Unique: sTpDt9yjO8OE8l5xBV1NxQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7DC5580183C;
 Fri, 17 Jul 2020 11:42:00 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-162.ams2.redhat.com
 [10.36.112.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EA6947950A;
 Fri, 17 Jul 2020 11:41:57 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Fri, 17 Jul 2020 13:41:52 +0200
Message-Id: <20200717114155.56222-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwOkk-007LYL-KI
Subject: [ibm-acpi-devel] [PATCH 0/3] Add 3 new keycodes and use them for 3
 new hotkeys on new Lenovo Thinkpads
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
Cc: Marco Trevisan <marco.trevisan@canonical.com>,
 Benjamin Berg <bberg@redhat.com>, ibm-acpi-devel@lists.sourceforge.net,
 Christian Kellner <ckellner@redhat.com>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 linux-input@vger.kernel.org, Mark Pearson <mpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi All,

This is a simple patch-series adding support for 3 new hotkeys found
on various new Lenovo Thinkpad models.

There is one small complication, these 3 new hotkeys also require
the addition of new key-codes to include/uapi/linux/input-event-codes.h.

And those changes have to land first. It is probably easiest to just
merge everything through the platform/x86 tree, or alternatively we
would need an immutable branch from the input-subsys with the first
patch on there which the platform/x86 maintainers can then merge.

Dmitry, can you please let us know how you want to proceed with these
changes; And if you are ok with merging the input-event-codes.h changes
through the platform/x86 tree, may we have your Acked-by for that ?

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
