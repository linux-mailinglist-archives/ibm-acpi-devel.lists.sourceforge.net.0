Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CAC22E38D
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 02:51:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzrMH-0008Vl-19; Mon, 27 Jul 2020 00:51:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1jzrMF-0008VW-AI
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 00:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZtQn8yLFnvpuWiPUdYB8nDbJbBW6fIQDoysVL7HWuWk=; b=Y14JWWsIglygcoOk1S7IBsN3WY
 7gGEQPxyDvlJjI5vSdyqElMVeBzJ3aNjyn+Bd22mpbt9NHtfMtkYkygNAofRsSDdHwex3yAv/XzTo
 TwsQRCg9/a6LxUawyDwdXh8YkNHL2kS0L8LnpwJaR8KvhOYHdV7h+SVt4ohMMhDBHbAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZtQn8yLFnvpuWiPUdYB8nDbJbBW6fIQDoysVL7HWuWk=; b=kxzC6KWo4xF6kYNXxVt5OWl7Ox
 wIqBcUktdh90YzHdOzr9zy3Lmkh2CTyh+wlGXsDPrBlyikKemn3vgHrUMyR10T9Qs8IUNv/wbMMlb
 6OH6TbR2BRqNI7sUL8XfhTEgGRsDn4RMn7x8fT2QQEhz52/xvt1+4cObbSf6EtSngwcM=;
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jzrM8-003YIQ-42
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 00:51:11 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailnew.west.internal (Postfix) with ESMTP id B47175A4;
 Sun, 26 Jul 2020 20:50:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Sun, 26 Jul 2020 20:50:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=ZtQn8yLFnvpuWiPUdYB8nDbJbBW
 6fIQDoysVL7HWuWk=; b=QhUErVKMpv+jPIdqIi9/vX5k1/mcrPCw7u8m3H7W5Uk
 mTJHe9PqHtlx4amUHi97vzhdKS0CZVX3jxnp+tyjwn24IvwuPxs78v4y9p0fZS1T
 MBDXJOMGXioKUntI1UtfrAclWszzMqZa6IJUmQMgUbtANjZq1LI7dw+2Mw9B75Ue
 h/8Sai9uR9ibYEVKV6a7ZVUY0X2SUW7WE6OTvRqT0AhXBROySmpNshTSdxZYCrf2
 l+WQ+DrfUZouiNjI+6xgfh3CHTcIoiPKKPtTAaoCtUn8e2OrN2CivO8ty0O3uKYL
 +TOTo7JuOf0ajezvthWKyMTA+Fy3cOFG4DDnZAGB8Ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ZtQn8y
 LFnvpuWiPUdYB8nDbJbBW6fIQDoysVL7HWuWk=; b=U8e0cz/s8FOaKCC/9QxYXm
 5logn0z4mUtRSC6Oax1aysgVyRdQPSSRDvhfdKV4rNqjyn0Clg+GKbVlNjOabx4p
 Mctv399SPloF4L/QG0PqnrwWwN13hQjV/DQdaf1mZoQzgx/F4N/9oMmzwC3QuoRK
 xsAPWN2zhqhJGrjD3O9Sc/YEP1el6h2trdOkctycN1qLI4R5IpRlDPKOZ1A+/plp
 pK66T9PIWEcExViRPvpGb7xrU7yMmSBCkO2kIlfTxj63ADZ9Jn/KWPJcH16/erX+
 LNmwQvg+76TemvtvLcqOyxp+HIE11P5V5EtUv4NpIJvlbWwckLxXUiocBRm44aHA
 ==
X-ME-Sender: <xms:7SQeX1WZuFZXT7JEs7j6vqKoo0UEpE7t9Uq8_n2eRc9hweR9n-ie9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrheekgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttddttddtredvnecuhfhrohhmpefjvghnrhhi
 qhhuvgcuuggvucfoohhrrggvshcujfholhhstghhuhhhuceohhhmhheshhhmhhdrvghngh
 drsghrqeenucggtffrrghtthgvrhhnpeevudetjeegiedufeeugfeiheeljeekfeduhfej
 feegkeehkedvvdehheelgeevieenucfkphepudejjedrudelgedrjedrfedvnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhephhhmhheshhhmhhdr
 vghnghdrsghr
X-ME-Proxy: <xmx:7SQeX1nDrR44ulqPqGEU_8ppahj9l2A55-PBU127zsY0Sk3EC6Wfog>
 <xmx:7SQeXxZ76mhRCULo9phroZa1EGRTxJwGRxbh4HARuVIjDAaNeRe53A>
 <xmx:7SQeX4WYlydY5OgvaCNO4L4ao-lEijIa8aXEklcozxu0tLdQC1BvyA>
 <xmx:8SQeX9XVYvzRlKKlvu_5EhIqaKNeM08xsie9-3t5y-zg7nQzFKcaeZKetMg>
Received: from khazad-dum.debian.net (unknown [177.194.7.32])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6B3E0328005A;
 Sun, 26 Jul 2020 20:50:53 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id D1679340016B;
 Sun, 26 Jul 2020 21:50:51 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id WS3yir_GiUqn; Sun, 26 Jul 2020 21:50:50 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id 0325B3400169; Sun, 26 Jul 2020 21:50:49 -0300 (-03)
Date: Sun, 26 Jul 2020 21:50:49 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200727005049.GA10254@khazad-dum.debian.net>
References: <20200717114155.56222-1-hdegoede@redhat.com>
 <20200719225649.GA4341@khazad-dum.debian.net>
 <20200722054144.GQ1665100@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722054144.GQ1665100@dtor-ws>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jzrM8-003YIQ-42
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
 Benjamin Berg <bberg@redhat.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Christian Kellner <ckellner@redhat.com>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Andy Shevchenko <andy@infradead.org>, linux-input@vger.kernel.org,
 Darren Hart <dvhart@infradead.org>, Mark Pearson <mpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, 21 Jul 2020, Dmitry Torokhov wrote:
> On Sun, Jul 19, 2020 at 07:56:49PM -0300, Henrique de Moraes Holschuh wrote:
> > On Fri, 17 Jul 2020, Hans de Goede wrote:
> > > This is a simple patch-series adding support for 3 new hotkeys found
> > > on various new Lenovo Thinkpad models.
> > 
> > For all three patches, pending an ack for the new keycodes by the input
> > maintainers:
> > 
> > Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
> 
> Do you want me to merge all 3 through input tree?

Hans, Daren, Andy, what do you prefer?

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
