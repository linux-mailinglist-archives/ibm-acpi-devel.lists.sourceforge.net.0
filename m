Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC01C75602
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 25 Jul 2019 19:45:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hqho1-0007Lu-My; Thu, 25 Jul 2019 17:45:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1hqho0-0007Lm-E9
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jul 2019 17:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z2hXS4aIp+askbelNzmRZr64ww76nj816fhIYHKfid0=; b=IL09miLMl+lLzhO3fv40eiRZ2z
 GBdld/dLrSGhYPjegi/BBieZQokXrdDYcLNsTAaUQO1RNQHIjLbr310Vb/IMiu9qM3gcWT0d292fI
 c2XaiF3Few4Q0N/Ps4KYJ7I40q7re8VS3BF7v87UFAvSlcSOxREflAk82COSE7N5+JaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z2hXS4aIp+askbelNzmRZr64ww76nj816fhIYHKfid0=; b=R9KW6PsFlANjoEnvkpmOAdrYP6
 fnaXobN5xS7X4bHjAdrkcJYVcNK7Pxn155PgBVmToFWfrb2hmmcJFVqmRT2qS4kXTmnODZaQpuVST
 o719IO4tmtI6rVV5NawYnBsreFkrrfMSkdvz/80Bd4aAlwgFZ5SF4RT8yPgrKNVJjEec=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqhny-00GM2H-Sk
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jul 2019 17:45:28 +0000
Received: by mail-pf1-f195.google.com with SMTP id f17so19124655pfn.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 25 Jul 2019 10:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z2hXS4aIp+askbelNzmRZr64ww76nj816fhIYHKfid0=;
 b=TKxARAgSY0MaF5npCa8QyKHGHrSB8zoud/0I97Dd9q4WqJlXU27cAi821Wf0SFpL2k
 b8n5Mpmkz7Ez0Ec8F9KFn0hPS/1288nYa9oPXF2gR03K5HklKRUWTGzrEXd0ZSlHpRoX
 WfZV40Y5/y/DnOhngkvzYUbjlVUkIS2QnIMDtYwOAuyYfX4eHYvjFeDpf/ewZF0fo1Rf
 YzZwRKUd4Ks2mekPOEpztfyve2WooCE4+8UesCs0+lHfCaOvzo++Iwt1w76barf2nicW
 otmWPWmr6SFu2CoHutra6ApCplxaILq2APmK5XFPb9R2vNzSjFG2CsbIVKscYYdOROPW
 9UtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z2hXS4aIp+askbelNzmRZr64ww76nj816fhIYHKfid0=;
 b=j0c3h6rVxYsZLGnfzwOekmsTvhkdB6qv5hyKDxAXcNLNCTpXYJhyCbRUtYm4kBuzNV
 OKIGnydB4CMHg4xUwDRJyXlqBUkOcZrlJqla/I72sbkvJ7Y9qCw4uvElLCwaqpL49ROq
 cgqdorL0X5mxlb1nGSOqE2JMaOtTYzd4wjsasnSydUoM1AuD+6wN+7MhdpWUYXFwnK1w
 g086ZeTFZJwS6EC+oLsQl98YYBKJtgfRVQdYrotv9wwR22jX6JEBRujB+HpoVKyL2Y2l
 CLricjockDLkC5G3zT+6RzrOvDcKLk3WAJs40TfcEy30wo+zjkUanZeXE8qchf4FIYlN
 AkVQ==
X-Gm-Message-State: APjAAAV1KNG9Y1rrMIkHY5YbDMe1Fe1c/d7qSYt+cq1zTYD4uvkrBg6l
 QWyqypOHUHF0eJ4CY+g0C6vwVmoMzW5y5726JR8=
X-Google-Smtp-Source: APXvYqwVBom4fhXMf/vAR9/ZNTopQUXBsvevI47d8tMUhvs1nHabju5viI+imt3t/vctNEMVQL5sgCn0vMFXLGQ2WR8=
X-Received: by 2002:a62:16:: with SMTP id 22mr18486351pfa.151.1564076721123;
 Thu, 25 Jul 2019 10:45:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAHp75VdzPvs0x_gT4HAMFj8KRYcQgk+ZXgC4yCPA25mS6qFFiQ@mail.gmail.com>
 <20190710153221.379-1-alex@alexanderweb.de>
In-Reply-To: <20190710153221.379-1-alex@alexanderweb.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 25 Jul 2019 20:45:09 +0300
Message-ID: <CAHp75VdMZMxGJpmi6wQMa8FJdzpkPq7nA=kFf4pUSrskrTtFeA@mail.gmail.com>
To: Alexander Schremmer <alex@alexanderweb.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alexanderweb.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hqhny-00GM2H-Sk
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: Add Lenovo ThinkPad
 PrivacyGuard.
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
 Platform Driver <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jul 10, 2019 at 6:32 PM Alexander Schremmer
<alex@alexanderweb.de> wrote:
>
> This feature is found optionally in T480s, T490, T490s.
>
> The feature is called lcdshadow and visible via
> /proc/acpi/ibm/lcdshadow.
>
> The ACPI methods \_SB.PCI0.LPCB.EC.HKEY.{GSSS,SSSS,TSSS,CSSS} are
> available in these machines. They get, set, toggle or change the state
> apparently.
>
> The patch was tested on a 5.0 series kernel on a T480s.
>

Thanks for an update!
Unfortunately it doesn't apply since big batch of txt->rst conversion
happened in this cycle. Care to fix and resend?

