Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A96239C1C
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  2 Aug 2020 23:11:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k2LG4-0004Ks-47; Sun, 02 Aug 2020 21:11:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <elvstone@gmail.com>) id 1k2LG2-0004Kl-Re
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 02 Aug 2020 21:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T/ma73TMspA+AqzZswrp/EDsf5pBeexUqvHCTojLZis=; b=KiP/2czeMjf3o/sgjMt4kLbT9R
 O/B0Kw6yyqUGh1JuJJ2u+QE9QG98y4AsMXw5NnBmoL27m0BZg2cVZ7cZe05XCzSShkSIXGyv7OYNu
 fDY/DFsZ7z0vMOrNhlBWIiciSb/6dCxRaxrOp1uP4pAJr4XY+kaHAaRyjeknUaHL4kv0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T/ma73TMspA+AqzZswrp/EDsf5pBeexUqvHCTojLZis=; b=A
 KK0UL25GZh/fY+luVHMHuCg2ju4TVkHdqmcbHbIGHnt3jfDoz+XJtoHi6HPXBJ59aAFFnqoongFE5
 4kBjAjDP8HKjnl44OpEbMidbo2HvdluqWAmonnZMoLY9h7kTTo1RQJAC3mJjcbp/FLdRjlv4678U9
 YtpIHC4OIAHaYZWk=;
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k2LG0-000hWG-NP
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 02 Aug 2020 21:11:02 +0000
Received: by mail-wm1-f66.google.com with SMTP id c19so2599830wmd.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 02 Aug 2020 14:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=T/ma73TMspA+AqzZswrp/EDsf5pBeexUqvHCTojLZis=;
 b=crWkwghctFgD01coXLkWgc/e6BvMSBuq1GQri6k90ce1Z25SXzwFhEhr9flvVJn3pi
 45inBGno7SAg4VFHdgQI7waRTtvGGjb0vVhzFmHkpdpLBV5K8F2dMRskw9h8tDthtcr7
 bIKvy5GA4NOGsKEh8Bp39HQSEReZ5YTgXidnHmV4pj3Jk1n5bnz/hNoTZO7QI/3ErCEr
 p96LUWC2vKEl9x2SDeIgLumM2zOJONJJhCL6ja1+h5KU3Ofc6vhgpm0/rEhJ4QHK+zL6
 ZZBvcYbS3cUr8GNzm15krZSNSuXDyr07yDLNdbizwcUXKQydAw1VPLaIgl8XzqxGD1fn
 hksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=T/ma73TMspA+AqzZswrp/EDsf5pBeexUqvHCTojLZis=;
 b=f56S/VkLGQGZ4N+GQexLBrHyBgF/oUnYKTuY6ftfcTSDT8dPMqKY6U0UEGKfMBIf3F
 EeUhmvXfYFGPkOf7Qhj28g2KSM+toGqOqZ0B6TxC0HgjSeygm8Da51Hk409qkLpsvrsd
 I03p5fePiYAZkUULMj9ojsHEpVUq4KOsWFdGP6U2cNhdNBkiRePqReRo7NrlL2Eo6T3z
 ULn17ssXR0GnzlFrF7IBvVpdgwryb0IEa7xiVXm3fuHgVa/Mc02/hWZB+1IKMmADjd5x
 vsAipCVqSztpCxghKzD8J+BN1FfRBR70XvotpU4Ih9s+X9gdiHR5TeNJe9IHKyhRCbZp
 fGmQ==
X-Gm-Message-State: AOAM531Rph7QaGGp0D2qH0SC9icZy4V2ARcINR5sD5zYT3XdVCzPs+hH
 QKhCnoRNW413JC2/31e735vbMbeyGD/vHQXc2CoRJWqtY9I=
