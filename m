Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D32BA21EB51
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 Jul 2020 10:28:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jvGIL-0002RU-7K; Tue, 14 Jul 2020 08:28:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jvGIJ-0002RM-RW
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 08:28:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RFASHkwcTOcp5xJmcZ6cr6YyCkNb4rp9EMZoB3APeEs=; b=Hi25m+hI6VL2j9RIUTmkVfq2KG
 XJIpd9mBQ07aNOZc89baKnktuwrzTuQC5+2xTQDAXXVJmcYMy20TCPWLqEJalQpcgVgg/btfp6InN
 OBWok1L9t5C4vpEZacbhR+fkosocIb31fb07rfPeE0no7KItv4zi3HEaOqNExbozifI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RFASHkwcTOcp5xJmcZ6cr6YyCkNb4rp9EMZoB3APeEs=; b=dPKu+N4FGUmih1eVqRBWDPwv4j
 42YLcNnHxu9VI93aUAvituNGwEZZe0lGZRvdja8y7cRRxz3HP/NfitsHmt+FQqkyciMoJ6Oic7hvt
 lNqziGywft9djKBjC8Zddyf4Dx/H51r/FGc0ReiikethSQ1/25NqrkWBXrf4ipPCNMio=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jvGII-002YqQ-LE
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 08:28:07 +0000
Received: by mail-pg1-f193.google.com with SMTP id m22so7282921pgv.9
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 Jul 2020 01:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RFASHkwcTOcp5xJmcZ6cr6YyCkNb4rp9EMZoB3APeEs=;
 b=ULwKSSLYkH+bjGYv5JxlkMvcFS4rwLeo8EWsF8xUFQDq33RBMR3P4tXOWkrtgiOSwn
 yXU3tTBk9X6raRX/hmHLwrPivEbgy4Aw2IFqE6C0HhH8ZswZh4FcMatEgN2aPTU5r21B
 A7xq0B+hteJs5aqnD3We1qYIfLfyg7sgIb+ZOQXH9VXaFuj1nhLpLQmRFHIczqQ2v26v
 P/LpX/7D8fRyBXbw8ORi0JWRehF6tUh4zp9nJMrKfXuV5WH3mCBtVt83Bk/Dvy8bhWn6
 rfeezApSCQVKzQW18J+E1/JReIdJzotb61bOHY0biXkpeWPJjQNk/R4mNxppiQnxiSiW
 /Okg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RFASHkwcTOcp5xJmcZ6cr6YyCkNb4rp9EMZoB3APeEs=;
 b=HqbOkAKkmZO1R/KM4IrRMYa2S2pHT6QEtYQxsZkUa87cXnRGJBLe+q45agSaqZeHea
 0N5NHWIeMXiwewY10oaP13yh9r/le36GoByfSLeguZex2S/VdJ2YsA4renrMISfzrAOb
 XV6tnq7gbMv7dnEZyLuXywlQdYtBVKYew0pFFa5+PF2M3jkatIY4zGM7qXIoALxhWjvP
 C5peffjc9r4pluiGvFSZzHeh7DusLJAjrzBeEz7CWBbo68CjTCB623HjVr86pT0IT9UO
 D/TD1aHkllvHenkzU3xzY/l2I9G5vcbpO/EX3drcEaeGGWGQLdWIMkDxpq8lHxoTg2w8
 EWjA==
X-Gm-Message-State: AOAM531lWF7+fYXe/U2urZPPu37KDy928yH+Nm3Rw/PkxB1DhaepSwwu
 AYOzALk1cIr8WFhVdWHrMRr94kh3zWVV5LCEPxY=
X-Google-Smtp-Source: ABdhPJy1EYtUDBT/tte1IBbm2WCblUvd+mmLWT5JgnWMWmxUN4zvKXGVtrhbtl66aUckEFjZ0g/VeOlVNdEJb1zRQO0=
X-Received: by 2002:a63:924b:: with SMTP id s11mr2506093pgn.74.1594715281116; 
 Tue, 14 Jul 2020 01:28:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200714081510.6070-1-hdegoede@redhat.com>
 <CAHp75Vd6uGNw5m3-Tc1tkABLT_Wi7CtW2yo8+B5TpYV4U8XE9A@mail.gmail.com>
In-Reply-To: <CAHp75Vd6uGNw5m3-Tc1tkABLT_Wi7CtW2yo8+B5TpYV4U8XE9A@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 14 Jul 2020 11:27:43 +0300
Message-ID: <CAHp75Ve9HF4WVkiUA77s9LsN6d8oaFPRgjLi86FnDSHgmVvTNA@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jvGII-002YqQ-LE
Subject: Re: [ibm-acpi-devel] [PATCH 5.8 regression fix] platform/x86:
 thinkpad_acpi: Revert: Use strndup_user() in dispatch_proc_write()
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
Cc: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Jul 14, 2020 at 11:21 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Tue, Jul 14, 2020 at 11:15 AM Hans de Goede <hdegoede@redhat.com> wrote:
> >
> > Commit 35d13c7a0512 ("platform/x86: thinkpad_acpi: Use strndup_user()
> > in dispatch_proc_write()") cleaned up dispatch_proc_write() by replacing
> > the code to copy the passed in data from userspae with strndup_user().
>
> user space
>
> > But strndup_user() expects a 0 terminated input buffer and the buffer
> > passed to dispatch_proc_write() is NOT 0 terminated.

Second though, perhaps it's a simple wrong count parameter?
strndup_user(..., min(count, PAGE_SIZE)) or so would work?

> > So this change leads to strndup_user() copying some extra random bytes
> > from userspace till it hits a 0 byte.
> >
> > This commit reverts the change to use strndup_user() fixing the
> > buffer being passed to the ibm_struct.write() call back containing extra
> > junk at the end.
>
> Can we simply use memdup_user()?
> And thanks for catching this up!



-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
