Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFDB14977
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  6 May 2019 14:23:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hNce3-0006DP-0l; Mon, 06 May 2019 12:22:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1hNce2-0006DE-8s
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 06 May 2019 12:22:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PwfLp6D54bZUS8f0UxR3vu8Buzj/gb/Y+B4s3U4Ap1I=; b=ky35h5VZY6j47hvlmR+v3ht5S1
 THLLztCSEi8ykIMVJWVToHdL/+SoH4stjq+yHoAc1ecmrw8RfdNnVZ6ovhlegp50ywdNNEan9AdJf
 wQlXiUlZWHYu+XLC8aqN17mzua1GSFM5zvUEioiku3a17kPIqxd/bxh/FghHydT2muWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PwfLp6D54bZUS8f0UxR3vu8Buzj/gb/Y+B4s3U4Ap1I=; b=OYdYO276ow8FFFwG21mlM5y0gO
 Dg133r6D8hHj6h4TZwOP0Afh8R9EQjwHABhHRrKMJs2IuorGGzJ3SEOP3eFseuRymDYd2teX8rjdj
 3umXl1ILhyyzvQ9hWWQ8hma0Jovx41K/O0t07bEPnhWeU8SVSHTfq4yIFK/EokRwbBgs=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hNce0-00AWFJ-R2
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 06 May 2019 12:22:58 +0000
Received: by mail-pg1-f193.google.com with SMTP id c13so6397126pgt.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 06 May 2019 05:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PwfLp6D54bZUS8f0UxR3vu8Buzj/gb/Y+B4s3U4Ap1I=;
 b=DLVoOWMMYuCzhsYqdOG7eJJHzAU/0h3zN3lcCvIPlRo9tZjvJqXHKdBfmV3PUx4Q/T
 sTVKOWZ+VS9YDF1eiX4gTrMeiMqEZcBLcNua64unZoyW8N9HbyW/XHm6vrrX40thigVo
 w75ZkCEVu39VzuCCsPOFG7NaPKpoANQqbV+Fy8feaOxx8dx4mvzG3pxpACQivlYLz9BS
 xzNERBI4V8PthY9yBYbSGFLalBNOU6/mrYOSf5w8OqPHBgQg/bpT4g/0+e1XGKz45Mfr
 3Sqr57tkvnvLxyiEwlU2MxOb9qW/pOxTz3EG144SIJhPstsDUMjrTtNfXXuLJMhwrRgI
 /c2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PwfLp6D54bZUS8f0UxR3vu8Buzj/gb/Y+B4s3U4Ap1I=;
 b=HiBGoX/uo9lDmlY50cRs6MRLLRXNWKeUuOgvNVqtd99rLcriwvkWcrT4yiru0MGCLt
 B+AUqfqINJnl2mHLyDl3NNCJc81I4zqS/esq7v7N7tq/s2ns1YT80iTXZfzZcQwIp9bL
 oQ9tJWHKCtGUFKcifhXo4VMApAzsnuzuVrmVDajLXLoW5thu3rEvurDfotlRgXFxJAHH
 w5IxqEKfUTRXmhQWBhCufioCFNPb5+7croekcrQCGwaEa+lMcg78rgRLHmfm7UdMKtjf
 IEt49QGG0dP1vfhn6BaAqfxoXsqtU2U+z1XKLvhSne2OsHlR8PCr3VoMRXHH4xxHBL1N
 J3yw==
X-Gm-Message-State: APjAAAVJ296c8P1cMkDaVChLa8qqNt+LXzS1CRCgDRhY4hGltHwx3Wi3
 BQO2Gj4WXb3ug9yqnHS7c7t/IMdMW/pYQmODtrA=
X-Google-Smtp-Source: APXvYqx+1aqdahcbOQfkAGi/MjA14HI/uopLzP8/SRGyhyFEpk3iYg1WTCuSr98e/dDVq7oa4WsRymRbB68xWKZYXs8=
X-Received: by 2002:aa7:884b:: with SMTP id k11mr32683031pfo.49.1557145371156; 
 Mon, 06 May 2019 05:22:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190424181543.GA31200@embeddedor>
 <CAGXu5jKRO45m1TRDPA09sv0j+cZCC8e1w+oQty4YfOttKP3FYA@mail.gmail.com>
 <13ba6003-ff33-4e5b-b88e-ef93bc68dc48@www.fastmail.com>
 <e1199dfe-86fe-0e42-74c7-15adf0b54406@embeddedor.com>
In-Reply-To: <e1199dfe-86fe-0e42-74c7-15adf0b54406@embeddedor.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 6 May 2019 15:22:40 +0300
Message-ID: <CAHp75Vep5tYDrcgNWFepj-GgbaCcRbHcDHyQ4mD=+yX7Jftt+Q@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hNce0-00AWFJ-R2
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Mark
 expected switch fall-throughs
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
Cc: Kees Cook <keescook@chromium.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 LKML <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, May 1, 2019 at 11:44 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
>
>
> On 4/24/19 7:55 PM, ibm-acpi@hmh.eng.br wrote:
> > On Wed, Apr 24, 2019, at 16:05, Kees Cook wrote:
> >> On Wed, Apr 24, 2019 at 11:15 AM Gustavo A. R. Silva
> >> <gustavo@embeddedor.com> wrote:
> >>>
> >>> In preparation to enabling -Wimplicit-fallthrough, mark switch
> >>> cases where we are expecting to fall through.
> >>>
> >>> This patch fixes the following warnings:
> >>>
>
> [..]
>
> >>>
> >>> Warning level 3 was used: -Wimplicit-fallthrough=3
> >>>
> >>> Notice that, in this particular case, the code comments are modified
> >>> in accordance with what GCC is expecting to find.
> >>>
> >>> This patch is part of the ongoing efforts to enable
> >>> -Wimplicit-fallthrough.
> >>>
> >>> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> >>
> >> Reviewed-by: Kees Cook <keescook@chromium.org>
> >
> > Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
> >
>
> Thank you both, Kees and Henrique.
>
> Friendly ping:
>
> Who can take this?

Pushed to my review and testing queue, thanks!

>
> Thanks
> --
> Gustavo



--
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
