Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8290211FE8
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 Jul 2020 11:30:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jqvXc-0008LV-C2; Thu, 02 Jul 2020 09:30:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jqvXb-0008LO-23
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 Jul 2020 09:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pGAFkWeUUH4iz7VKXUyVK77gvhyRjgh2Wem4x5J/nds=; b=A3kA+/phAigBGXFCKFvt925NhQ
 e5+6N6oAVSkh99Z+xpu8xsTB/zC2AC5TozWhgxiS//8prJZ9Y4+sjHhAVvEj1EHC0plnuT2XEx/kE
 24qLE+wAqXu2566I1JzcVdwxGmTVSMEz29SErYkIshvno8j/MYwbcPgLu7suowNZjvG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pGAFkWeUUH4iz7VKXUyVK77gvhyRjgh2Wem4x5J/nds=; b=Yfm7U2jLU0GuRLAvzL/aznJw6X
 gbxu5rEMK/Yh2IBqnxh6pzAFW43FHcgDmhprP7Y0jPkSiqzwTcM17a6GDtMR8GLl9mGAkFuESZA0V
 Jwq3KcBB0w0Zd1ubC7KvYvdqwXY0jsrikeNjY3XqAySXMctgem2tq8bo1SFHi+TN88F8=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jqvXX-007vDG-7U
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 Jul 2020 09:29:59 +0000
Received: by mail-pg1-f195.google.com with SMTP id d194so9815033pga.13
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 02 Jul 2020 02:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pGAFkWeUUH4iz7VKXUyVK77gvhyRjgh2Wem4x5J/nds=;
 b=gPOUqHKKaKiBGOqgYjaoTiUdbO+CRwl4p2JJVZxvVX7KMuhXBbDN35B/TOKS4X9FgF
 vCu9tW1zCsP/hYe4V0GacyJkibiy1lGvVzhRjEDCJIG74mCbqRk9kAjy4CmI6Jw0uoKE
 UZjCiY5gCvOFQI68eT9w/gYz8Bw6jdFpz6dndBxCChARUzobCjqNtGnmucyzTXPncK45
 8HHxbzyLJQ1u9ldLGCzWVmS2Nm4QTrlao8aN1e9KVxpQlnVqdvfDXOi/H/OBN2GSb4Zv
 EzBjCo2Sp+8zikaCiOgTYOaS7mv7vKdqs9cOhVgiwHcdPO1VtF8fJeQfxWZMUQ35eZm4
 xC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pGAFkWeUUH4iz7VKXUyVK77gvhyRjgh2Wem4x5J/nds=;
 b=mq6rEMmB6HPug0iB4anczxKD6+/JTd2yFeFNx9UKSnGeHdPfuiYRFyrPHeQQKr13pS
 2elZsSswVmsIYaY+E4wFNDvAAu7q/z8F3IGrIWOQdIJmEE38hSITb2RFg7ML48C8ludu
 SDa3mrt+Kpj9sA4CrnOnVJ6FwSlKrQf2FQ44dk3qTj7OAeLRvWburYt0rIXToBC6x4f6
 Ep8X+vRTdM9updAWOWDHc7lP/Kg+a/S9F1xjDvWWqI0qgsJRbylm4FFyBdz2VIjYOVnZ
 3lFq24IpQByhoVWOHc16lxxcNzAM8hn2isTJzUdm3gDyLxeW2Hw/pwyKFJH+xYjsIi0D
 Rwew==
X-Gm-Message-State: AOAM530lLURK09I0L0U6RkdbEhC7I67Ffa8Z1fOphBSxQHyHQ5huIWTt
 dDvoLM5UzkILrioRxEbrdEc6qEPUYhmjOjORDmo=
X-Google-Smtp-Source: ABdhPJw7j3D9vrHceSteDR9mOWW6nhYYSqnPRuGn48DOijfjE49eIvTNL+G+i1Zl+4IfThUce/gzg0riEqMyCGyN9Xw=
X-Received: by 2002:a63:ce41:: with SMTP id r1mr34421pgi.203.1593682189527;
 Thu, 02 Jul 2020 02:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <markpearson@lenovo.com>
 <20200629191748.3859-1-markpearson@lenovo.com>
In-Reply-To: <20200629191748.3859-1-markpearson@lenovo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 2 Jul 2020 12:29:32 +0300
Message-ID: <CAHp75VeO5SzYs=kRh+BV_vydO7PTPLkmu8aiYXvSJFTewSTYwA@mail.gmail.com>
To: Mark Pearson <markpearson@lenovo.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jqvXX-007vDG-7U
Subject: Re: [ibm-acpi-devel] [PATCH v4] platform/x86: thinkpad_acpi: lap or
 desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Nitin Joshi <njoshi1@lenovo.com>, bnocera@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Jun 29, 2020 at 10:23 PM Mark Pearson <markpearson@lenovo.com> wrote:

Thanks for the patch, my comments below.

>   Newer Lenovo Thinkpad platforms have support to identify whether the
>   system is on-lap or not using an ACPI DYTC event from the firmware.
>
>   This patch provides the ability to retrieve the current mode via sysfs
>   entrypoints and will be used by userspace for thermal mode and WWAN
>   functionality

Please use proper indentation (no need to have spaces) and punctuation
(like period at the end of sentences).

...

>  drivers/platform/x86/thinkpad_acpi.c | 111 ++++++++++++++++++++++++++-
>  1 file changed, 109 insertions(+), 2 deletions(-)

You specifically added a new ABI, where is documentation? It's a show stopper.

...

> +       sysfs_notify(&tpacpi_pdev->dev.kobj, NULL,
> +                       "dytc_lapmode");

One line?

...

> +       int output;
> +
> +       output = dytc_command(DYTC_CMD_GET);

> +       if ((output == -ENODEV) || (output == -EIO))
> +               return output;

Why not simple

 if (output < 0)
   return output;

Btw, how will this survive the 31st bit (if some method would like to use it)?

I think your prototype should be

int foo(cmd, *output);

...

> +       new_state = dytc_lapmode_get();
> +       if ((new_state == -ENODEV) || (new_state == -EIO) || (new_state == dytc_lapmode))
> +               return;

What about other errors?
What about MSB being set?

...

> +       dytc_lapmode = dytc_lapmode_get();
> +
> +       if (dytc_lapmode < 0 && dytc_lapmode != -ENODEV)
> +               return dytc_lapmode;

> +       res = sysfs_create_group(&tpacpi_pdev->dev.kobj,
> +                               &dytc_attr_group);
> +
> +       return res;

return ...(...);

So, we create a group for all possible error cases but ENODEV. Why?

> +}

...

> +       sysfs_remove_group(&tpacpi_pdev->dev.kobj,
> +                       &dytc_attr_group);

One line?

...

> +static struct ibm_struct dytc_driver_data = {
> +       .name = "dytc",
> +       .exit = dytc_exit

Comma is missed.

> +};

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
