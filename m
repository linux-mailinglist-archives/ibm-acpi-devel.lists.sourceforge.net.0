Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F652AC80A
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  7 Sep 2019 19:23:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1i6eQA-0004ir-U8; Sat, 07 Sep 2019 17:22:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1i6eQ9-0004ik-AF
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 07 Sep 2019 17:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8sl6fvlM6HqUKP8nWMYPv1mB4mnKsanphlTfUwQCseQ=; b=gMC8AqOoVt8CK9NMqR8VqudONL
 14sIHxdB93yxCV9TcHx6XZb+vJ+bKZxl0bCutacclVaGY9k+tBFqBXCFmBsGR/4hGSpA5GEJSww9M
 ovUFZ3Z6Sm6h8zFEirUClHN9EW7qysnhkWiQ6MZIEnqgRWsxAB1eVYfPjmGS7IND+OVk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8sl6fvlM6HqUKP8nWMYPv1mB4mnKsanphlTfUwQCseQ=; b=m6/IfL089IgV3IVPqVvdHMO8M/
 YRFjBoAWPkn4kBaN5HUElKgPikgl1U/hVyIsjl1Y2SgEfhMNZeYv5E3d7KMq42wwcgYrvYbm/0Zis
 CaMMwh1qEuxSwL09FzmzMqhwKrU/m1gPbHZ5awbITDzvdfVVs4lzC956975RgqaoVQ/o=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i6eQ5-00DHeU-6r
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 07 Sep 2019 17:22:45 +0000
Received: by mail-pf1-f194.google.com with SMTP id y5so3835727pfo.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 07 Sep 2019 10:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8sl6fvlM6HqUKP8nWMYPv1mB4mnKsanphlTfUwQCseQ=;
 b=lv2aqUxZug8eXElsGkPmhsJf9h7O93z0vQM2m5Jj7Wk4tQYwxaNdqnS0wUKg6ZCsR2
 7QFCRsu0Sz7gJZE9wekCWUbFmjAAuhiwBHuEFVak2YrEykugbaQ8BGuIWBzWdph51D3K
 po0f+5vThIpvSNvHZqaQsa2wFKI0l0TD8fOY5T5bOQrKICoN24RGR6Hz1oCmCMroUndd
 GSQ7LCZ3ALQwzsPajupNGlCoxRhnzFzQOZfnQ4U/la1NA5zpcA4E3Lip/3XBavmiSShz
 OoBvhtBXUcoPTPK4VLpxuJs0M7kIBactYxJopfkmENbST20UmAjE4cQ/MU8ASB6D/RSw
 JmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8sl6fvlM6HqUKP8nWMYPv1mB4mnKsanphlTfUwQCseQ=;
 b=R6F26hEFpyNCyHFRw3Rr1WWKFREk7sy+ozYMYApTXK8hu2okcuMup0xm4m7SDM2uDR
 HtjTA+EMHGnlWYvVeBi4AK3D8ojy81FlPh6W8WTrVD18Em6Q/gouCOxJZWSH81cqrufE
 nJAGE46jn0X8bV+bfIjeBU8W407tc2mrjlfxvhbzSB2oQSjHooLDlmb0gncdM1cIOe1M
 Ih3N/NtV0RGRUa8s8c99maMyWlFDuo7vve8rVYUywlbhN+8zFYkfDrxtziQTfZ160e3x
 IhZ1K0RQ1GybWt24Y5I2d0YF6q+Gf8zYmnxC87/GcG3CPT9KU+knz32LzLfax7VZV2iE
 pvwg==
X-Gm-Message-State: APjAAAVMMdqIouJTK1NPgcjYErdjszBPSC4kSuKHgi4lYHP9yCiv/qtP
 OhX54F0F540GGUMfyOeoCRcfFBHdL8nnvZ8xWD+JKIDm4hdb0w==
X-Google-Smtp-Source: APXvYqw/ydR1gnNzvXrtJInF55/5d8qMpRdI8twQKKEDmutTYvx3cEpoenhMSWW09WGddtdW+kr+nQW7wMD7wxgchOI=
X-Received: by 2002:a63:c842:: with SMTP id l2mr13434220pgi.4.1567876955245;
 Sat, 07 Sep 2019 10:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAHp75VdMZMxGJpmi6wQMa8FJdzpkPq7nA=kFf4pUSrskrTtFeA@mail.gmail.com>
 <20190822114833.29885-1-alex@alexanderweb.de>
In-Reply-To: <20190822114833.29885-1-alex@alexanderweb.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 7 Sep 2019 20:22:23 +0300
Message-ID: <CAHp75Vf4mxmA-35pqP=Go8wDzpXfj6Ydzz2cVSbfgea9y7PgMQ@mail.gmail.com>
To: Alexander Schremmer <alex@alexanderweb.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alexanderweb.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1i6eQ5-00DHeU-6r
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

On Thu, Aug 22, 2019 at 2:48 PM Alexander Schremmer
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

Pushed to my review and testing queue, thanks!

> Signed-off-by: Alexander Schremmer <alex@alexanderweb.de>
> ---
>  .../admin-guide/laptops/thinkpad-acpi.rst     |  23 ++++
>  drivers/platform/x86/thinkpad_acpi.c          | 112 ++++++++++++++++++
>  2 files changed, 135 insertions(+)
>
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index adea0bf2acc5..822907dcc845 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -49,6 +49,7 @@ detailed description):
>         - Fan control and monitoring: fan speed, fan enable/disable
>         - WAN enable and disable
>         - UWB enable and disable
> +       - LCD Shadow (PrivacyGuard) enable and disable
>
>  A compatibility table by model and feature is maintained on the web
>  site, http://ibm-acpi.sf.net/. I appreciate any success or failure
> @@ -1409,6 +1410,28 @@ Sysfs notes
>         Documentation/driver-api/rfkill.rst for details.
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
> +procfs notes
> +^^^^^^^^^^^^
> +
> +The available commands are::
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
> index 7bde4640ef34..12bf573c6568 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -9714,6 +9714,114 @@ static struct ibm_struct battery_driver_data = {
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
> @@ -10195,6 +10303,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
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
