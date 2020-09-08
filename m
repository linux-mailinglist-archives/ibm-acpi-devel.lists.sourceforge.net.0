Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA53726122C
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  8 Sep 2020 15:52:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kFe32-0002et-2r; Tue, 08 Sep 2020 13:52:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kFe2y-0002eC-Md
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 08 Sep 2020 13:52:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=stommPcGntVxv45E3mEbKDsC4N/Rcgt4n/IKo8h4j7E=; b=I5MDH+YZlO/lge7pCye1qI0oWd
 NBSbQeySnUz68b0nVLPhL2XQ9nt9Y61sUSbbxUL29EZj3V2K1a93UZYziBUJjDZ3RfOGz7W7uvin1
 58IY6VVaejzlH2F1t0w3FeKDxZSnT5cpvBvOT3dsFDFuvA5MueK4W8u1l4Ld2gG5+U5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=stommPcGntVxv45E3mEbKDsC4N/Rcgt4n/IKo8h4j7E=; b=e
 W+lrYkuXjcDlfz7GeXpwOngJ2QSO0jFuiXrdR/FkAc2bqT0qzd1liUNW1cUQvJuWm1uUzOX0fvU+x
 cQlvy2eqpYAeMfoNyTcyf3KnGxl1l7pxsCHaFLeerSP4uUyWl/ch2/NlNSMb6gn8bOhigBUGs1oCg
 Ia86CPGyVsanP3sY=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kFe2s-00GrK5-6N
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 08 Sep 2020 13:52:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599573140;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=stommPcGntVxv45E3mEbKDsC4N/Rcgt4n/IKo8h4j7E=;
 b=KUBlMCGF4ttiWmqFOnz4cHKAeQvYU+X8F9132vNnOIIfwR20TPrTplpCh0fkmaTh7lX32L
 JrwTKGFcTSXgaxVvuGBNExtIUlTo1HHURbZsJd167+dz/rAE13Er0boQ3CFOSry/BwynA/
 K0HPpDAC/cLLGVG3hcuMetkBJnfv4Lo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-hMeKEd9aNr6YJPhkobpLEQ-1; Tue, 08 Sep 2020 09:51:53 -0400
X-MC-Unique: hMeKEd9aNr6YJPhkobpLEQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A37B418B9F0A;
 Tue,  8 Sep 2020 13:51:51 +0000 (UTC)
Received: from x1.localdomain (ovpn-114-188.ams2.redhat.com [10.36.114.188])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C436B27CC7;
 Tue,  8 Sep 2020 13:51:48 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Tue,  8 Sep 2020 15:51:43 +0200
Message-Id: <20200908135147.4044-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kFe2s-00GrK5-6N
Subject: [ibm-acpi-devel] [PATCH v2 0/4] Add 4 new keycodes and use them for
 4 new hotkeys on new Lenovo Thinkpads
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, linux-input@vger.kernel.org,
 Mark Pearson <mpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi All,

Here is a v2 of my series to get a couple of new hotkeys, and matching
thinkpad_acpi hkey event codes seen on the last 2 generations of
Thinkpads supported.

New in this version that Lenovo got back to me and explained that the 0x1316
hkey event belongs to Fn + right Shift, so that is mapped now too.

Since these make both include/uapi/linux/input-event-codes.h and
drivers/platform/x86 changes one open question with this series is how to
merge it.

Dmitry, for v1 of this series you suggested you could merge them all
through the input tree ? Andy, one of the drivers/platform/x86 maintainers
gave his Acked-by for this:

Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

Alternatively the entire series could be merged through the
linux-platform-drivers-x86 repo:

https://git.infradead.org/users/dvhart/linux-platform-drivers-x86.git/shortlog/refs/heads/review-andy

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
