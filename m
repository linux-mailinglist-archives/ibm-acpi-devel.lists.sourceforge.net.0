Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDCE235431
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  1 Aug 2020 21:44:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k1xQS-0003u1-F0; Sat, 01 Aug 2020 19:44:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1k1xQQ-0003tn-Vc
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 01 Aug 2020 19:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tHKDE1Y2PpmdsfuJ9iiPoAeslycvidfTfqXrtYPUbi4=; b=DEuoA4wRX1D4K/RRoy7Nv8vSmC
 XbSrbNRy/jknqtPqeq5DBi36y5CCTtdnKhbo46s5FrWPZQUcsHAVFXnhNHCrVGKzy734NIJWN4jte
 s/QLuh7sYTfSPggIGKWz1MiMNe6GXI5hM6TJcuGyzTZX2vFnur0C9NXzBlm3tkP9JTCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tHKDE1Y2PpmdsfuJ9iiPoAeslycvidfTfqXrtYPUbi4=; b=Y5WgW82huJLnUUTxWs21sGKP5H
 tRW2F2pOmwnmRmSJgTGEuR6Ghev+N490+JEvb2MQey0WphkTsWyizASZadN9a3wamDJ7BmmnmnoDz
 QuZWDNbFK/GEZRMVeA3EVwTJYNClYK5xQGqQKDA5TV1Q+g0O8oDMydRIMEZgA26ryOgY=;
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k1xQL-00HCNT-T6
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 01 Aug 2020 19:44:10 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailnew.west.internal (Postfix) with ESMTP id E6134C18;
 Sat,  1 Aug 2020 15:43:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sat, 01 Aug 2020 15:43:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=tHKDE1Y2PpmdsfuJ9iiPoAeslyc
 vidfTfqXrtYPUbi4=; b=23iR1+LCg/+h2u7RUcKVZESBr5CcbHFfESfRkc5HKgG
 5vUZhC8lAaI8oYJFHakuCTYKKua7+b867naBlyb/kQ4WJqyH5hzTJA9B/yy50wfy
 ctblZN055PEJIhxLB4WOcDeiGzBFGVOqaYcavAUFYcvuYmXiB3ELaqO22FnKqWk2
 RVU31oUUzKvbeQz+ddf442I89/mlO2XkPZ/ZCL8gV00as3pyJBrUOWW9Nxwy0qF8
 XFD1DwMPQ/VVnmMQgpZhDNmbT9vJQIl1Nh+tqW/jaHKxvnhyHY5SfNh8iy4Rdcan
 fKgiU71kDl4hNUfgqPTQLjTfKQ1hS9qNkMfod9R16mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=tHKDE1
 Y2PpmdsfuJ9iiPoAeslycvidfTfqXrtYPUbi4=; b=S5bQhytbObH6T8occOCzn8
 ps99E6RyKeeNOzYmINIPb2fhsvg8bTrQunI2a2KQqunPM4hhg/knpWfE2/ERsoyh
 6U+gtpC1txgxU6gFQCr1r1TH5QJxx0BirCEaO4h8nby3vhujPolhGlJNAuZW2qm7
 3XkNm3XNvPgQJPNvcTzwiDn4VToC/xk00AE9eFOWyUX84iHRYI85oMFQHm+vouzO
 OBbZsYGK3A3TWP8CIE0X9Kq93g7W5woJvCN56Rysj3BfB7ifq4ojcrqdNJeFpcqH
 FD9COw8QzMdcixxl0jnhBeq/L9T2xxfNbqV3/EJfZNckAXzHmZ+YOiqAS/G6PbFA
 ==