> Signed-off-by: Alexander Schremmer <alex@alexanderweb.de>
> ---
>  Documentation/laptops/thinkpad-acpi.txt |  22 +++++
>  drivers/platform/x86/thinkpad_acpi.c    | 112 ++++++++++++++++++++++++
>  2 files changed, 134 insertions(+)
>
> diff --git a/Documentation/laptops/thinkpad-acpi.txt b/Documentation/laptops/thinkpad-acpi.txt
> index 6cced88de6da..3fff4b5b6aab 100644
> --- a/Documentation/laptops/thinkpad-acpi.txt
> +++ b/Documentation/laptops/thinkpad-acpi.txt
> @@ -46,6 +46,7 @@ detailed description):
>         - Fan control and monitoring: fan speed, fan enable/disable
>         - WAN enable and disable
>         - UWB enable and disable
> +       - LCD Shadow (PrivacyGuard) enable and disable
>
>  A compatibility table by model and feature is maintained on the web
>  site, http://ibm-acpi.sf.net/. I appreciate any success or failure
> @@ -1341,6 +1342,27 @@ Sysfs notes:
>         Documentation/rfkill.txt for details.
>
>
> +LCD Shadow control
> +------------------
> +
> +procfs: /proc/acpi/ibm/lcdshadow
> +
> +Some newer T480s and T490s ThinkPads provide a feature called
> +PrivacyGuard. By turning this feature on, the usable vertical and
> +horizontal viewing angles of the LCD can be limited (as if some privacy
> +screen was applied manually in front of the display).
> +
> +procfs notes:
> +
> +The available commands are:
> +
> +       echo '0' >/proc/acpi/ibm/lcdshadow
> +       echo '1' >/proc/acpi/ibm/lcdshadow
> +
> +The first command ensures the best viewing angle and the latter one turns
> +on the feature, restricting the viewing angles.
> +
> +
>  EXPERIMENTAL: UWB
>  -----------------
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 71cfaf26efd1..8907b183b940 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -9729,6 +9729,114 @@ static struct ibm_struct battery_driver_data = {
>         .exit = tpacpi_battery_exit,
>  };
>
> +/*************************************************************************
> + * LCD Shadow subdriver, for the Lenovo PrivacyGuard feature
> + */
> +
> +
> +static int lcdshadow_state;
> +
> +static int lcdshadow_on_off(bool state)
> +{
> +       acpi_handle set_shadow_handle;
> +       int output;
> +
> +       if (ACPI_FAILURE(acpi_get_handle(
> +                                       hkey_handle,
> +                                       "SSSS",
> +                                       &set_shadow_handle))) {
> +               pr_warn("Thinkpad ACPI has no %s interface.\n", "SSSS");
> +               return -EIO;
> +       }
> +
> +       if (!acpi_evalf(set_shadow_handle, &output, NULL, "dd", (int)state))
> +               return -EIO;
> +
> +       lcdshadow_state = state;
> +       return 0;
> +}
> +
> +static int lcdshadow_set(bool on)
> +{
> +       if (lcdshadow_state < 0)
> +               return lcdshadow_state;
> +       if (lcdshadow_state == on)
> +               return 0;
> +       return lcdshadow_on_off(on);
> +}
> +
> +static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
> +{
> +       acpi_handle get_shadow_handle;
> +       int output;
> +
> +       if (ACPI_FAILURE(acpi_get_handle(
> +                                       hkey_handle,
> +                                       "GSSS",
> +                                       &get_shadow_handle))) {
> +               lcdshadow_state = -ENODEV;
> +               return 0;
> +       }
> +
> +       if (!acpi_evalf(get_shadow_handle, &output, NULL, "dd", 0)) {
> +               lcdshadow_state = -EIO;
> +               return -EIO;
> +       }
> +       if (!(output & 0x10000)) {
> +               lcdshadow_state = -ENODEV;
> +               return 0;
> +       }
> +       lcdshadow_state = output & 0x1;
> +
> +       return 0;
> +}
> +
> +static void lcdshadow_resume(void)
> +{
> +       if (lcdshadow_state >= 0)
> +               lcdshadow_on_off(lcdshadow_state);
> +}
> +
> +static int lcdshadow_read(struct seq_file *m)
> +{
> +       if (lcdshadow_state < 0) {
> +               seq_puts(m, "status:\t\tnot supported\n");
> +       } else {
> +               seq_printf(m, "status:\t\t%d\n", lcdshadow_state);
> +               seq_puts(m, "commands:\t0, 1\n");
> +       }
> +
> +       return 0;
> +}
> +
> +static int lcdshadow_write(char *buf)
> +{
> +       char *cmd;
> +       int state = -1;
> +
> +       if (lcdshadow_state < 0)
> +               return -ENODEV;
> +
> +       while ((cmd = next_cmd(&buf))) {
> +               if (strlencmp(cmd, "0") == 0)
> +                       state = 0;
> +               else if (strlencmp(cmd, "1") == 0)
> +                       state = 1;
> +       }
> +
> +       if (state == -1)
> +               return -EINVAL;
> +
> +       return lcdshadow_set(state);
> +}
> +
> +static struct ibm_struct lcdshadow_driver_data = {
> +       .name = "lcdshadow",
> +       .resume = lcdshadow_resume,
> +       .read = lcdshadow_read,
> +       .write = lcdshadow_write,
> +};
> +
>  /****************************************************************************
>   ****************************************************************************
>   *
> @@ -10210,6 +10318,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
>                 .init = tpacpi_battery_init,
>                 .data = &battery_driver_data,
>         },
> +       {
> +               .init = tpacpi_lcdshadow_init,
> +               .data = &lcdshadow_driver_data,
> +       },
>  };
>
>  static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
> --
> 2.20.1
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
