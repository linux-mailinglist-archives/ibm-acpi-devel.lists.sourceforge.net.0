Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC355E7AD
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  3 Jul 2019 17:21:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hih42-0007hq-5K; Wed, 03 Jul 2019 15:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1hih3z-0007hT-Td; Wed, 03 Jul 2019 15:20:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=npfUX5g4NBmsetcgst/lwNx2V3HsW1aIbrFYjh+u9+o=; b=kT8xOD4VJHznSbaaTljxdrvXMH
 E5/B/BfUhKo4OO4qSJvjvOPmzHvdMTdjJ91pi5l8hh03UTc6g3qeX5SEs7YgIL2wnApn6CoJoj49U
 3VRPFhT571w/mVX6EiRRd6nUiLdFAz3jL+9ERiTL286JEyBYZCYCdT82EpGvFc7yI4sU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=npfUX5g4NBmsetcgst/lwNx2V3HsW1aIbrFYjh+u9+o=; b=Bh3fvCPFvSS5hzF5CuUDX39qoy
 owCqKrKsMXKt8gLXBICL83LFYeIpB891L01h9722CXJeCgF7n/00rNdLtd7uk8w30T67YmTnKlRXQ
 +xwKtYPDFteHLLJLqJ1q7eNMBx6mmE8mfTlXeUVfk6UT6z0S0EbnwLVeniwJF5QAblN0=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hih46-006RIk-TM; Wed, 03 Jul 2019 15:21:00 +0000
Received: by mail-pl1-f195.google.com with SMTP id b7so1430549pls.6;
 Wed, 03 Jul 2019 08:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=npfUX5g4NBmsetcgst/lwNx2V3HsW1aIbrFYjh+u9+o=;
 b=alSKkrNqbdr9OhZoF+JB968jD/7tRgD/xcQov7+FUTen/Ddk0DLlixffd5mSiU7rdX
 wuZ1kN/mSj+LVjPC/UF22/otJMVPWXLvAYXFUgk2PhSGjbASrR9TpLo7pZMMmedn5GQi
 PisnW3Kx/HJRdyDQhrd3cmxtGv45R04+wlNamvh77uuM/oK01fKHr+BtMgzGxZ3nB8xs
 nDgKEEJ5nXkjrbvB8JZ7ftAKz7ZiHueNRIp+ZcU5ULyfcAUlCLK3/clhlcs+1C4YfrL9
 hjAb/hOmmUb3PLtOwtPUo6vgn5fxrrsJG+hNcyi/oFx7HyKEeHvyvTjp09q7Kv4r+kiB
 wi0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=npfUX5g4NBmsetcgst/lwNx2V3HsW1aIbrFYjh+u9+o=;
 b=BTMuHxGhh6fY5ZDmv5+ZLBLY28g3riKGYtpRjRTaliTlsYtj73pXFjUM4Ud/DJWpLD
 px0IZ5aIPtDH8JrPI/LHIchETTz2EbUyCXt1PtN8ke8m+fMEkuAMBu/2Gu2sCE+px9rM
 mSVcX6k6cLvcK1PEQTBUOtGgoKQJ5Oa+XmaSTUXd5U0k8TOfju9TuLWCX8psZfo0uvfS
 xr+Xw6oMz44sqA9D94Y758xqUFaHT54M8gDbSXMUuBsEG2AdWagE+ysLOZJ9Fr0J/eVp
 ZS+3pot8LKOft95R16HRGG1/RTtwOf8hV6yMMGmyY71rGSakYzARBTxLhqhNF+6NAIaj
 fZrQ==
X-Gm-Message-State: APjAAAX+3VZOARm7iVAWbSlGiF9s9Ey9LpT7yuCkqid535t6n5Kw7AOg
 CPdENLPXef7qE9jU1oEqKQEzG0pkvv+s7tYKjicKPc1n0bs=
X-Google-Smtp-Source: APXvYqw9zwX67ErTPi0PgCyAJYOtm7UgoOXqo7N4NhEw1YJtstI0VpEEPjHenFDEyA+XPXs0Sn3xcK40ybUv5JOs1Ks=
X-Received: by 2002:a17:902:694a:: with SMTP id
 k10mr42645894plt.255.1562167253133; 
 Wed, 03 Jul 2019 08:20:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190703131908.26138-1-huangfq.daxian@gmail.com>
