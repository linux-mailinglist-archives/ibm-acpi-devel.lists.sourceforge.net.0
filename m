Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0786421BEB0
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 10 Jul 2020 22:39:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jtzne-0007dV-K2; Fri, 10 Jul 2020 20:39:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jtznd-0007dM-6Y
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 20:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a4hcFrNamD57M+KydyUHhxTo+wBFWfBERoQNWvfd5dk=; b=m2HO1rlJyB6urxWxPS6Z74XRcS
 sBqxfRZFteHs60vkNuoav2l75lvacjYAlhi3DSmGqSa5GnG/ltaE9HVNgnGqxxDrRRwmhdaA3lfV7
 +YStNLxKLp7rNfEXdN5A9JloDH7O4IveOAKlcXx8rYYvJypLcZaWGh4IPAeCzSfTSRKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a4hcFrNamD57M+KydyUHhxTo+wBFWfBERoQNWvfd5dk=; b=RFjW7VDOhuTekw8eLZNIYXVKtP
 Jd6ecyQnemTaqibJLz0A4KbZt11T11vTNQCIEtphYQDIAwYjuIoddO/jgSJV5S470cGm+mjnZYNSX
 O+PyCgUjA6O3IbeWhLD6Qv7jXylP5/ykNSJKVh8al9kITPQO2swk1BaIWgPQuGvehzR0=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jtznc-00GVCG-17
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 20:39:13 +0000
Received: by mail-pj1-f68.google.com with SMTP id t15so3095411pjq.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 10 Jul 2020 13:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a4hcFrNamD57M+KydyUHhxTo+wBFWfBERoQNWvfd5dk=;
 b=jHER2mq0RW3s7oUnT62BSuh+nJT18yv5xeSFCAZ4dvrFqjGih1qqq2+n6YtUUe23nR
 YOrlHesVve4UrjUZDGiIBmNqU/ygISCLFjzBRDAKKXlggFcsbhYTQ+XXuG4LvFydmEWY
 HMyZgo0pCyU4vQhaV7ViY9P1m7mYNsmRymR6qpqYv+CsVzvp1oXyiqZf0QpAhQ3QILg8
 Wun7fEGyWU9C8/EktMlJoKD2f1ygXF6HHeXXZ1LLgFO7U7qHCfEbD3vePscDM6+6U/M6
 S8gH/WE4B39qyZztKeZiGhskG+ApKI/alZBPyyPX3tA3x64BQU6/hy5j7tIISL9cJFgp
 ucrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a4hcFrNamD57M+KydyUHhxTo+wBFWfBERoQNWvfd5dk=;
 b=OFqLxVj5VMkPNtjiDrkBQrek7WG4W12uJPnBvsdTiPuI5L2ZXGB8ngs4OZtinTI3ID
 rcLANizmgv3vCFAinvSYoUeS239Tv8rC1G104Rxojl2NqBFqOZ8/OqExRiHmQBsYph/0
 eE+6ivMDQ5TBfs1sgSRn2vTXkAmJupq41jS1iZX6TyH1zVH7bgDpiQsrZq+ulx0sEM0T
 kVyRJ3N+K02LCWgcUtJCJskRMdzqN7V4co8wnW6xlQgYnYXvdOOF++8l2zJ/7c/Ld00R
 InyAfs+8F3TwXXaxLqKlEpkyGIMZHzJa665H27zd//g/Kppx4XHCDwLju0pmk8uq1Rt+
 MSdg==
X-Gm-Message-State: AOAM531Kr4NvGbYYm16+U2XfAgavR7tlEuhvyDaEJBDiWhJKz8kbjvXd
 aQqDBAO21f8hGYGMyk8sW1fHOqoYOavQtxO2Xp0=
X-Google-Smtp-Source: ABdhPJzik9IFjwpeSv1uyJTptrG9UO41kEEFUEDwuT9LSNlLnN6ThhdXipjvF8Ao9eTJHu6BHX4tnEYSQkgxeOEIGP4=
X-Received: by 2002:a17:90b:1b52:: with SMTP id
 nv18mr7858831pjb.129.1594413546467; 
 Fri, 10 Jul 2020 13:39:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200702085520.16901-1-aaron.ma@canonical.com>
 <20200710015614.3854-1-aaron.ma@canonical.com>
In-Reply-To: <20200710015614.3854-1-aaron.ma@canonical.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 10 Jul 2020 23:38:50 +0300
Message-ID: <CAHp75Ve9KGS+3PWCt20=vshfsw5EEjw42FjDAnKE8gwLVpRB6Q@mail.gmail.com>
To: Aaron Ma <aaron.ma@canonical.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtznc-00GVCG-17
Subject: Re: [ibm-acpi-devel] [v3][PATCH] platform/x86: thinkpad_acpi: not
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

On Fri, Jul 10, 2020 at 4:56 AM Aaron Ma <aaron.ma@canonical.com> wrote:
>
> When _BCL invalid, disable thinkpad_acpi backlight brightness control.
>
> brightness_enable is already checked at the beginning.
> Most new thinkpads are using GPU driver to control brightness now,
> print notice when enabled brightness control even when brightness_enable = 1.
>

Pushed to my review and testing queue, thanks!

> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index ff7f0a4f2475..2b36d5416a3b 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -6955,10 +6955,13 @@ static int __init brightness_init(struct ibm_init_struct *iibm)
>                         pr_warn("Cannot enable backlight brightness support, ACPI is already handling it.  Refer to the acpi_backlight kernel parameter.\n");
>                         return 1;
>                 }
> -       } else if (tp_features.bright_acpimode && brightness_enable > 1) {
> -               pr_notice("Standard ACPI backlight interface not available, thinkpad_acpi native brightness control enabled\n");
> +       } else if (!tp_features.bright_acpimode) {
> +               pr_notice("ACPI backlight interface not available\n");
> +               return 1;
>         }
>
> +       pr_notice("ACPI native brightness control enabled\n");
> +
>         /*
>          * Check for module parameter bogosity, note that we
>          * init brightness_mode to TPACPI_BRGHT_MODE_MAX in order to be
> --
> 2.26.2
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
