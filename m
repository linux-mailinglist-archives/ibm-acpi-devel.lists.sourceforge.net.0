Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD8F261228
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  8 Sep 2020 15:52:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kFe2f-0008JC-AC; Tue, 08 Sep 2020 13:52:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kFe2d-0008Iy-Lu
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 08 Sep 2020 13:52:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1rC655iJP/0msIRrgIzespKhWDIIyrJTtWvObqbgi+Q=; b=NHLOEFaWJlsvjRT3yN6aMlXgWF
 k0CV4pZ0Mf4yTFe0uyGpYYOcyodlg91zX1C5+Afo1YhixrY4TZNwh+ohPQPgUANTk42qt72WNFYCO
 KBI9Ix2e81BwdJfVJ52l03nG9dVT/rm1SXuVfFf2J5HL7DcHnGVac3hpw4Xghw5LlVAE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1rC655iJP/0msIRrgIzespKhWDIIyrJTtWvObqbgi+Q=; b=j+qdfCj+AF0D4Xk4TG4ta32Gi8
 XIETM/srZGGeM235eShf4iNT52HQ3jvaHUhDGqdMwOnsglgzPxbyRWcxX7TC4CJUHTwHwB+aznG0U
 opwbHsNyo6GjG2UbM5uhXm620G0sxGlspEE2r6gXJEI7X6IwJBvpp365QuHFlVGZa/Dc=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kFe2Z-00H0Xb-BI
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 08 Sep 2020 13:52:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599573120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1rC655iJP/0msIRrgIzespKhWDIIyrJTtWvObqbgi+Q=;
 b=FgZBUn/8oDbkGoWS/K3GLmzNeSJN4biSOBGYPMV5Q+Fy5b/k5AXpm0T3ZhCgFz78zUHIuZ
 SVJfOn05Z2/jVeCuHKsctQE6s1E7WabZa9jWZdQIFMOSARg+IjSUlS5/G118qkWL1D0wcr
 OlEJwYnbyM+ioyAByVusEx9lR3+Ltnc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-xDM-QLQzO7e3X-q4nx8w9g-1; Tue, 08 Sep 2020 09:51:58 -0400
X-MC-Unique: xDM-QLQzO7e3X-q4nx8w9g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2CA601007474;
 Tue,  8 Sep 2020 13:51:57 +0000 (UTC)
Received: from x1.localdomain (ovpn-114-188.ams2.redhat.com [10.36.114.188])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C665B27CC5;
 Tue,  8 Sep 2020 13:51:54 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Tue,  8 Sep 2020 15:51:45 +0200
Message-Id: <20200908135147.4044-3-hdegoede@redhat.com>
In-Reply-To: <20200908135147.4044-1-hdegoede@redhat.com>
References: <20200908135147.4044-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kFe2Z-00H0Xb-BI
Subject: [ibm-acpi-devel] [PATCH v2 2/4] Input: allocate keycode for Fn +
 right shift
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
 ibm-acpi-devel@lists.sourceforge.net, Mark Pearson <mpearson@lenovo.com>,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

The last 2 generations of Lenovo Thinkpads send an acpi_thinkpad event when
Fn + right shift is pressed.  This is intended for use with "Lenovo Quick
Clean" software, which disables the touchpad + kbd for 2 minutes on this
key-combo so that healthcare workes can disinfect it.

But there is no silkscreen print on the right-keyboard to indicate this,
so add a KEY_FN_RIGHT_SHIFT keycode define to use for this key-combo.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
Changes in v2:
- New patch in v2 of this patch-set
---
 include/uapi/linux/input-event-codes.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/linux/input-event-codes.h b/include/uapi/linux/input-event-codes.h
index b74821d09145..ee93428ced9a 100644
--- a/include/uapi/linux/input-event-codes.h
+++ b/include/uapi/linux/input-event-codes.h
@@ -545,6 +545,7 @@
 #define KEY_FN_F		0x1e2
 #define KEY_FN_S		0x1e3
 #define KEY_FN_B		0x1e4
+#define KEY_FN_RIGHT_SHIFT	0x1e5
 
 #define KEY_BRL_DOT1		0x1f1
 #define KEY_BRL_DOT2		0x1f2
-- 
2.28.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
