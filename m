Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E44911B46A1
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 Apr 2020 15:51:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jRFln-0001ao-5C; Wed, 22 Apr 2020 13:50:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jRFll-0001af-ND
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Apr 2020 13:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r5MLAjwUMHzpyOBbOYuDtWflGns31bS16OANHFpjwJ8=; b=CNYPy4NjtGJzD/LXRrOfb9bey1
 GFnkVK6yTZkAtYNzhC7x4mJWVNbuNovzggQ1UyiQDRyDIrWfG0uXG2NmF+fTmP8kpq4F0UQtGqcmZ
 scoQpscksifKx8PJdXJkespXuxc4vmPj+Y3emrUZC3OTaqVIGnswUOnbp70apGXp+vDw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r5MLAjwUMHzpyOBbOYuDtWflGns31bS16OANHFpjwJ8=; b=kUqZB8qrULr1QlL9zuliF+hO9P
 bLb2Zf2pdePAGsCuOTx3kObxTgep8ppD45zLvZFMNXOlEuz+Fr5d4QvvdYXsAvzOhW+3aEUFVR1uy
 DG8BIsRjA/VwqkHwTr+1P0VmTAwng2scHcPt3Hrwh3m+LQjUhQ42Wej7i2iTOhzxkWNg=;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jRFlk-009jQv-41
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Apr 2020 13:50:29 +0000
Received: by mail-pl1-f196.google.com with SMTP id n24so943216plp.13
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 22 Apr 2020 06:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r5MLAjwUMHzpyOBbOYuDtWflGns31bS16OANHFpjwJ8=;
 b=fgTey+yYPysoaosTlfluB5bIRY0uHn//1s5f7GoTenq2wfpb/A7uLk8Iiws+NyYbhi
 0XacLwD6QTO2RwtKzl6aN2iNLcVZYrdXjv8M9/5ev31lC0iSS113gxqkDlgqB+wMwFeT
 jR8vsdy01cBg7pS2YDFH4q0HRFErpHLGsSL8v31YMEo5gkQHxQSOiAsOdef2vXY2kEFE
 889SpZQC8P0NVVzPOTG8C+frqYzEeVYvjloma2p9W9fN+kd4rxyfl9Fd9eEkUNxrswA3
 2Wvg5YrK/5nDOHVQydfQUybxv0PCOoJ/BBwqh0kC/wjBmGAStkmwXbyUgRLpZ6LsCZUm
 4SpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r5MLAjwUMHzpyOBbOYuDtWflGns31bS16OANHFpjwJ8=;
 b=jK3i1d6zzpY6yF5caAL2WumNDKXM8ZY47Y8l2GhaivhBc+5kWXmPdTfv8ovj7WiC6D
 RseVuUpRGrNAdMhpUK3eAe5QxRql7egsxdftnacvyVUObZLCO8prS2tu/+tYgEMt1DtG
 W7EyXTQguSTIqKi6XzsMeba5gX0AnNe68G1qadxJuBJ9pc+SzNLMXixshi4lgo1TXzsP
 0sB2lhWUG6VB5QvbyIyUKqB7fQc1fFN9poYx7DXox5oX/EPIK8pJuqlJLpzQxBWomRIM
 pt541+9DNymfN7tyfv1Asg86emzJZRIXeHyjFJdeIRDpqL9U6BwkJKOp53JGjcRbiiPV
 dnLg==
X-Gm-Message-State: AGi0Pub1V0pLtiHGIrpEGHBvLLzOIfLmDSut/pm6+Cmh7x3Lp5uFrHeP
 4/ksIbyvKYB+ypSfr4wPrEed2Vti5KBxOSkNTFI=
X-Google-Smtp-Source: APiQypL9ddSXj7lwQj0CDL3++9JDcqjY7PsV7+jcCWxUvmQmAA5G6O7YSySCnSwWxZvkFgRAYOY94NLa6IbFLj00QgQ=
X-Received: by 2002:a17:90a:2401:: with SMTP id
 h1mr12281685pje.1.1587563422323; 
 Wed, 22 Apr 2020 06:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200417201426.24033-1-larsh@apache.org>
