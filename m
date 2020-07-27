Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E487822E9FA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 12:25:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k00Jq-0000no-95; Mon, 27 Jul 2020 10:25:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1k00Jo-0000nf-VV
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 10:25:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r6P0NW/NQ7oCqQTy1c6MyZkcBa+F52tox9mNpJ0I9/Y=; b=lja9qCQ3kqD+mdAvX+HZq1SNgk
 +EsFiLMkC8E646A/z4kq7YpSPI/n6qXmg9Q6Wua0cdiEhbwIy/ZSGN5CMn1yneurqqx4lu3/u5DJ4
 XiWoeskZ2/NuyIhbfjGjNftxdxD4qtk4/SW4S+bWnsjkb+sFAqlOwmMzIyira0X91eSU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r6P0NW/NQ7oCqQTy1c6MyZkcBa+F52tox9mNpJ0I9/Y=; b=SB9QI85FNRMcO8p6Ihe2ZNid7r
 6BJXcQZ5lwX+DcdCW5YFKQPWxUTvAn9IGH3J858QoalY2E42aeYZH620xBT9qkN0v3eMudZdbjXx0
 alXUS2M63n7WZIlg6h6l+iVqpWa43UffI/D78Bx6VrRFDG/vniJ0t30fErWVegJYgRZA=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k00Jn-00AgcQ-51
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 10:25:16 +0000
Received: by mail-pf1-f194.google.com with SMTP id l2so2503361pff.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 27 Jul 2020 03:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r6P0NW/NQ7oCqQTy1c6MyZkcBa+F52tox9mNpJ0I9/Y=;
 b=YGhQg2cgSfeKYXJ0iXoUi0yrHvu6HEOUJPpfU5AJ8M5oQPVfZ/j528gsyZCqt/RIaH
 HiMwN6G5OpkC9kmXdNN5K4yC5Rd4ZIhEAwcewzcC59Mbe1DQJ2gWRFj94iwxO70Hgypj
 qiM3LIGRjvDXDu+ToTSCTUXMfiKygZUQy0olshTpYVA/DKLnBcy78pv5fFMQnh+PmbAp
 j/+nFRGindy55o8bTIQ5xqu9UUrWkQMLKA9tdnuEtdZiYl9CVyBpBtwmd9yCNO4l2fuN
 6n7wPOVfkzCJi0SRvIMkf+6vJvghdFOEPpZJooT+Tejc+S7U0IpqzJSAAPRKnEsgD7bL
 2A7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r6P0NW/NQ7oCqQTy1c6MyZkcBa+F52tox9mNpJ0I9/Y=;
 b=jIusNfD7DZjE4LrinQChxNzoavUGbRjgrxIVhLgBcJ9qffu/cXeF6cWg37LLCSirL/
 vaAJhzw/43zttTTG9MoV8dPTT7LPBNXe43groVn+IHbzKxtdje8JDns0R7zHtZD9fjiF
 PsnFHPTUc7u2jyiCVW9qjr89qqwBbMpFfMuLRSdub9OSHco3yGXZ4UJ7gnyxPGrbflkC
 EY46qKbBQW1pQ0LMx5QvYlG4SZcrjIHOdv4N6h4wXPtavpUMijSrvJ9cAPgj7/Vs2clU
 NPtu+2pkVSH/PcbVVx7ypxLQlfyclCLakVRL66POwn/mFNEK9O1oRY0AlRMnl8d7Evwl
 udOw==
X-Gm-Message-State: AOAM5331VYozFNiYNPzfec/gve5sJRPpPv0xiHEoagLwllyST+82bJjP
 LjRAdTog/p/G3qV8HKXo1nFOOSwjz10TifqNQXs=
X-Google-Smtp-Source: ABdhPJw5Q3FsSC0MI9/UyJUYP8cXE1w0ledJ1kmEd+1mEmUhKoLmjxcDuXj17SkYLlChMWYEfk08tQR479WIqfhaLcI=
X-Received: by 2002:a63:924b:: with SMTP id s11mr18613983pgn.74.1595845509654; 
 Mon, 27 Jul 2020 03:25:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200717114155.56222-1-hdegoede@redhat.com>
 <20200719225649.GA4341@khazad-dum.debian.net>
 <20200722054144.GQ1665100@dtor-ws>
 <20200727005049.GA10254@khazad-dum.debian.net>
 <f67ede61-c9d4-6abc-9b59-a5b2b615d1b6@redhat.com>
 <CAHp75VdvhC5HJ-BjqjDxU_Z_7_i8MV5UDN4FgWHvZfSD5=smqg@mail.gmail.com>
In-Reply-To: <CAHp75VdvhC5HJ-BjqjDxU_Z_7_i8MV5UDN4FgWHvZfSD5=smqg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 27 Jul 2020 13:24:54 +0300
Message-ID: <CAHp75VfCqHdZBTe8HB2C0whONCS2HgVgPPZNGRgypMiSwm0+DQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k00Jn-00AgcQ-51
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
 Christian Kellner <ckellner@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Mark Pearson <mpearson@lenovo.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 linux-input <linux-input@vger.kernel.org>, Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Jul 27, 2020 at 10:49 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Mon, Jul 27, 2020 at 10:45 AM Hans de Goede <hdegoede@redhat.com> wrote:
> >
> > Hi,
> >
> > On 7/27/20 2:50 AM, Henrique de Moraes Holschuh wrote:
> > > On Tue, 21 Jul 2020, Dmitry Torokhov wrote:
> > >> On Sun, Jul 19, 2020 at 07:56:49PM -0300, Henrique de Moraes Holschuh wrote:
> > >>> On Fri, 17 Jul 2020, Hans de Goede wrote:
> > >>>> This is a simple patch-series adding support for 3 new hotkeys found
> > >>>> on various new Lenovo Thinkpad models.
> > >>>
> > >>> For all three patches, pending an ack for the new keycodes by the input
> > >>> maintainers:
> > >>>
> > >>> Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
> > >>
> > >> Do you want me to merge all 3 through input tree?
> > >
> > > Hans, Daren, Andy, what do you prefer?
> >
> > Taking all this upstream through Dmitry's input tree is fine with
> > me, but this really is up to Andy and/or Daren.
>
> Fine with me.

To be clear, I assume it will go thru input tree.
If my formal tag needed, use
Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
