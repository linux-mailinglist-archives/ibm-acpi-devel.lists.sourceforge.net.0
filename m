Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAA31ADE58
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Apr 2020 15:31:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jPR56-0003PD-Kr; Fri, 17 Apr 2020 13:30:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jPR55-0003P7-Qz
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Apr 2020 13:30:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CfxDvscs6inoxPlLGG6JGorGBBJuPb+9bbRKa/YGS8E=; b=mtfFawD0rRwo8QNtWPjhi0Qujz
 A8GggVLepS9ZiPeVKCkpsMBK1zrTmENIgg76Ahjvl/1D7PCVWoNVnSXfcdOmPiRUp8kUeYyhcRjZy
 hq3s77XnCyOY4+QV0h7s6UILfMaa0HSn6HPWIRz7EAAcpAq5Z6lziT3fDQHkyCcxxbzY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CfxDvscs6inoxPlLGG6JGorGBBJuPb+9bbRKa/YGS8E=; b=Ps9clJpRSflFGLqEoKKQsy7UVn
 lMLgICXWbohPr3vfaVtDyf3YgMwbZUgFt+dsW5FwODTPCZBADVYCZvjb+O55JO3CrZC+lQTuxGw68
 /52tw4mHOt8S0qZoZDUnAgi3WyVH3Ohd3KzmpKP4hujS14l4Qou7qs9I5/1SMknxPU1o=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jPR51-005JUu-1E
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Apr 2020 13:30:55 +0000
Received: by mail-pj1-f66.google.com with SMTP id o1so1084706pjs.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 17 Apr 2020 06:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CfxDvscs6inoxPlLGG6JGorGBBJuPb+9bbRKa/YGS8E=;
 b=OLK9yTSNlPOHsw768/DpY9TC/fUCbjBH8geh5booZZkqZ+N2PDhUKVozKmmHQ/mQUS
 VGEEuk8SkvjEVKc0O/bWDd1pWX4DjN6As6ngVBL/ZkaprkX4O0ZOF6hIKnu7kNcftPGp
 tplmmw/9/6ugjDnmk4gl5aJPrlvkWPmBvvmRjy55Nhtj6yYiwtRli29dY7MR7ljd8YB2
 IS2Nvj07A1BdwAdUuthbOatF3joQcXFfA6sCXV2xPbbh3FKY796VJqqgSE5RwgmTdb0R
 1v1xaEHtzB4j0/qLNBlKJn0Zin9/hHSRoCMvjuPjbvh5N+R7PAIymFqf126tJodFD5dp
 LHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CfxDvscs6inoxPlLGG6JGorGBBJuPb+9bbRKa/YGS8E=;
 b=hbXhmhgUO5ZaD7qOIDyyRAS2hE3aml+KORcGijRXYQf1EkzQqz7+QFxs4VqJR+40pr
 O7tlP/GBirLsFRDMidd6EV6vFN0z0fLvxY6bmI7t4eWBEJ+kRvMELleidAFK6aahWeN6
 y8QnYly1wsoKeX4NRX5PGcF67vxIrBQd7NLYxRPoAFPMTs1FBqaHcQGzzh3uPpwfLS52
 F8cxdcSXpbCJuJ8D4esJgNhLz9sHhUMGf+zEeNDMm1AjiqBHCE4iJ+zIGvoXALEQke6V
 0UjJWuHoj+oE0rbl1v6AYIh9/odUxjLb7RhQKgzJ1RQAK8mfRI/PPFnanZQN8Z3bP+5l
 4C1g==
X-Gm-Message-State: AGi0PubcHgufASU6LujrGYRXtZRY+Zug/d9saJZiMuUjJFNxSfRXqU4S
 LI2tCYOXIHY8lYnq6+yFDUer/wXeo8FzkyLpdzI=
X-Google-Smtp-Source: APiQypJqlcwl7MBcyJj1Hz16wVf1+XgGfkDSK7YQdgtO3J1V7zD8vOfNyTLdyVg6PweE4ajWPWiPdSQoeEOfM179hv4=
X-Received: by 2002:a17:90a:364c:: with SMTP id
 s70mr4383743pjb.143.1587130245270; 
 Fri, 17 Apr 2020 06:30:45 -0700 (PDT)
