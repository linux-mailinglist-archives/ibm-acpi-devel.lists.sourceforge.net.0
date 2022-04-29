Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E5D51568A
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 29 Apr 2022 23:15:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nkXxI-0000qP-D5; Fri, 29 Apr 2022 21:15:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lyude@redhat.com>) id 1nkXwj-0000pd-FV
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 29 Apr 2022 21:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nyt4ykn1QhR0YTgPdt1Y5HFsS6fBE+SgIfjhrvt9+bs=; b=KyywZbffeSkyY3B28i0z6Z4zPO
 TxFVFeTERH716uQIGzOa7uN5ddBf9YwSVMM7ODUG6YVFWps6bf0Qxnw4VLqqJW0/Zn+1j4Y2hR0C4
 ETVfv1zxO2j6ym9CrgCZm1yfo3Z3EJCezEn+DGGsT31eyexR6PqNrPNZ8zQB6jPlym2Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nyt4ykn1QhR0YTgPdt1Y5HFsS6fBE+SgIfjhrvt9+bs=; b=Z
 jh8cqtnv6ZAszleINIdrWnRSTG+aC7RuFrAqTrZNKRBm7RZ16FLfcyDWSqEqjLnhc61qkAU3SQ/5p
 g18jhAIP0+EV9M1YkCjKb2ed5ca1MBGDsfYUzU3xIfsz/s0TWuNG7lJbuBevtB8ITfQGowpnMVhoa
 RpBcXOMeazWxLuNM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkXwe-00EGQJ-OK
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 29 Apr 2022 21:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651266866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=nyt4ykn1QhR0YTgPdt1Y5HFsS6fBE+SgIfjhrvt9+bs=;
 b=abQCw6TVS+BdpHaHcZiLkqsXYGZ1N9AbZ7bF2+6EDuS3/5UtDwuLvtNzXeWO80JLfh61uu
 E6YcXkm4Sg9j0gjQiAUEIj4mXBZmx/WPL362EfEZdyXorSKiTNYBNmJ5Dn80vS27ZFVJKp
 plQaiOzriEbZPO0iJu3VidiyCddcbQg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-37--AYCXKXxNS-NpUo7Cg87pw-1; Fri, 29 Apr 2022 17:14:23 -0400
X-MC-Unique: -AYCXKXxNS-NpUo7Cg87pw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A7743C0F091;
 Fri, 29 Apr 2022 21:14:22 +0000 (UTC)
Received: from emerald.lyude.net (unknown [10.22.8.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B4573111DCF9;
 Fri, 29 Apr 2022 21:14:20 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Fri, 29 Apr 2022 17:14:16 -0400
Message-Id: <20220429211418.4546-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Some recent changes broke detection of the second fan on the
 X1 Carbon 9th generation, so here's some patches to fix it. Lyude Paul (2):
 platform/x86: thinkpad_acpi: Restore X1 Carbon 9th Gen dual fan quirk
 platform/x86:
 thinkpad_acpi: Don't probe 2nd fan if enabled by quirk 
 Content analysis details:   (-1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nkXwe-00EGQJ-OK
Subject: [ibm-acpi-devel] [PATCH 0/2] Fix detection of 2nd fan on X1C9
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
Cc: linux-hwmon@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 linux-kernel@vger.kernel.org, Mark Pearson <markpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Some recent changes broke detection of the second fan on the X1 Carbon
9th generation, so here's some patches to fix it.

Lyude Paul (2):
  platform/x86: thinkpad_acpi: Restore X1 Carbon 9th Gen dual fan quirk
  platform/x86: thinkpad_acpi: Don't probe 2nd fan if enabled by quirk

 drivers/platform/x86/thinkpad_acpi.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
