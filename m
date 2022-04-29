Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 291AA515688
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 29 Apr 2022 23:15:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nkXwl-0006Nh-8h; Fri, 29 Apr 2022 21:14:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lyude@redhat.com>) id 1nkXwj-0006NZ-Gl
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 29 Apr 2022 21:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OVJgetryfXSVXe5yvSCCfrQu6gny1xdVtA3tH62iDPs=; b=LJgepquvHKTS/0Ktf6k1wQ0EOs
 dcvoFKy+B0O/fbOIqYhDZByLMvMkJ5CsWcjRhkEW5YGrHK7OeutQA36AfR4JCHJb/Al5X8anpzvWM
 QfVrd2FibIrrRK+kh2evePArGJAQXlEsalHpQn4G3faRTUuLcgQLMWxJMeJhPOtX7qO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OVJgetryfXSVXe5yvSCCfrQu6gny1xdVtA3tH62iDPs=; b=OCxGqFdBaMVpFNe60IFs86/06V
 YY56NsDKJ2e1dCic5CGtmkqTvtigqA1yB7HrSF8EJRi0C5XOtP2O1bG72b8m+B5KEvGt+EF2xPV3k
 KznYokqFm0fN4F1h2Zyu2SN6k2uthOw6cBpNhmt8ll4GElxdvJAd0fFau4mHMbke2gTI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkXwg-0007FC-CP
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 29 Apr 2022 21:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651266867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OVJgetryfXSVXe5yvSCCfrQu6gny1xdVtA3tH62iDPs=;
 b=Bl43370UAsYwe83oMk9+gPCrcHeBdlsGb74r2KcBVhZkcMtfCN2lntToSk37kzpZsTaasj
 vkgiygg2XQLw1o6yBLg87SdbH7Ij3JQsj17P4J7jd4x7f6oaWpePZ6PaLFSEGRtUJsf5R4
 BHB9N6Hj7nFGhM5Vg1NQc/wHgnjyBhU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-yE_d1nJVNU2UXq_hLYQ76A-1; Fri, 29 Apr 2022 17:14:23 -0400
X-MC-Unique: yE_d1nJVNU2UXq_hLYQ76A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B4B7101AA42;
 Fri, 29 Apr 2022 21:14:23 +0000 (UTC)
Received: from emerald.lyude.net (unknown [10.22.8.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B19B9111CD36;
 Fri, 29 Apr 2022 21:14:22 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Fri, 29 Apr 2022 17:14:17 -0400
Message-Id: <20220429211418.4546-2-lyude@redhat.com>
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
 Content preview:  The new method of probing dual fan support introduced in:
 bf779aaf56ea ("platform/x86: thinkpad_acpi: Add dual fan probe") While this
 commit says this works on the X1 Carbon 9th Gen, it actually just results
 in hiding the second fan on my local machine. Additionally, I'm fairly sure
 this machine powers on quite often with [...] 
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
X-Headers-End: 1nkXwg-0007FC-CP
Subject: [ibm-acpi-devel] [PATCH 1/2] platform/x86: thinkpad_acpi: Restore
 X1 Carbon 9th Gen dual fan quirk
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

The new method of probing dual fan support introduced in:

bf779aaf56ea ("platform/x86: thinkpad_acpi: Add dual fan probe")

While this commit says this works on the X1 Carbon 9th Gen, it actually
just results in hiding the second fan on my local machine. Additionally,
I'm fairly sure this machine powers on quite often without either of the
two fans spinning.

So let's fix this by adding back the dual fan quirk for the X1 Carbon 9th
Gen.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Fixes: bf779aaf56ea ("platform/x86: thinkpad_acpi: Add dual fan probe")
Cc: Mark Pearson <markpearson@lenovo.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Cc: Mark Gross <markgross@kernel.org>
Cc: ibm-acpi-devel@lists.sourceforge.net
Cc: platform-driver-x86@vger.kernel.org
---
 drivers/platform/x86/thinkpad_acpi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index c568fae56db2..9067fd0a945c 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -8699,6 +8699,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
 	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
 	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
 	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
+	TPACPI_Q_LNV3('N', '3', '2', TPACPI_FAN_2CTL),  /* X1 Carbon (9th gen) */
 	TPACPI_Q_LNV3('N', '3', '7', TPACPI_FAN_2CTL),  /* T15g (2nd gen) */
 	TPACPI_Q_LNV3('N', '1', 'O', TPACPI_FAN_NOFAN),	/* X1 Tablet (2nd gen) */
 };
-- 
2.35.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