In-Reply-To: <20200417201426.24033-1-larsh@apache.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 22 Apr 2020 16:50:15 +0300
Message-ID: <CAHp75VexAMt3yM+p7HeXdyO51BfB5FOuoEjq9xTUi+tR-jj4JA@mail.gmail.com>
To: Lars <larsh@apache.org>, Kevin Slagle <kjslag@gmail.com>, 
 =?UTF-8?Q?Sebastian_D=C3=B6rner?= <bastidoerner@gmail.com>, 
 Dario Messina <nanodario@gmail.com>, Stefan Assmann <sassmann@kpanic.de>, 
 Alexander Kappner <agk@godking.net>, Marc Burkhardt <marc@osknowledge.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jRFlk-009jQv-41
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

+Cc: people who lately involved in 2nd fan discussions here and there

Lars, also one question regarding the code below.

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
> (In the first version my mail client botched the white-spacing - my apologies, this is my first Kernel patch. Used git send-email and gmail this time.)
>
> Signed-off-by: Lars <larsh@apache.org>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 33 +++++++++++++++++++++++-----
>  1 file changed, 27 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 8eaadbaf8ffa..cbc0e85d89d2 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8324,11 +8324,20 @@ static int fan_set_level(int level)
>
>         switch (fan_control_access_mode) {
>         case TPACPI_FAN_WR_ACPI_SFAN:
> -               if (level >= 0 && level <= 7) {
> -                       if (!acpi_evalf(sfan_handle, NULL, NULL, "vd", level))
> -                               return -EIO;
> -               } else
> +               if (((level < 0) || (level > 7)))
>                         return -EINVAL;
> +
> +               if (tp_features.second_fan) {
> +                       if (!fan_select_fan2() ||
> +                           !acpi_evalf(sfan_handle, NULL, NULL, "vd", level)) {
> +                               fan_select_fan1();
> +                               pr_warn("Couldn't set 2nd fan level, disabling support\n");
> +                               tp_features.second_fan = 0;
> +                       }
> +                       fan_select_fan1();
> +               }
> +               if (!acpi_evalf(sfan_handle, NULL, NULL, "vd", level))
> +                       return -EIO;
>                 break;
>
>         case TPACPI_FAN_WR_ACPI_FANS:
> @@ -8345,6 +8354,16 @@ static int fan_set_level(int level)
>                 else if (level & TP_EC_FAN_AUTO)
>                         level |= 4;     /* safety min speed 4 */
>
> +               if (tp_features.second_fan) {
> +                       if (!fan_select_fan2() ||
> +                           !acpi_ec_write(fan_status_offset, level)) {

> +                               fan_select_fan1();

(1)

> +                               pr_warn("Couldn't set 2nd fan level, disabling support\n");
> +                               tp_features.second_fan = 0;
> +                       }

> +                       fan_select_fan1();

(2)

I'm not sure I got a logic behind this. Why do you need to call it twice?

> +
> +               }
>                 if (!acpi_ec_write(fan_status_offset, level))
>                         return -EIO;
>                 else
> @@ -8771,6 +8790,9 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>         TPACPI_QEC_IBM('7', '0', TPACPI_FAN_Q1),
>         TPACPI_QEC_LNV('7', 'M', TPACPI_FAN_2FAN),
>         TPACPI_Q_LNV('N', '1', TPACPI_FAN_2FAN),
> +       TPACPI_Q_LNV3('N', '2', 'C', TPACPI_FAN_2FAN),  /* P52 / P72 */
> +       TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2FAN),  /* X1 Extreme (1st gen) */
> +       TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2FAN),  /* X1 Extreme (2nd gen) */
>  };
>
>  static int __init fan_init(struct ibm_init_struct *iibm)
> @@ -8812,8 +8834,7 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>                                 fan_quirk1_setup();
>                         if (quirks & TPACPI_FAN_2FAN) {
>                                 tp_features.second_fan = 1;
> -                               dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_FAN,
> -                                       "secondary fan support enabled\n");
> +                               pr_info("secondary fan support enabled\n");
>                         }
>                 } else {
>                         pr_err("ThinkPad ACPI EC access misbehaving, fan status and control unavailable\n");
> --
> 2.25.2
>
--
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
