Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 505931B7160
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 24 Apr 2020 12:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jRv7Z-000425-Ln; Fri, 24 Apr 2020 09:59:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jRv7Y-00041x-JZ
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 24 Apr 2020 09:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HhH1pcgnoBgpP2EEG5vM3hm8Uw4CbJfjI0kvdOw3oUI=; b=RAzOtc3x/LtZzJjHI3d8M8pmza
 4Uuuhl5fLooLTuUFM7HwNJVCaDB36++7mTazIBSuNMOHWZC99bIuXQJPjTd9qjkblpOOkl6evqMiO
 x78pgfY9xAVq29gMOQQxTVsZPCde6NIEAeCzWl2mkeFEb5ZsGF1JxwPVCZ8/OVeLb3Yo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HhH1pcgnoBgpP2EEG5vM3hm8Uw4CbJfjI0kvdOw3oUI=; b=m2klR1Y2J7zRMwUlNDW7mccPfr
 iO7nzWsNNb9beil43uqn3xNeszT81i5LYf1lXKSJ0Ix6Aos7ZbFhmgYd1CPff/6xJgnoycb0Clp35
 +xYOvZPKYzqa1wwwZGAEOW9VcHQhI0cRR/Rp7XES5TN1rtgdIgIxQ81JpZXMtyXlUgr4=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jRv7W-00Cdq6-WD
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 24 Apr 2020 09:59:44 +0000
Received: by mail-pf1-f193.google.com with SMTP id d184so4573370pfd.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 24 Apr 2020 02:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HhH1pcgnoBgpP2EEG5vM3hm8Uw4CbJfjI0kvdOw3oUI=;
 b=mZlDM/sOp2/PNqWIeXqtQCj5hrJ/0l1EVIWEH99CfyU+JiaQVls9OfT+qIqJikk7GC
 GXqz1WE0Cl0N4DCvupOxUtqPGPvMn2xDoQcBsZSo81fqLglOmeZeuJRq2t27Ox1ZTdUr
 cEQvixtZ8bay4JbRDpvisz3Di1XXPtx4GffnVGs8YI2t3A0EY3w9dkE3kJLymp4qpqrb
 3WlMAWpqiq4MZ2oNpsqAe6LqPYJglHQ2/3L5SjVrr7mDAOw/yN4/7o4riOOhOmNP63LQ
 7ZMyLm+bTrfAOC3+3u1gVE3GnsQaI5RAUuNn8J2An2h/I9kZoBXhxKWJJnIQzXjbd3FB
 fkPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HhH1pcgnoBgpP2EEG5vM3hm8Uw4CbJfjI0kvdOw3oUI=;
 b=eAiGKzPUBKNfDq7mzh29sBIg6ZUUcmlrRkC0RUxrX01SWP99ikjYrArhoIoVSk5ve8
 rIoUfwGazZr9pCHgSsVh7c4/WhvhPAejM8eGxn5aoQK4vwBAyoHkG2Rut2KpOWYGQIwK
 1yvdS8Z28W9mEMOI7Tl/0/Kl/7r9ypEEP/uxaY/dfFlM91dBLQFI3J9cb7GiyZMdNUPS
 +VYVGQzxLI5JT025cG6reqRFWPPZ6t8qb/hfM3w+Zl0yhksJ5DxTVdMhMYIRrmy6Mw0G
 EgmbPmtgAxOurv4QlG+zYQOrW3cFyHH5GbVfDhzcteFfEimQyQ9ymO87UH7d7AGjDTo+
 NK7Q==
X-Gm-Message-State: AGi0Pua3dXmx6IU2jrXvJP5tMnwrhoSHiUKTmNRBDffzn1FRspdk3oVW
 UraKop5zRoF5trsNELQAwzPx9zUZNtXt9PWLUr9c4RA1A9k=
X-Google-Smtp-Source: APiQypJ9rGr3BCmHvMoKXeWORpGrn5QcR8S7jh5VsG/SrTKaQlS+EszMGdUfmkzDbC3YvFuyD8Ym0XJG6VHxGeM+LKI=
X-Received: by 2002:a63:1d4:: with SMTP id 203mr8120019pgb.74.1587722377158;
 Fri, 24 Apr 2020 02:59:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200423165457.54388-1-larsh@apache.org>
 <20200423215709.72993-1-larsh@apache.org>
In-Reply-To: <20200423215709.72993-1-larsh@apache.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 24 Apr 2020 12:59:29 +0300
Message-ID: <CAHp75VdZtrGr597WK6gCrpGDKct12xSScJKNMV8LNmmgBYNe_w@mail.gmail.com>
To: Lars <larsh@apache.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jRv7W-00Cdq6-WD
Subject: Re: [ibm-acpi-devel] [PATCH v4] thinkpad_acpi: Add support for dual
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
Cc: Alexander Kappner <agk@godking.net>, Kevin Slagle <kjslag@gmail.com>,
 =?UTF-8?Q?Sebastian_D=C3=B6rner?= <bastidoerner@gmail.com>,
 Dario Messina <nanodario@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Stefan Assmann <sassmann@kpanic.de>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 arc@osknowledge.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Apr 24, 2020 at 12:57 AM Lars <larsh@apache.org> wrote:
