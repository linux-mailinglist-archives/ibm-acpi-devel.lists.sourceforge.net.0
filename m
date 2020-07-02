Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 158A82121A8
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 Jul 2020 13:00:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jqwwd-00033n-A3; Thu, 02 Jul 2020 10:59:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jqwwc-00033d-LP
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 Jul 2020 10:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eQfyd1FNaJKu9ASDwUOKz0z9LJlSLAkgJJqmBpYTw9s=; b=NQxA3+RlXc+uyUlzcj/x7L6HF1
 jJ5cvC3vXj9YHxx8Qfu+1MCjluGMNNyK/WUWhboVRtwxlZq389N8KKGW0cmeENK9QQhJSIxfWQlDS
 R6PwIWxoC62hd4nHrhNDk8oqK43OuiErFvv4jo4YAEQU1Ki7m9sQNZyG/IsV+9ppcMdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eQfyd1FNaJKu9ASDwUOKz0z9LJlSLAkgJJqmBpYTw9s=; b=eijwG+VFh1sVusZoRCcg8k1XTC
 RSOBTbXWf7iklp8Qa8nx+fahmDyuEdUROxNKzdlZGyaLS6CZuHOKz6l5EucGuBufiYTk0CQGRcfVD
 d/e2/6usT7sFbB7QpbVPtH5DFiPFlTGn4tqaDDDz+5h4ahJazPp6b9W1z8eekD+lDlEk=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jqwwb-00A0AU-DD
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 Jul 2020 10:59:54 +0000
Received: by mail-pl1-f193.google.com with SMTP id bj10so5949269plb.11
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 02 Jul 2020 03:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eQfyd1FNaJKu9ASDwUOKz0z9LJlSLAkgJJqmBpYTw9s=;
 b=U0J2CRFa/lwmL2DchR8OjHsqhBV24N+SjcjO+KDTedvIERiHLgnWgmQ04htga5/Ixn
 7uVu9thA4GpArt/jbzpdV+hwdrlpco2wAVOtiXNih3aY99WUDtlSh9mHIUIY2A+qG58G
 /DS/GsCVg+P4aCjExqR+RrXYb9TWuSqGlMf0dZVkV/XX8TajpJ5QZtOkdf3IqM2SOSet
 4Ga/6euvE62eIxfx/iCX64v8IijnQJPS3687H1bXSBnP9hJ7eKc82CWxYrH9Rk4iJ9M5
 DmF8Cu7N0iMHJGLl4VPdq78mCCTgcjmM2QYevVSv8fImAWzroyUfExMSHOnwHlgSzMmK
 M35w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eQfyd1FNaJKu9ASDwUOKz0z9LJlSLAkgJJqmBpYTw9s=;
 b=jQnuZnCdSB22wOT+MURcu7vR51DLDvoE6HqAbFfNHTLvKXZuKGLaI5h4eazDCcc+ny
 iDx7xGuq+iQKyQg3ro6foEnQELPxNlJW5vq9MH3qImSeUuRywl70iIS7ELdv/Cd4FRzp
 pBsTZrXmNhZK9OaiNOaCMGT2qw8QkQrW8PSbW4q1zjGicRJJrz0NiJLB2RuHsvYmVf3V
 TUOdp8hZLvUigBmmFhdzh+nu0MT7beneEp4UWs66VSXeJeoc8Q1DZ/Kij3xwe5YT7P8y
 q234LiplavjxheYgl85e4VS5eC6afa8OrVsjicTiDj0vFhR3S2T3W7lmBXBeYe8+V6UU
 1anA==
X-Gm-Message-State: AOAM531qj4fp5OpRJBY8I+wlurPrrSNn52lb+hsPsFOvY1s75aqhNchq
 93fW4mLTiQa3CX4P3X3Kle68KHlg22sEy9nYgG0=
X-Google-Smtp-Source: ABdhPJwwKX0Eq6coYFI7oC6A0cH8iVxxXuJr67Zz2dyeBp+pAptYHXltRPM5+dPgpQAHk06RqMiBOPI/ImL/D6la98E=
X-Received: by 2002:a17:90b:3547:: with SMTP id
 lt7mr6496916pjb.181.1593687587859; 
 Thu, 02 Jul 2020 03:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200702085520.16901-1-aaron.ma@canonical.com>
 <CAHp75VeCHW=GMgyHRswsTrZ7b3TEnFh15F-5fyHcUsqXzoFS_g@mail.gmail.com>
 <2ecf4032-267c-32c8-361f-2396730aaa65@canonical.com>
In-Reply-To: <2ecf4032-267c-32c8-361f-2396730aaa65@canonical.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 2 Jul 2020 13:59:31 +0300
Message-ID: <CAHp75Veqp_saX+VsijpLrihKMHiVH1W4o-3CYXNooOCu=YKtjA@mail.gmail.com>
To: Aaron Ma <aaron.ma@canonical.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jqwwb-00A0AU-DD
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: not
 loading brightness_init when _BCL invalid
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
Cc: mapengyu@gmail.com, Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Jul 2, 2020 at 1:51 PM Aaron Ma <aaron.ma@canonical.com> wrote:
> On 7/2/20 5:30 PM, Andy Shevchenko wrote:
> > On Thu, Jul 2, 2020 at 11:55 AM Aaron Ma <aaron.ma@canonical.com> wrote:
> >>
> >> When _BCL invalid, disable thinkpad_acpi backlight brightness control.
> >>
> >> brightness_enable is already checked at the beginning,
> >
> >> Always print notice when enabled brightness control.
> >
> > Why?
> >
>
> Default brightness_enable = 2, so this message will always be printed as before
> Actually no change here.
>
> > ...
> >
> >> +       pr_notice("thinkpad_acpi native brightness control enabled\n");
> >
> > 'notice' level is quite high, why do we spam users with this?
> >
>
> Like above.
>
> Another reason is  most thinkpads are using native gpu driver to control
> brightness, notice when thinkpad_acpi brightness is enabled.

So, based on the above, please elaborate and explain all this in the
commit message of new version, thanks!

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