X-ME-Sender: <xms:8sUlXyqoBxDm-ibvZPN6YxIZcE6IcpM0gmadJqEr2lyerCOTFERqVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrjedtgddugedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdttddttdervdenucfhrhhomhepjfgvnhhr
 ihhquhgvucguvgcuofhorhgrvghsucfjohhlshgthhhuhhcuoehhmhhhsehhmhhhrdgvnh
 hgrdgsrheqnecuggftrfgrthhtvghrnhepveduteejgeeiudefuefgieehleejkeefudfh
 jeefgeekheekvddvheehleegveeinecukfhppedujeejrdduleegrdejrdefvdenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehhmhhhsehhmhhh
 rdgvnhhgrdgsrh
X-ME-Proxy: <xmx:8sUlXwpyBm-l0Cu0r-dwAuFIwAtRjtsp1eF6k4sXK7O5huhcDp3fhg>
 <xmx:8sUlX3Piy9R6CBycvvkKvm84z53wkPVYVFzdk8tjwgbigV4HHa9dkA>
 <xmx:8sUlXx4pKolqadNek1hErofL8Tkijff2WdsC2l5SQRi8uIvdyWa0IQ>
 <xmx:88UlX7tNVJMDg9GRPxflN-dR88utVzw26GxDmbActG3O9EGF9D0cH4nOmhA>
Received: from khazad-dum.debian.net (unknown [177.194.7.32])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1821A306005F;
 Sat,  1 Aug 2020 15:43:46 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id 5B674340163A;
 Sat,  1 Aug 2020 16:43:44 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id 0SZCIBDTFX4O; Sat,  1 Aug 2020 16:43:42 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id CD5943400161; Sat,  1 Aug 2020 16:43:42 -0300 (-03)
Date: Sat, 1 Aug 2020 16:43:42 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID: <20200801194342.GB10318@khazad-dum.debian.net>
References: <20200717114155.56222-1-hdegoede@redhat.com>
 <20200719225649.GA4341@khazad-dum.debian.net>
 <20200722054144.GQ1665100@dtor-ws>
 <20200727005049.GA10254@khazad-dum.debian.net>
 <f67ede61-c9d4-6abc-9b59-a5b2b615d1b6@redhat.com>
 <CAHp75VdvhC5HJ-BjqjDxU_Z_7_i8MV5UDN4FgWHvZfSD5=smqg@mail.gmail.com>
 <CAHp75VfCqHdZBTe8HB2C0whONCS2HgVgPPZNGRgypMiSwm0+DQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VfCqHdZBTe8HB2C0whONCS2HgVgPPZNGRgypMiSwm0+DQ@mail.gmail.com>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1k1xQL-00HCNT-T6
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
 Benjamin Berg <bberg@redhat.com>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Christian Kellner <ckellner@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Mark Pearson <mpearson@lenovo.com>,
 linux-input <linux-input@vger.kernel.org>, Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, 27 Jul 2020, Andy Shevchenko wrote:
> On Mon, Jul 27, 2020 at 10:49 AM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Mon, Jul 27, 2020 at 10:45 AM Hans de Goede <hdegoede@redhat.com> wrote:
> > >
> > > Hi,
> > >
> > > On 7/27/20 2:50 AM, Henrique de Moraes Holschuh wrote:
> > > > On Tue, 21 Jul 2020, Dmitry Torokhov wrote:
> > > >> On Sun, Jul 19, 2020 at 07:56:49PM -0300, Henrique de Moraes Holschuh wrote:
> > > >>> On Fri, 17 Jul 2020, Hans de Goede wrote:
> > > >>>> This is a simple patch-series adding support for 3 new hotkeys found
> > > >>>> on various new Lenovo Thinkpad models.
> > > >>>
> > > >>> For all three patches, pending an ack for the new keycodes by the input
> > > >>> maintainers:
> > > >>>
> > > >>> Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
> > > >>
> > > >> Do you want me to merge all 3 through input tree?
> > > >
> > > > Hans, Daren, Andy, what do you prefer?
> > >
> > > Taking all this upstream through Dmitry's input tree is fine with
> > > me, but this really is up to Andy and/or Daren.
> >
> > Fine with me.
> 
> To be clear, I assume it will go thru input tree.
> If my formal tag needed, use
> Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

Also,
Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
