Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BF53D9501
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 28 Jul 2021 20:08:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1m8nyO-00075v-Tl; Wed, 28 Jul 2021 18:08:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1m8nyO-00075l-0j
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 28 Jul 2021 18:08:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0AVdR5f9fdBxwFnH1F67ptdM3miCCcQl9UjY1zbZCJY=; b=ROdQz1sI7y44X0ucNLFbMv+nJ/
 h3WGzH7zYDHHmcrJhEEJq3PWhXYQayixWiTDqCC7HMBZwkin/qh14IGVKzFYhHjHFHs2O91r4W1NU
 9bv2hwwVUS8Ts6+leOR/ILWKYSy3aig+ddqlbPNTsVRQH9UI8QHGmHTbroU1Lvm7W8CI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0AVdR5f9fdBxwFnH1F67ptdM3miCCcQl9UjY1zbZCJY=; b=U
 6gwY+XhhsGR9WdGFN3ullrqe8JjVXIlACyFrNY83As/I24owFHw8jAWgzcjUmTfyQxZLKaWYYhE0C
 HwpJ8kuims6W4AhyTAVz5KK8xKNA9RgVseXLPlEVethijjS36LtiDijnoiQex9SWvCGzzOdmI0tKo
 uniQdbe6XmnYYuIk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8nyM-0000EC-5g
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 28 Jul 2021 18:08:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627495675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=0AVdR5f9fdBxwFnH1F67ptdM3miCCcQl9UjY1zbZCJY=;
 b=HPav8O5/b11617GsHJpB69A1fYU+gkqCGYX7HX0kKRzZnRroJOVg1HWwTh/Evs+aKBsagI
 vnFNOSPo1i6WjOblSnvIKY7kvOnw+5g1DlwItATGA4yYUNlPLiGnUV1O0ZJ+/VKssi9Dwj
 yTKw0L1B9uprJlCrfRUYBzzMA9lyxHk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-W8R7mvATPqmNr8JAB6IcAw-1; Wed, 28 Jul 2021 14:07:52 -0400
X-MC-Unique: W8R7mvATPqmNr8JAB6IcAw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0DA4F107ACF5;
 Wed, 28 Jul 2021 18:07:51 +0000 (UTC)
Received: from x1.localdomain (unknown [10.39.192.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 78DED19C66;
 Wed, 28 Jul 2021 18:07:49 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Mark Gross <mgross@linux.intel.com>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <markpearson@lenovo.com>
Date: Wed, 28 Jul 2021 20:07:47 +0200
Message-Id: <20210728180748.190258-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m8nyM-0000EC-5g
Subject: [ibm-acpi-devel] [RFC 0/1] platform/x86: Add and use a
 dual_accel_detect() helper
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
 linux-acpi@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi All,

I've marked this as a RFC because I'm waiting for feedback from the
bug-reporter to check if this actually fixes his issue. But I fully
expect it will (I already tested this on some of my own hw).

IOW I don't expect this patch to change before I will merge it,
so please review.

Here is more info from the commit msg:

"""
Various 360 degree hinges (yoga) style 2-in-1 devices use 2 accelerometers
to allow the OS to determine the angle between the display and the base of
the device.

On Windows these are read by a special HingeAngleService process which
calls undocumented ACPI methods, to let the firmware know if the 2-in-1 is
in tablet- or laptop-mode. The firmware may use this to disable the kbd and
touchpad to avoid spurious input in tablet-mode as well as to report
SW_TABLET_MODE info to the OS.

Since Linux does not call these undocumented methods, the SW_TABLET_MODE
info reported by various pdx86 drivers is incorrect on these devices.

Before this commit the intel-hid and thinkpad_acpi code already had 2
hardcoded checks for ACPI hardware-ids of dual-accel sensors to avoid
reporting broken info.

And now we also have a bug-report about the same problem in the intel-vbtn
code. Since there are at least 3 different ACPI hardware-ids in play, add
a new dual_accel_detect() helper which checks for all 3, rather then
adding different hardware-ids to the drivers as bug-reports trickle in.
"""

Regards,

Hans


Hans de Goede (1):
  platform/x86: Add and use a dual_accel_detect() helper

 drivers/platform/x86/Kconfig             |  3 +
 drivers/platform/x86/dual_accel_detect.h | 75 ++++++++++++++++++++++++
 drivers/platform/x86/intel-hid.c         | 21 ++-----
 drivers/platform/x86/intel-vbtn.c        | 18 +++++-
 drivers/platform/x86/thinkpad_acpi.c     |  3 +-
 5 files changed, 101 insertions(+), 19 deletions(-)
 create mode 100644 drivers/platform/x86/dual_accel_detect.h

-- 
2.31.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
