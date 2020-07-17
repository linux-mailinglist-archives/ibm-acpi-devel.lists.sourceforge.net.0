Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC01223AB7
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Jul 2020 13:42:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jwOkz-0006pE-W5; Fri, 17 Jul 2020 11:42:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jwOkx-0006ot-Dc
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 11:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6VHlyn1KenVDEYKIzV8zC+5Gv4fsMDeZkh4zk/VQPYw=; b=UCUUEBBpaHDaxzpCNncCtIeS+O
 8oP4BiK71+fcsfhPoM37GRkGPUURsly6rIX905jrtbjIp7f6jJZ2F9Zf0vsmDzY7kIJSrjZVtj8gA
 PESdwXe+fuHWDwtkRpO/TIUyp9e6Yxm9+onecevoTVUhrYApUwHYtVVprwkyC1ABPKvM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6VHlyn1KenVDEYKIzV8zC+5Gv4fsMDeZkh4zk/VQPYw=; b=Wl0yys+mgmTEw0S4113emvvxBd
 Hn2N+7tXkEvThUYZtDEa+Ymb64j3itcUb0gGCJiTi11EBzaDwQCSKVBmFXATXxxkmDqHV7cjlU67T
 LH+mEExPiYZadJ6nxAiC49UdZrGHFMaGagfTxHRLT+gomWY6Hpx5+k9Ur6Y+r6p/GjV8=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jwOkv-00C1YR-Tz
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 11:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594986128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6VHlyn1KenVDEYKIzV8zC+5Gv4fsMDeZkh4zk/VQPYw=;
 b=ACJdrBt4j7Ejkh6TA3EiPbUmjGBcoymu3Sq+QMqMeg8gl027rW8aCi1xGqrbMUi1MNLWyR
 d13kQ1xM4cMx3c4M3MKyyPxVu44IGKSrbl7P73i6rE14KxUAcTMTqUQFWIqlaRWDFBPgzK
 jKfD6qfUm3WL+t+KmhnKaTMnT9dxkhk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-363-2U3geSUNNIWgCjq6qweQZg-1; Fri, 17 Jul 2020 07:42:04 -0400
X-MC-Unique: 2U3geSUNNIWgCjq6qweQZg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 35123106B243;
 Fri, 17 Jul 2020 11:42:03 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-162.ams2.redhat.com
 [10.36.112.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C284E5D9E7;
 Fri, 17 Jul 2020 11:42:00 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Fri, 17 Jul 2020 13:41:53 +0200
Message-Id: <20200717114155.56222-2-hdegoede@redhat.com>
In-Reply-To: <20200717114155.56222-1-hdegoede@redhat.com>
References: <20200717114155.56222-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwOkv-00C1YR-Tz
Subject: [ibm-acpi-devel] [PATCH 1/3] Input: allocate keycodes for
 notification-center, pickup-phone and hangup-phone
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

New Lenovo Thinkpad models, e.g. the X1 Carbon 8th gen and the new T14 gen1
models have 3 new symbols / shortcuts on their F9-F11 keys (and the
thinkpad_acpi driver receives 3 new "scancodes" for these):

F9:  Has a symbol resembling a rectangular speech baloon, the manual says
     the hotkey functions shows or hides the notification center
F10: Has a symbol of a telephone horn which has been picked up from the
     receiver, the manual says: "Answer incoming calls"
F11: Has a symbol of a telephone horn which is resting on the receiver,
     the manual says: "Decline incoming calls"

We have no existing keycodes which are a good match for these, so
add 3 new keycodes for these.

I noticed that we have a hole in our keycodes between 0x1ba and 0x1c0
which does not seem to be reserved for any specific purpose, so these
new 3 codes use 0x1bc - 0x1be, instead of starting at 0x27b.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 include/uapi/linux/input-event-codes.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/uapi/linux/input-event-codes.h b/include/uapi/linux/input-event-codes.h
index b6a835d37826..8d605a6df502 100644
--- a/include/uapi/linux/input-event-codes.h
+++ b/include/uapi/linux/input-event-codes.h
@@ -515,6 +515,9 @@
 #define KEY_10CHANNELSUP	0x1b8	/* 10 channels up (10+) */
 #define KEY_10CHANNELSDOWN	0x1b9	/* 10 channels down (10-) */
 #define KEY_IMAGES		0x1ba	/* AL Image Browser */
+#define KEY_NOTIFICATION_CENTER	0x1bc	/* Show/hide the notification center */
+#define KEY_PICKUP_PHONE	0x1bd	/* Answer incoming call */
+#define KEY_HANGUP_PHONE	0x1be	/* Decline incoming call */
 
 #define KEY_DEL_EOL		0x1c0
 #define KEY_DEL_EOS		0x1c1
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
