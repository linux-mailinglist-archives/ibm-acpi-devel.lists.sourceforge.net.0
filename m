Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5992254BA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 20 Jul 2020 01:17:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jxIY1-0004FD-2Z; Sun, 19 Jul 2020 23:16:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1jxIY0-0004F5-6J
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 19 Jul 2020 23:16:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IwtTVMIULxX/8K188g/bQylmehWoNdWkoM/BtdvK8s4=; b=db4fh3arp1zG8cOy4jCWsiKj8k
 PhUnYuk5d0ViUhE9gTF6ad0g+wKfB0u1LKHpQyUrUMLLl8wXdFUmq6Zx7RrV9gFf4Oi80jLBZKdfD
 kcvOYePoeEww2fD0Y4UJgDp3y4dw+aTDlixcYAx0KpdZDf3/0nKwt4uW4KfO6gOzCZCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IwtTVMIULxX/8K188g/bQylmehWoNdWkoM/BtdvK8s4=; b=kgWbuhVx2NweAqUmihV+CF2iTH
 iTkmKPrtDHmoCvTug1GaTazzKZnxGrWlL1b7vrByLCVixfjtAL8QdGIvb9t1k/B2B9gvObd8xSWlF
 ulfE+nBWJ5a+4DusoYOPHduiyAX75IoNYXKmrFHKukzYFahWertpxHfHea/oFgU7Gwc0=;
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxIXx-008sB9-Lq
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 19 Jul 2020 23:16:44 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailnew.west.internal (Postfix) with ESMTP id C49B062D;
 Sun, 19 Jul 2020 18:56:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sun, 19 Jul 2020 18:56:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=IwtTVMIULxX/8K188g/bQylmehW
 oNdWkoM/BtdvK8s4=; b=McO54vqPKpp3i4TymYJyPzHE6suA/Ha+Gtm1pcuPyKd
 OmzBb4cSbP2aLZvpWhSAit3VyKsiZk+iYAqV71kN26mOZmJLxIXMRcvX4gT/1l0K
 D78xO72NkOcblsZuCLl3SYNR2Zpncbkp0ZJjxza8yVZCF9uKGgSizqNjKjVqC5lC
 3QpGKistYD4Ws8D9e+tc9XE3vFWpgE9DeXMApyMClpwfQxIsNzM0/M7FBTBd02QW
 1Gda/v+80dlESKRds6msxIlRT3TAfdd7cV2RFoWSl1SfF3868TuuYZHvO7ZofTzt
 u4f/cC/DgEQOM05ucNFNfgnFDarwoAPl96IgakfE3Tw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=IwtTVM
 IULxX/8K188g/bQylmehWoNdWkoM/BtdvK8s4=; b=p9REiXXDrvECxf/4tEloLp
 +yuLotcZLXqfLuaBQhPWvR4UNITcmu5L70JHSvVPZYuRxSClmE4G2JCRoq7nZXvw
 dPREyoLrEabJZFZCkJ3o2chv/aSCm3HtJTKrRy9wVN5Z9dJOnXFRdshMGlwa4gmC
 CIU8PF7BIJckdvBqrbKv4fq6bTSqByPKp0mihB4u7mjntHWb3tolfLaVYg0+xti8
 31qokuKawvnbkvYLJjmgmjPHmKI3Sst9CRTyf9iDtAGmSjuLTaGb3mC9pXQKGaaQ
 GD2oqWeB6pMIbfgBYYf9s+ZpYG9OFRFdSJpliHbrq5NtAtzNpbhEm6CJ9fYRtIJg
 ==
X-ME-Sender: <xms:ts8UX57DyB59CZO1_9wfWwhpU55JAa_RpVhMKctuwGvDdAg__4fmyQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrgedvgddujecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttddttddtredvnecuhfhrohhmpefjvghnrhhi
 qhhuvgcuuggvucfoohhrrggvshcujfholhhstghhuhhhuceohhhmhheshhhmhhdrvghngh
 drsghrqeenucggtffrrghtthgvrhhnpeevudetjeegiedufeeugfeiheeljeekfeduhfej
 feegkeehkedvvdehheelgeevieenucfkphepudejjedrudelgedrjedrfedvnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhephhhmhheshhhmhhdr
 vghnghdrsghr
X-ME-Proxy: <xmx:ts8UX25a2Rxv-l3E6odDrb-GSpKcVCyBDi2uqt2zGT2VW3WWO5fcSg>
 <xmx:ts8UXwetkkhLpObLgZj48LpI3rARhmNQ_4IZXJFFzMl6jRkvKkrKgQ>
 <xmx:ts8UXyJiP4eB8UMlKJ9Le1lcloefVKc4KrMA5UpdwCbHqBypAmkTvA>
 <xmx:t88UXypcJjK3c-SYqoOp-TZJnpATrawdAtCDUHUJ7X3xQmkqxYO57J672lA>
Received: from khazad-dum.debian.net (unknown [177.194.7.32])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6CBD330600A3;
 Sun, 19 Jul 2020 18:56:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id 8C2603400161;
 Sun, 19 Jul 2020 19:56:52 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id HREs72AK_48Y; Sun, 19 Jul 2020 19:56:49 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id D1B3D340015F; Sun, 19 Jul 2020 19:56:49 -0300 (-03)
Date: Sun, 19 Jul 2020 19:56:49 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200719225649.GA4341@khazad-dum.debian.net>
References: <20200717114155.56222-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200717114155.56222-1-hdegoede@redhat.com>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hmh.eng.br]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxIXx-008sB9-Lq
Subject: Re: [ibm-acpi-devel] [PATCH 0/3] Add 3 new keycodes and use them
 for 3 new hotkeys on new Lenovo Thinkpads
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
 Benjamin Berg <bberg@redhat.com>, Christian Kellner <ckellner@redhat.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Mark Pearson <mpearson@lenovo.com>,
 linux-input@vger.kernel.org, Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, 17 Jul 2020, Hans de Goede wrote:
> This is a simple patch-series adding support for 3 new hotkeys found
> on various new Lenovo Thinkpad models.

For all three patches, pending an ack for the new keycodes by the input
maintainers:

Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