X-Google-Smtp-Source: ABdhPJw0+nnHdcscsJXjY3W3z5MQpgOZKq3GsxFogISOBNZ8pizK2+r7lQtWAdkmXnplnWWD//qp0KLWW0rQjQxEhGg=
X-Received: by 2002:a1c:6408:: with SMTP id y8mr12636593wmb.52.1596402654136; 
 Sun, 02 Aug 2020 14:10:54 -0700 (PDT)
MIME-Version: 1.0
From: Elvis Stansvik <elvstone@gmail.com>
Date: Sun, 2 Aug 2020 23:10:43 +0200
Message-ID: <CAHms=eZm3LY-Z4p+TkfZ+vyxGd_7XKPBsSEM_Mvnx2s-GO2c9w@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (elvstone[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k2LG0-000hWG-NP
Subject: Re: [ibm-acpi-devel] [PATCH v5] platform/x86: thinkpad_acpi: lap or
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
Content-Type: multipart/mixed; boundary="===============3884853453105595935=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============3884853453105595935==
Content-Type: multipart/alternative; boundary="0000000000001e4f3d05abeb75a2"

--0000000000001e4f3d05abeb75a2
Content-Type: text/plain; charset="UTF-8"

(Apologies in advance for missing In-Reply-To header in this reply. I
subscribed to the list just now.)

Den fre 3 juli 2020 kl 01:24 skrev Mark Pearson <markpearson@lenovo.com>:
> Newer Lenovo Thinkpad platforms have support to identify whether the
> system is on-lap or not using an ACPI DYTC event from the firmware.
>
> This patch provides the ability to retrieve the current mode via sysfs
> entrypoints and will be used by userspace for thermal mode and WWAN
> functionality

I tried the patch out on my X1C6 (20KH007BMX), running Lenovo firmware
version 0.1.49.

The sysfs path /sys/devices/platform/thinkpad_acpi/dytc_lapmode is showing
up, but it's reporting 0 regardless if the laptop is in my lap or on a desk.

I tested this by having the laptop in my lap for five minutes, and then on
a desk for five minutes. The value reported through
/sys/devices/platform/thinkpad_acpi/dytc_lapmode was always 0.

Regards,
Elvis

>
> Co-developed-by: Nitin Joshi <njoshi1@...>
> Signed-off-by: Nitin Joshi <njoshi1@...>
> Reviewed-by: Sugumaran <slacshiminar@...>
> Reviewed-by: Bastien Nocera <bnocera@...>
> Signed-off-by: Mark Pearson <markpearson@...>
> ---
> Changes in v5:
>  - Updated with review changes from Andy Shevchenko
>  - Added ABI information to thinkpad-acpi.rst
>  - improved error handling and parameter passing as recommended
>  - code cleanup as recommended
>  - added review tag from bnocera
> Changes in v4:
>  - Correct hotkey event comment as we're handling event
>  - Remove unnecessary check in dytc_lapmode_refresh
> Changes in v3:
> - Fixed inaccurate comments
> - Used BIT macro to check lapmode bit setting as recommended and update
>   define name
> - Check for new_state == dytc_lapmode in dytc_lapmode_refresh
> Changes in v2:
> - cleaned up initialisation sequence to be cleaner and avoid spamming
>   platforms that don't have DYTC with warning message. Tested on P52
> - Adding platform-driver-x86 mailing list for review as requested
>
>  .../admin-guide/laptops/thinkpad-acpi.rst     |  15 +++
>  drivers/platform/x86/thinkpad_acpi.c          | 111 +++++++++++++++++-
>  2 files changed, 124 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index 822907dcc845..99066aa8d97b 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -50,6 +50,7 @@ detailed description):
>   - WAN enable and disable
>   - UWB enable and disable
>   - LCD Shadow (PrivacyGuard) enable and disable
> + - Lap mode sensor
>
>  A compatibility table by model and feature is maintained on the web
>  site, http://ibm-acpi.sf.net/. I appreciate any success or failure
> @@ -1432,6 +1433,20 @@ The first command ensures the best viewing angle
and the latter one turns
>  on the feature, restricting the viewing angles.
>
>
> +DYTC Lapmode sensor
> +------------------
> +
> +sysfs: dytc_lapmode
> +
> +Newer thinkpads and mobile workstations have the ability to determine if
> +the device is in deskmode or lapmode. This feature is used by user space
> +to decide if WWAN transmission can be increased to maximum power and is
> +also useful for understanding the different thermal modes available as
> +they differ between desk and lap mode.
> +
> +The property is read-only. If the platform doesn't have support the sysfs
> +class is not created.
> +
>  EXPERIMENTAL: UWB
>  -----------------
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c
b/drivers/platform/x86/thinkpad_acpi.c
> index ff7f0a4f2475..037eb77414f9 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -4022,8 +4022,8 @@ static bool hotkey_notify_6xxx(const u32 hkey,
>   return true;
>   case TP_HKEY_EV_THM_CSM_COMPLETED:
>   pr_debug("EC reports: Thermal Control Command set completed (DYTC)\n");
> - /* recommended action: do nothing, we don't have
> - * Lenovo ATM information */
> + /* Thermal event - pass on to event handler */
> + tpacpi_driver_event(hkey);
>   return true;
>   case TP_HKEY_EV_THM_TRANSFM_CHANGED:
>   pr_debug("EC reports: Thermal Transformation changed (GMTS)\n");
> @@ -9795,6 +9795,105 @@ static struct ibm_struct lcdshadow_driver_data = {
>   .write = lcdshadow_write,
>  };
>
>
+/*************************************************************************
> + * DYTC subdriver, for the Lenovo lapmode feature
> + */
> +
> +#define DYTC_CMD_GET          2 /* To get current IC function and mode */
> +#define DYTC_GET_LAPMODE_BIT 17 /* Set when in lapmode */
> +
> +static bool dytc_lapmode;
> +
> +static void dytc_lapmode_notify_change(void)
> +{
> + sysfs_notify(&tpacpi_pdev->dev.kobj, NULL, "dytc_lapmode");
> +}
> +
> +static int dytc_command(int command, int *output)
> +{
> + acpi_handle dytc_handle;
> +
> + if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DYTC", &dytc_handle))) {
> + /* Platform doesn't support DYTC */
> + return -ENODEV;
> + }
> + if (!acpi_evalf(dytc_handle, output, NULL, "dd", command))
> + return -EIO;
> + return 0;
> +}
> +
> +static int dytc_lapmode_get(bool *state)
> +{
> + int output, err;
> +
> + err = dytc_command(DYTC_CMD_GET, &output);
> + if (err)
> + return err;
> + *state = output & BIT(DYTC_GET_LAPMODE_BIT) ? true : false;
> + return 0;
> +}
> +
> +static void dytc_lapmode_refresh(void)
> +{
> + bool new_state;
> + int err;
> +
> + err = dytc_lapmode_get(&new_state);
> + if (err || (new_state == dytc_lapmode))
> + return;
> +
> + dytc_lapmode = new_state;
> + dytc_lapmode_notify_change();
> +}
> +
> +/* sysfs lapmode entry */
> +static ssize_t dytc_lapmode_show(struct device *dev,
> + struct device_attribute *attr,
> + char *buf)
> +{
> + return snprintf(buf, PAGE_SIZE, "%d\n", dytc_lapmode);
> +}
> +
> +static DEVICE_ATTR_RO(dytc_lapmode);
> +
> +static struct attribute *dytc_attributes[] = {
> + &dev_attr_dytc_lapmode.attr,
> + NULL,
> +};
> +
> +static const struct attribute_group dytc_attr_group = {
> + .attrs = dytc_attributes,
> +};
> +
> +static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
> +{
> + int err;
> +
> + err = dytc_lapmode_get(&dytc_lapmode);
> + /* If support isn't available (ENODEV) then don't return an error
> + * but just don't create the sysfs group
> + */
> + if (err == -ENODEV)
> + return 0;
> + /* For all other errors we can flag the failure */
> + if (err)
> + return err;
> +
> + /* Platform supports this feature - create the group */
> + err = sysfs_create_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
> + return err;
> +}
> +
> +static void dytc_exit(void)
> +{
> + sysfs_remove_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
> +}
> +
> +static struct ibm_struct dytc_driver_data = {
> + .name = "dytc",
> + .exit = dytc_exit,
> +};
> +
>
 /****************************************************************************
>
****************************************************************************
>   *
> @@ -9842,6 +9941,10 @@ static void tpacpi_driver_event(const unsigned int
hkey_event)
>
>   mutex_unlock(&kbdlight_mutex);
>   }
> +
> + if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
> + dytc_lapmode_refresh();
> +
>  }
>
>  static void hotkey_driver_event(const unsigned int scancode)
> @@ -10280,6 +10383,10 @@ static struct ibm_init_struct ibms_init[]
__initdata = {
>   .init = tpacpi_lcdshadow_init,
>   .data = &lcdshadow_driver_data,
>   },
> + {
> + .init = tpacpi_dytc_init,
> + .data = &dytc_driver_data,
> + },
>  };
>
>  static int __init set_ibm_param(const char *val, const struct
kernel_param *kp)
> --
> 2.26.2

--0000000000001e4f3d05abeb75a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>(Apologies in advance for missing In-Reply-To header =
in this reply. I subscribed to the list just now.)<br></div><div><br>Den fr=
e 3 juli 2020 kl 01:24 skrev Mark Pearson &lt;<a href=3D"mailto:markpearson=
@lenovo.com">markpearson@lenovo.com</a>&gt;:<br>&gt; Newer Lenovo Thinkpad =
platforms have support to identify whether the<br>&gt; system is on-lap or =
not using an ACPI DYTC event from the firmware.<br>&gt; <br>&gt; This patch=
 provides the ability to retrieve the current mode via sysfs<br>&gt; entryp=
oints and will be used by userspace for thermal mode and WWAN<br>&gt; funct=
ionality<br><br></div><div>I tried the patch out on my X1C6 (20KH007BMX), r=
unning Lenovo firmware version 0.1.49.<br><br></div><div>The sysfs path /sy=
s/devices/platform/thinkpad_acpi/dytc_lapmode is showing up, but it&#39;s r=
eporting 0 regardless if the laptop is in my lap or on a desk.</div><div><b=
r></div><div>I tested this by having the laptop in my lap for five minutes,=
 and then on a desk for five minutes. The value reported through /sys/devic=
es/platform/thinkpad_acpi/dytc_lapmode was always 0.</div><div><br></div><d=
iv>Regards,</div><div>Elvis</div><div><br></div><div>&gt; <br>&gt; Co-devel=
oped-by: Nitin Joshi &lt;njoshi1@...&gt;<br>&gt; Signed-off-by: Nitin Joshi=
 &lt;njoshi1@...&gt;<br>&gt; Reviewed-by: Sugumaran &lt;slacshiminar@...&gt=
;<br>&gt; Reviewed-by: Bastien Nocera &lt;bnocera@...&gt;<br>&gt; Signed-of=
f-by: Mark Pearson &lt;markpearson@...&gt;<br>&gt; ---<br>&gt; Changes in v=
5:<br>&gt; =C2=A0- Updated with review changes from Andy Shevchenko<br>&gt;=
 =C2=A0- Added ABI information to thinkpad-acpi.rst<br>&gt; =C2=A0- improve=
d error handling and parameter passing as recommended<br>&gt; =C2=A0- code =
cleanup as recommended<br>&gt; =C2=A0- added review tag from bnocera<br>&gt=
; Changes in v4:<br>&gt; =C2=A0- Correct hotkey event comment as we&#39;re =
handling event<br>&gt; =C2=A0- Remove unnecessary check in dytc_lapmode_ref=
resh<br>&gt; Changes in v3:<br>&gt; - Fixed inaccurate comments<br>&gt; - U=
sed BIT macro to check lapmode bit setting as recommended and update<br>&gt=
; =C2=A0 define name<br>&gt; - Check for new_state =3D=3D dytc_lapmode in d=
ytc_lapmode_refresh<br>&gt; Changes in v2:<br>&gt; - cleaned up initialisat=
ion sequence to be cleaner and avoid spamming<br>&gt; =C2=A0 platforms that=
 don&#39;t have DYTC with warning message. Tested on P52<br>&gt; - Adding p=
latform-driver-x86 mailing list for review as requested<br>&gt; <br>&gt; =
=C2=A0.../admin-guide/laptops/thinkpad-acpi.rst =C2=A0 =C2=A0 | =C2=A015 ++=
+<br>&gt; =C2=A0drivers/platform/x86/thinkpad_acpi.c =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 111 +++++++++++++++++-<br>&gt; =C2=A02 files changed, 124 in=
sertions(+), 2 deletions(-)<br>&gt; <br>&gt; diff --git a/Documentation/adm=
in-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thin=
kpad-acpi.rst<br>&gt; index 822907dcc845..99066aa8d97b 100644<br>&gt; --- a=
/Documentation/admin-guide/laptops/thinkpad-acpi.rst<br>&gt; +++ b/Document=
ation/admin-guide/laptops/thinkpad-acpi.rst<br>&gt; @@ -50,6 +50,7 @@ detai=
led description):<br>&gt; =C2=A0	- WAN enable and disable<br>&gt; =C2=A0	- =
UWB enable and disable<br>&gt; =C2=A0	- LCD Shadow (PrivacyGuard) enable an=
d disable<br>&gt; +	- Lap mode sensor<br>&gt; =C2=A0<br>&gt; =C2=A0A compat=
ibility table by model and feature is maintained on the web<br>&gt; =C2=A0s=
ite, <a href=3D"http://ibm-acpi.sf.net/">http://ibm-acpi.sf.net/</a>. I app=
reciate any success or failure<br>&gt; @@ -1432,6 +1433,20 @@ The first com=
mand ensures the best viewing angle and the latter one turns<br>&gt; =C2=A0=
on the feature, restricting the viewing angles.<br>&gt; =C2=A0<br>&gt; =C2=
=A0<br>&gt; +DYTC Lapmode sensor<br>&gt; +------------------<br>&gt; +<br>&=
gt; +sysfs: dytc_lapmode<br>&gt; +<br>&gt; +Newer thinkpads and mobile work=
stations have the ability to determine if<br>&gt; +the device is in deskmod=
e or lapmode. This feature is used by user space<br>&gt; +to decide if WWAN=
 transmission can be increased to maximum power and is<br>&gt; +also useful=
 for understanding the different thermal modes available as<br>&gt; +they d=
iffer between desk and lap mode.<br>&gt; +<br>&gt; +The property is read-on=
ly. If the platform doesn&#39;t have support the sysfs<br>&gt; +class is no=
t created.<br>&gt; +<br>&gt; =C2=A0EXPERIMENTAL: UWB<br>&gt; =C2=A0--------=
---------<br>&gt; =C2=A0<br>&gt; diff --git a/drivers/platform/x86/thinkpad=
_acpi.c b/drivers/platform/x86/thinkpad_acpi.c<br>&gt; index ff7f0a4f2475..=
037eb77414f9 100644<br>&gt; --- a/drivers/platform/x86/thinkpad_acpi.c<br>&=
gt; +++ b/drivers/platform/x86/thinkpad_acpi.c<br>&gt; @@ -4022,8 +4022,8 @=
@ static bool hotkey_notify_6xxx(const u32 hkey,<br>&gt; =C2=A0		return tru=
e;<br>&gt; =C2=A0	case TP_HKEY_EV_THM_CSM_COMPLETED:<br>&gt; =C2=A0		pr_deb=
ug(&quot;EC reports: Thermal Control Command set completed (DYTC)\n&quot;);=
<br>&gt; -		/* recommended action: do nothing, we don&#39;t have<br>&gt; -	=
	 * Lenovo ATM information */<br>&gt; +		/* Thermal event - pass on to even=
t handler */<br>&gt; +		tpacpi_driver_event(hkey);<br>&gt; =C2=A0		return t=
rue;<br>&gt; =C2=A0	case TP_HKEY_EV_THM_TRANSFM_CHANGED:<br>&gt; =C2=A0		pr=
_debug(&quot;EC reports: Thermal Transformation changed (GMTS)\n&quot;);<br=
>&gt; @@ -9795,6 +9795,105 @@ static struct ibm_struct lcdshadow_driver_dat=
a =3D {<br>&gt; =C2=A0	.write =3D lcdshadow_write,<br>&gt; =C2=A0};<br>&gt;=
 =C2=A0<br>&gt; +/*********************************************************=
****************<br>&gt; + * DYTC subdriver, for the Lenovo lapmode feature=
<br>&gt; + */<br>&gt; +<br>&gt; +#define DYTC_CMD_GET =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A02 /* To get current IC function and mode */<br>&gt; +#define D=
YTC_GET_LAPMODE_BIT 17 /* Set when in lapmode */<br>&gt; +<br>&gt; +static =
bool dytc_lapmode;<br>&gt; +<br>&gt; +static void dytc_lapmode_notify_chang=
e(void)<br>&gt; +{<br>&gt; +	sysfs_notify(&amp;tpacpi_pdev-&gt;dev.kobj, NU=
LL, &quot;dytc_lapmode&quot;);<br>&gt; +}<br>&gt; +<br>&gt; +static int dyt=
c_command(int command, int *output)<br>&gt; +{<br>&gt; +	acpi_handle dytc_h=
andle;<br>&gt; +<br>&gt; +	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, &q=
uot;DYTC&quot;, &amp;dytc_handle))) {<br>&gt; +		/* Platform doesn&#39;t su=
pport DYTC */<br>&gt; +		return -ENODEV;<br>&gt; +	}<br>&gt; +	if (!acpi_ev=
alf(dytc_handle, output, NULL, &quot;dd&quot;, command))<br>&gt; +		return =
-EIO;<br>&gt; +	return 0;<br>&gt; +}<br>&gt; +<br>&gt; +static int dytc_lap=
mode_get(bool *state)<br>&gt; +{<br>&gt; +	int output, err;<br>&gt; +<br>&g=
t; +	err =3D dytc_command(DYTC_CMD_GET, &amp;output);<br>&gt; +	if (err)<br=
>&gt; +		return err;<br>&gt; +	*state =3D output &amp; BIT(DYTC_GET_LAPMODE=
_BIT) ? true : false;<br>&gt; +	return 0;<br>&gt; +}<br>&gt; +<br>&gt; +sta=
tic void dytc_lapmode_refresh(void)<br>&gt; +{<br>&gt; +	bool new_state;<br=
>&gt; +	int err;<br>&gt; +<br>&gt; +	err =3D dytc_lapmode_get(&amp;new_stat=
e);<br>&gt; +	if (err || (new_state =3D=3D dytc_lapmode))<br>&gt; +		return=
;<br>&gt; +<br>&gt; +	dytc_lapmode =3D new_state;<br>&gt; +	dytc_lapmode_no=
tify_change();<br>&gt; +}<br>&gt; +<br>&gt; +/* sysfs lapmode entry */<br>&=
gt; +static ssize_t dytc_lapmode_show(struct device *dev,<br>&gt; +					str=
uct device_attribute *attr,<br>&gt; +					char *buf)<br>&gt; +{<br>&gt; +	r=
eturn snprintf(buf, PAGE_SIZE, &quot;%d\n&quot;, dytc_lapmode);<br>&gt; +}<=
br>&gt; +<br>&gt; +static DEVICE_ATTR_RO(dytc_lapmode);<br>&gt; +<br>&gt; +=
static struct attribute *dytc_attributes[] =3D {<br>&gt; +	&amp;dev_attr_dy=
tc_lapmode.attr,<br>&gt; +	NULL,<br>&gt; +};<br>&gt; +<br>&gt; +static cons=
t struct attribute_group dytc_attr_group =3D {<br>&gt; +	.attrs =3D dytc_at=
tributes,<br>&gt; +};<br>&gt; +<br>&gt; +static int tpacpi_dytc_init(struct=
 ibm_init_struct *iibm)<br>&gt; +{<br>&gt; +	int err;<br>&gt; +<br>&gt; +	e=
rr =3D dytc_lapmode_get(&amp;dytc_lapmode);<br>&gt; +	/* If support isn&#39=
;t available (ENODEV) then don&#39;t return an error<br>&gt; +	 * but just =
don&#39;t create the sysfs group<br>&gt; +	 */<br>&gt; +	if (err =3D=3D -EN=
ODEV)<br>&gt; +		return 0;<br>&gt; +	/* For all other errors we can flag th=
e failure */<br>&gt; +	if (err)<br>&gt; +		return err;<br>&gt; +<br>&gt; +	=
/* Platform supports this feature - create the group */<br>&gt; +	err =3D s=
ysfs_create_group(&amp;tpacpi_pdev-&gt;dev.kobj, &amp;dytc_attr_group);<br>=
&gt; +	return err;<br>&gt; +}<br>&gt; +<br>&gt; +static void dytc_exit(void=
)<br>&gt; +{<br>&gt; +	sysfs_remove_group(&amp;tpacpi_pdev-&gt;dev.kobj, &a=
mp;dytc_attr_group);<br>&gt; +}<br>&gt; +<br>&gt; +static struct ibm_struct=
 dytc_driver_data =3D {<br>&gt; +	.name =3D &quot;dytc&quot;,<br>&gt; +	.ex=
it =3D dytc_exit,<br>&gt; +};<br>&gt; +<br>&gt; =C2=A0/********************=
********************************************************<br>&gt; =C2=A0 ***=
*************************************************************************<b=
r>&gt; =C2=A0 *<br>&gt; @@ -9842,6 +9941,10 @@ static void tpacpi_driver_ev=
ent(const unsigned int hkey_event)<br>&gt; =C2=A0<br>&gt; =C2=A0		mutex_unl=
ock(&amp;kbdlight_mutex);<br>&gt; =C2=A0	}<br>&gt; +<br>&gt; +	if (hkey_eve=
nt =3D=3D TP_HKEY_EV_THM_CSM_COMPLETED)<br>&gt; +		dytc_lapmode_refresh();<=
br>&gt; +<br>&gt; =C2=A0}<br>&gt; =C2=A0<br>&gt; =C2=A0static void hotkey_d=
river_event(const unsigned int scancode)<br>&gt; @@ -10280,6 +10383,10 @@ s=
tatic struct ibm_init_struct ibms_init[] __initdata =3D {<br>&gt; =C2=A0		.=
init =3D tpacpi_lcdshadow_init,<br>&gt; =C2=A0		.data =3D &amp;lcdshadow_dr=
iver_data,<br>&gt; =C2=A0	},<br>&gt; +	{<br>&gt; +		.init =3D tpacpi_dytc_i=
nit,<br>&gt; +		.data =3D &amp;dytc_driver_data,<br>&gt; +	},<br>&gt; =C2=
=A0};<br>&gt; =C2=A0<br>&gt; =C2=A0static int __init set_ibm_param(const ch=
ar *val, const struct kernel_param *kp)<br>&gt; -- <br>&gt; 2.26.2<br></div=
></div>

--0000000000001e4f3d05abeb75a2--


--===============3884853453105595935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3884853453105595935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============3884853453105595935==--