>
> This adds dual fan control for the following models:
> P50, P51, P52, P70, P71, P72, P1 gen1, X1E gen1, P2 gen2, and X1E gen2.
>
> Both fans are controlled together as if they were a single fan.
>
> Tested on an X1 Extreme Gen1, an X1 Extreme Gen2, and a P50.
>
> The patch is defensive, it adds only specific supported machines, and falls
> back to the old behavior if both fans cannot be controlled.
>
> Background:
> I tested the BIOS default behavior on my X1E gen2 and both fans are always
> changed together. So rather than adding controls for each fan, this controls
> both fans together as the BIOS would do.
>
> This was inspired by a discussion on dual fan support for the thinkfan tool
> [1].
> All BIOS ids are taken from there. The X1E gen2 id is verified on my machine.
>
> Thanks to GitHub users voidworker and civic9 for the earlier patches and BIOS
> ids, and to users peter-stoll and sassman for testing the patch on their
> machines.
>

Pushed to my review and testing queue, thank you!

> [1]: https://github.com/vmatare/thinkfan/issues/58
>
> Signed-off-by: Lars <larsh@apache.org>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 43 ++++++++++++++++++++++++----
>  1 file changed, 37 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index da794dcfdd92..9e0f65e567be 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -318,6 +318,7 @@ static struct {
>         u32 uwb:1;
>         u32 fan_ctrl_status_undef:1;
>         u32 second_fan:1;
> +       u32 second_fan_ctl:1;
>         u32 beep_needs_two_args:1;
>         u32 mixer_no_level_control:1;
>         u32 battery_force_primary:1;
> @@ -8325,11 +8326,19 @@ static int fan_set_level(int level)
>
>         switch (fan_control_access_mode) {
>         case TPACPI_FAN_WR_ACPI_SFAN:
> -               if (level >= 0 && level <= 7) {
> -                       if (!acpi_evalf(sfan_handle, NULL, NULL, "vd", level))
> -                               return -EIO;
> -               } else
> +               if ((level < 0) || (level > 7))
>                         return -EINVAL;
> +
> +               if (tp_features.second_fan_ctl) {
> +                       if (!fan_select_fan2() ||
> +                           !acpi_evalf(sfan_handle, NULL, NULL, "vd", level)) {
> +                               pr_warn("Couldn't set 2nd fan level, disabling support\n");
> +                               tp_features.second_fan_ctl = 0;
> +                       }
> +                       fan_select_fan1();
> +               }
> +               if (!acpi_evalf(sfan_handle, NULL, NULL, "vd", level))
> +                       return -EIO;
>                 break;
>
>         case TPACPI_FAN_WR_ACPI_FANS:
> @@ -8346,6 +8355,15 @@ static int fan_set_level(int level)
>                 else if (level & TP_EC_FAN_AUTO)
>                         level |= 4;     /* safety min speed 4 */
>
> +               if (tp_features.second_fan_ctl) {
> +                       if (!fan_select_fan2() ||
> +                           !acpi_ec_write(fan_status_offset, level)) {
> +                               pr_warn("Couldn't set 2nd fan level, disabling support\n");
> +                               tp_features.second_fan_ctl = 0;
> +                       }
> +                       fan_select_fan1();
> +
> +               }
>                 if (!acpi_ec_write(fan_status_offset, level))
>                         return -EIO;
>                 else
> @@ -8764,6 +8782,7 @@ static const struct attribute_group fan_attr_group = {
>
>  #define TPACPI_FAN_Q1  0x0001          /* Unitialized HFSP */
>  #define TPACPI_FAN_2FAN        0x0002          /* EC 0x31 bit 0 selects fan2 */
> +#define TPACPI_FAN_2CTL        0x0004          /* selects fan2 control */
>
>  static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>         TPACPI_QEC_IBM('1', 'Y', TPACPI_FAN_Q1),
> @@ -8772,6 +8791,13 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>         TPACPI_QEC_IBM('7', '0', TPACPI_FAN_Q1),
>         TPACPI_QEC_LNV('7', 'M', TPACPI_FAN_2FAN),
>         TPACPI_Q_LNV('N', '1', TPACPI_FAN_2FAN),
> +       TPACPI_Q_LNV3('N', '1', 'D', TPACPI_FAN_2CTL),  /* P70 */
> +       TPACPI_Q_LNV3('N', '1', 'E', TPACPI_FAN_2CTL),  /* P50 */
> +       TPACPI_Q_LNV3('N', '1', 'T', TPACPI_FAN_2CTL),  /* P71 */
> +       TPACPI_Q_LNV3('N', '1', 'U', TPACPI_FAN_2CTL),  /* P51 */
> +       TPACPI_Q_LNV3('N', '2', 'C', TPACPI_FAN_2CTL),  /* P52 / P72 */
> +       TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),  /* P1 / X1 Extreme (1st gen) */
> +       TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),  /* P1 / X1 Extreme (2nd gen) */
>  };
>
>  static int __init fan_init(struct ibm_init_struct *iibm)
> @@ -8789,6 +8815,7 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>         fan_watchdog_maxinterval = 0;
>         tp_features.fan_ctrl_status_undef = 0;
>         tp_features.second_fan = 0;
> +       tp_features.second_fan_ctl = 0;
>         fan_control_desired_level = 7;
>
>         if (tpacpi_is_ibm()) {
> @@ -8813,8 +8840,12 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>                                 fan_quirk1_setup();
>                         if (quirks & TPACPI_FAN_2FAN) {
>                                 tp_features.second_fan = 1;
> -                               dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_FAN,
> -                                       "secondary fan support enabled\n");
> +                               pr_info("secondary fan support enabled\n");
> +                       }
> +                       if (quirks & TPACPI_FAN_2CTL) {
> +                               tp_features.second_fan = 1;
> +                               tp_features.second_fan_ctl = 1;
> +                               pr_info("secondary fan control enabled\n");
>                         }
>                 } else {
>                         pr_err("ThinkPad ACPI EC access misbehaving, fan status and control unavailable\n");
> --
> 2.25.3
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
