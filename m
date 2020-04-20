Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 658001B10CD
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 20 Apr 2020 17:56:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jQYle-0008SX-UT; Mon, 20 Apr 2020 15:55:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jQYle-0008SH-32
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 20 Apr 2020 15:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rxaGMveKIYI1dQFuiqL/B8rf5h1B6KRqrXhDAyVFbtA=; b=aY0lIleETtiu79mz6Ax6ksivas
 A4QKt3yCNoSfJ/JSz/2ua5IAT3F+qc/gO9uEwPTldylvEq4jf+2DMVb5c5ZQyL2lEgPeIPnT7Xb72
 NjRFaA/wCJR5jQaqICwJI3ffwySPbLmAS1wEd0cnlwcRYzjt8cP++/VnljyyFiIIwjF0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rxaGMveKIYI1dQFuiqL/B8rf5h1B6KRqrXhDAyVFbtA=; b=WE9q9eQHEWJCiD+gfAQ4+3NGT6
 a50mZqrmQWC7xX66DYU3KazqV5iLZUwmdsSi/9Uil/l0RLOU6Vs9hUZUVoBxmI7uXCizoASJLOCAk
 /kBoPeO2OKu7HjK4QYAgttO/60Z4UZESy6gVq4ACSUgLbp98Qh2RCjRVE+35VeHBIIOo=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jQYlb-004XVg-KV
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 20 Apr 2020 15:55:30 +0000
Received: by mail-pl1-f195.google.com with SMTP id f8so4107372plt.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 20 Apr 2020 08:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rxaGMveKIYI1dQFuiqL/B8rf5h1B6KRqrXhDAyVFbtA=;
 b=N2+gEDTZ+k2gJAzLpl490cT6gw9B/DhyjWBeceCx7+Gc7EHxN5gZtlQQDiTOkh6D0J
 43Bh6M/58lqm4ThJDOxh7d4gYsUmDOed01mPUEVZMsHfJiWPyPtrMFpimvJ8/iuF+vak
 n8S2+CBq5+NMmQJ4WTuzbZT8/MLCCxB3sVf5uBtdVSBbjRZN7h4FzMCKm8iQgmX5V3uW
 w75Ux4tO6cuewbXWw1G+GMotV7OlPxOPB/a4E2/l+uXmTGoCy/AwLG8MK+GK5Q0A9Yuy
 kiSqXopnIcfjvaIrxia24fnGAjOlOPVWGxnIRg8GT0QofobODnyZPBl0YUbUnKwKSqjG
 JT9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rxaGMveKIYI1dQFuiqL/B8rf5h1B6KRqrXhDAyVFbtA=;
 b=iyJD6SIKj2syKV7VXH0aprFGMZRYkAbWw2ao7YKpHkrIr9BCCqIstzHE58OFLlxchC
 UT1AH2Of3qFEsCPxNZTAtJRM9WHLN/R3SgPOCBZt8fCvVJX3unfsfI6+DO0daV/ALVMC
 RaLug02qRIgCw/yeKVWaKIXK4MpcOkUrmPd2fTw0yH2yVp/+KeMy1aLXqreGgxGJlz88
 nK18/LWKcoOvvYc3AVhDwxUANWjpEl0XB7W4p7HgLlziGMEjA+iYf/jqAh2d7brxTFqs
 bnsjJEg0Y8FwLroN0j8/GRbnVxXwmUGqZ42Di5qrFQIfzqbPv/+6zLWNT68fypeL6tMA
 dh1w==
X-Gm-Message-State: AGi0PuZtvQB8TtjmALkW9PGUK87xCPTdkJwh8vsta+uOZZglTXQqrb0T
 0bV+bgZoquLIfPuyJAp4uDynoOGbGnT9oOM3DvU=
X-Google-Smtp-Source: APiQypKUiXfT/dcgEW6UjJJhuGoGZ6sJC1lydTphUEe+NHltowitPsY2KLBl1N4hvf77u7QdMuEogUuQ37FvwUYRAjU=
X-Received: by 2002:a17:902:854a:: with SMTP id
 d10mr17212420plo.262.1587398121924; 
 Mon, 20 Apr 2020 08:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200417201426.24033-1-larsh@apache.org>
In-Reply-To: <20200417201426.24033-1-larsh@apache.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 20 Apr 2020 18:55:15 +0300
Message-ID: <CAHp75VdtwTGks-i3XKkOsUxz69i-W=QX63BxdRazev1A3fTq8w@mail.gmail.com>
To: Lars <larsh@apache.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jQYlb-004XVg-KV
Subject: Re: [ibm-acpi-devel] [PATCH v2] thinkpad_acpi: Add support for dual
 fan control on select models
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
Cc: Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Apr 17, 2020 at 11:15 PM Lars <larsh@apache.org> wrote:
>
> This patch allows controlling multiple fans as if they were a single fan.
>
> This adds P52, P72, X1E, and X1E gen2 to dual fan quirks. Both fans are controlled together.
>
> Tested on an X1 Extreme Gen2.
>
> The patch is defensive, it adds only specific supported machines, and falls back to the old behavior if both fans cannot be controlled.
> However, it does attempt single fan control for all previously white-listed Thinkpads.
>
> Background:
> I tested the BIOS default behavior on my X1E gen2 and both fans are always changed together.
> So rather than adding controls for each fan, this controls both fans together as the BIOS would do.
>
> This was inspired by a discussion on dual fan support for the thinkfan tool (https://github.com/vmatare/thinkfan/issues/58).
> (Thanks to Github users voidworker, and civic9.)
>
> The BIOS ids for P52/P72 and X1E are taken from there. The X1E gen2 id is verified on my machine.
>

Thanks for an update. I have pushed it to my review and testing queue, thanks!

JFYI: there are two issues (I have fixed them, no need to resend) with
this. Commit message lines are too long and...

> (In the first version my mail client botched the white-spacing - my apologies, this is my first Kernel patch. Used git send-email and gmail this time.)

...this kind of comments should go after cut line ('---' below).

> Signed-off-by: Lars <larsh@apache.org>
> ---

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