MIME-Version: 1.0
References: <970969929.574750.1586116726988.ref@mail.yahoo.com>
 <970969929.574750.1586116726988@mail.yahoo.com>
In-Reply-To: <970969929.574750.1586116726988@mail.yahoo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 17 Apr 2020 16:30:38 +0300
Message-ID: <CAHp75VdUtjr0kJDt0Wz05W73ZiN6nedeYdaw4RL34rbvpA_2+A@mail.gmail.com>
To: "larsh@apache.org" <larsh@apache.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jPR51-005JUu-1E
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: Add support for dual
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
Cc: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 "ibm-acpi@hmh.eng.br" <ibm-acpi@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sun, Apr 5, 2020 at 11:00 PM larsh@apache.org <larsh@apache.org> wrote:
>
> This patch allows controlling multiple fans as if they were a single fan.
>
> This adds P52, P72, X1E, and X1E gen to dual fan quirks. Both fans are controlled together.
>
> Tested on an X1 Extreme Gen2.
>
> The patch is defensive, it adds only specific supported machines, and falls back to the old behavior if both fans cannot be controlled.
> It does attempt single fan control for all previously white-listed Thinkpads.
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

It doesn't apply :-(
Please, fix and resend.

> Signed-off-by: Lars Hofhansl <larsh@apache.org>
>
> ---
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index da794dcfdd92..8d46b4c2bde8 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8325,11 +8325,20 @@ static int fan_set_level(int level)
>
>      switch (fan_control_access_mode) {
>      case TPACPI_FAN_WR_ACPI_SFAN:
> -        if (level >= 0 && level <= 7) {
> -            if (!acpi_evalf(sfan_handle, NULL, NULL, "vd", level))
> -                return -EIO;
> -        } else
> +        if (((level < 0) || (level > 7)))
>              return -EINVAL;
> +
> +        if (tp_features.second_fan) {
> +            if (!fan_select_fan2() ||
> +                !acpi_evalf(sfan_handle, NULL, NULL, "vd", level)) {
> +                fan_select_fan1();
> +                pr_warn("Couldn't set 2nd fan level, disabling support\n");
> +                tp_features.second_fan = 0;
> +            }
> +            fan_select_fan1();
> +        }
> +        if (!acpi_evalf(sfan_handle, NULL, NULL, "vd", level))
> +            return -EIO;
>          break;
>
>      case TPACPI_FAN_WR_ACPI_FANS:
> @@ -8346,6 +8355,16 @@ static int fan_set_level(int level)
>          else if (level & TP_EC_FAN_AUTO)
>              level |= 4;    /* safety min speed 4 */
>
> +        if (tp_features.second_fan) {
> +            if (!fan_select_fan2() ||
> +                !acpi_ec_write(fan_status_offset, level)) {
> +                fan_select_fan1();
> +                pr_warn("Couldn't set 2nd fan level, disabling support\n");
> +                tp_features.second_fan = 0;
> +            }
> +            fan_select_fan1();
> +
> +        }
>          if (!acpi_ec_write(fan_status_offset, level))
>              return -EIO;
>          else
> @@ -8772,6 +8791,9 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>      TPACPI_QEC_IBM('7', '0', TPACPI_FAN_Q1),
>      TPACPI_QEC_LNV('7', 'M', TPACPI_FAN_2FAN),
>      TPACPI_Q_LNV('N', '1', TPACPI_FAN_2FAN),
> +    TPACPI_Q_LNV3('N', '2', 'C', TPACPI_FAN_2FAN),    /* P52 / P72 */
> +    TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2FAN),    /* X1 Extreme (1st gen) */
> +    TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2FAN),    /* X1 Extreme (2nd gen) */
>  };
>
>  static int __init fan_init(struct ibm_init_struct *iibm)
> @@ -8813,8 +8835,7 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>                  fan_quirk1_setup();
>              if (quirks & TPACPI_FAN_2FAN) {
>                  tp_features.second_fan = 1;
> -                dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_FAN,
> -                    "secondary fan support enabled\n");
> +                pr_info("secondary fan support enabled\n");
>              }
>          } else {
>              pr_err("ThinkPad ACPI EC access misbehaving, fan status and control unavailable\n");



-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
