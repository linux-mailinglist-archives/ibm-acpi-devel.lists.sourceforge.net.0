Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 228B914FF4
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  6 May 2019 17:20:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hNfQ2-0005mf-Fe; Mon, 06 May 2019 15:20:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1hNfQ0-0005mK-Lk
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 06 May 2019 15:20:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WSqwoJIq83LdnLBResj/Lpi0ldlfcksK6t8+FIatPzg=; b=LMJW7sR+1y6Q2uevUOVBgdh9So
 c+srMiWsAYlEwMvhW3X26GKT1kxXK7sde+Q3Fp1LWV52ewvUBb21t4LXPYgKoZxw4zAMSzaa8FJAH
 ejfku3GWXE3x7CEzl8P11pmhAxB60QUeIdFYb4sfO+q1stRwe4870PptocpAkkM6E2Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WSqwoJIq83LdnLBResj/Lpi0ldlfcksK6t8+FIatPzg=; b=nJF4LHIwBL95TFDt4sN7KDJgW4
 bOr1G8cnOz2fcaDZUg/2HbgA0pbuFck8ug8nX2YRrm1Kf+6MvwBUNg7I6zHXXIPEWqlv4qyjCLBUV
 OWg4kHmuy2/sZsZPQJs8rx9N4IWR4o3oItqfgBc1JO2qM3/UC/cVZm8GT17Tw5aL+Cpw=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hNfPy-007q9T-JE
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 06 May 2019 15:20:40 +0000
Received: by mail-pf1-f193.google.com with SMTP id t87so6372420pfa.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 06 May 2019 08:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WSqwoJIq83LdnLBResj/Lpi0ldlfcksK6t8+FIatPzg=;
 b=OcndmoKNv0NFLtL4ikMqDqmABuIX+D+rhPYJgsE28n4dGOnawEW3FUVqmYyGpBzue3
 Y6gB/WowJsFcQs1i8dVvaVpALLSBdX+Ochn84u3Ype82MxrNyMFyS/IEgbQ74MOWOc8Q
 3g0j07rTPVV1o0wbPhB4QIKoHWvWFYfujHGriY8LuaAGUe9dFMQvDvWMRXtbwrQLink+
 O2wV5ONK5rmsNPFCRyl/vrJub01aIP3PluBg1v0t3V2HXvKlZ0/vC8bVz46wlCJNK5bW
 l6G9e8dBp9eM1q06OOaKlz3u5vAMwNZON2R/+oQ7W+vpVE0/Vp3tf5FICHjCpzs9FARY
 CUeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WSqwoJIq83LdnLBResj/Lpi0ldlfcksK6t8+FIatPzg=;
 b=bPJIlSrfQjJ8GMncpqX66tJfnoJ014A06E6MsY57npX2QuPhHTN7DHKBlcfV1dT0HZ
 twwPJKX59LZ0uQWm7PlCo19Y4/OhD/oXhWAep/W+NWtMBb9NLd/RkOj4sKeYl/QVCDbz
 LPGncyJEjzgFM90n7bLLGV47gAlcZHKmRZP8HIRbRLk5FffiCYEKFx1xAWz+3aT1qB52
 Xu75/m9Om8GgyvqRvnTFxBeURQD3rve5F2Ej4SVSPX1iS9EB5mesEwdYnf/yX1Zfm/7e
 axYdsI4PmsZYB9yDOg4lT+JjAotq0Abe3FT4YAcBNglHSA/drnN39ufUDbFBPiFGEilC
 qP7g==
X-Gm-Message-State: APjAAAUdeLlDypukS/xX7EBfElSMVmQQZZS1dtZmJB4oF43ukfQuP6Tj
 PmIfcoI/EERoI9AmS1Gl/IfqhUUgqxLMFf5cAOg=
X-Google-Smtp-Source: APXvYqxgJM/cnaqBuMcnSztrB/6cmvkX2dOKEIvfShui1WA4ljvvmJO77aalM5I862t/cNyaRU4OI14tb0/zeuiYDJs=
X-Received: by 2002:a62:ee04:: with SMTP id e4mr7269562pfi.232.1557156032819; 
 Mon, 06 May 2019 08:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com> <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com> <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com> <20190429152148.GA10501@amd>
In-Reply-To: <20190429152148.GA10501@amd>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 6 May 2019 18:20:22 +0300
Message-ID: <CAHp75VcrW_9pyiG6N75CWkxc1S7mKknfDT_W87vSQNnzjf2uRw@mail.gmail.com>
To: Pavel Machek <pavel@ucw.cz>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hNfPy-007q9T-JE
Subject: Re: [ibm-acpi-devel] [PATCH] leds: tpacpi: cleanup for Thinkpad
 ACPI led
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
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Linux LED Subsystem <linux-leds@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Apr 29, 2019 at 6:22 PM Pavel Machek <pavel@ucw.cz> wrote:
>
>
> Make error returns more consistent... no behaviour change intended.
>

Pushed to my review and testing queue, thanks!

P.S. I fixed prefix accordingly.

> Signed-off-by: Pavel Machek <pavel@ucw.cz>
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 726341f..7008a7f 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -5808,7 +5808,7 @@ static int led_set_status(const unsigned int led,
>                         return -EPERM;
>                 if (!acpi_evalf(led_handle, NULL, NULL, "vdd",
>                                 (1 << led), led_sled_arg1[ledstatus]))
> -                       rc = -EIO;
> +                       return -EIO;
>                 break;
>         case TPACPI_LED_OLD:
>                 /* 600e/x, 770e, 770x, A21e, A2xm/p, T20-22, X20 */
> @@ -5832,10 +5832,10 @@ static int led_set_status(const unsigned int led,
>                         return -EPERM;
>                 if (!acpi_evalf(led_handle, NULL, NULL, "vdd",
>                                 led, led_led_arg1[ledstatus]))
> -                       rc = -EIO;
> +                       return -EIO;
>                 break;
>         default:
> -               rc = -ENXIO;
> +               return -ENXIO;
>         }
>
>         if (!rc)
>
> --
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html



-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