In-Reply-To: <20190703131908.26138-1-huangfq.daxian@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 3 Jul 2019 18:20:41 +0300
Message-ID: <CAHp75Vef=H492wUnGWGSu7wg5qTb0Q7Y1VrcM60WK=8ejr=bcQ@mail.gmail.com>
To: Fuqian Huang <huangfq.daxian@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hih46-006RIk-TM
Subject: Re: [ibm-acpi-devel] [PATCH 19/30] platform/x86: Use kmemdup rather
 than duplicating its implementation
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
Cc: acpi4asus-user <acpi4asus-user@lists.sourceforge.net>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Corentin Chary <corentin.chary@gmail.com>, Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jul 3, 2019 at 4:19 PM Fuqian Huang <huangfq.daxian@gmail.com> wrote:
>
> kmemdup is introduced to duplicate a region of memory in a neat way.
> Rather than kmalloc/kzalloc + memset, which the programmer needs to
> write the size twice (sometimes lead to mistakes), kmemdup improves
> readability, leads to smaller code and also reduce the chances of mistakes.
> Suggestion to use kmemdup rather than using kmalloc/kzalloc + memset.
>

Please, split on driver basis and use correct prefix.

> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
> ---
>  drivers/platform/x86/asus-wmi.c      |  3 +--
>  drivers/platform/x86/thinkpad_acpi.c | 17 +++++++----------
>  2 files changed, 8 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
> index 9b18a184e0aa..472b317ad814 100644
> --- a/drivers/platform/x86/asus-wmi.c
> +++ b/drivers/platform/x86/asus-wmi.c
> @@ -260,12 +260,11 @@ static int asus_wmi_evaluate_method_agfn(const struct acpi_buffer args)
>          * Copy to dma capable address otherwise memory corruption occurs as
>          * bios has to be able to access it.
>          */
> -       input.pointer = kzalloc(args.length, GFP_DMA | GFP_KERNEL);
> +       input.pointer = kmemdup(args.pointer, args.length, GFP_DMA | GFP_KERNEL);
>         input.length = args.length;
>         if (!input.pointer)
>                 return -ENOMEM;
>         phys_addr = virt_to_phys(input.pointer);
> -       memcpy(input.pointer, args.pointer, args.length);
>
>         status = asus_wmi_evaluate_method(ASUS_WMI_METHODID_AGFN,
>                                         phys_addr, 0, &retval);
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 7bde4640ef34..d379bdf98a0f 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -3647,22 +3647,19 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>                 goto err_exit;
>
>         /* Set up key map */
> -       hotkey_keycode_map = kmalloc(TPACPI_HOTKEY_MAP_SIZE,
> -                                       GFP_KERNEL);
> -       if (!hotkey_keycode_map) {
> -               pr_err("failed to allocate memory for key map\n");
> -               res = -ENOMEM;
> -               goto err_exit;
> -       }
> -
>         keymap_id = tpacpi_check_quirks(tpacpi_keymap_qtable,
>                                         ARRAY_SIZE(tpacpi_keymap_qtable));
>         BUG_ON(keymap_id >= ARRAY_SIZE(tpacpi_keymaps));
>         dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
>                    "using keymap number %lu\n", keymap_id);
>
> -       memcpy(hotkey_keycode_map, &tpacpi_keymaps[keymap_id],
> -               TPACPI_HOTKEY_MAP_SIZE);
> +       hotkey_keycode_map = kmemdup(&tpacpi_keymaps[keymap_id],
> +                       TPACPI_HOTKEY_MAP_SIZE, GFP_KERNEL);
> +       if (!hotkey_keycode_map) {
> +               pr_err("failed to allocate memory for key map\n");
> +               res = -ENOMEM;
> +               goto err_exit;
> +       }
>
>         input_set_capability(tpacpi_inputdev, EV_MSC, MSC_SCAN);
>         tpacpi_inputdev->keycodesize = TPACPI_HOTKEY_MAP_TYPESIZE;
> --
> 2.11.0
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
