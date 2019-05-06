Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 907C3146CB
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  6 May 2019 10:50:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hNZK5-00084D-9C; Mon, 06 May 2019 08:50:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1hNZK3-00083m-ML
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 06 May 2019 08:50:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D5UrX+OKB1Qk90azGE0Sbmu/dZQhz6aRGSvU+CcR6II=; b=lfHd6yigx7cxcIP/1DGP8Uhp82
 X+0rTJl8ErvPOz3VTZmN4P1ZGs9BOwb0lk2sipMjUFpBeny77InF4S86w3XDCAOGvB9qemN5sKXem
 mZhT+uJUSEFBrrgtVPfQwxILKM8wSRC/uRxaduZJMqE2W93cuf14mfQ2WdncBfI5D1h4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D5UrX+OKB1Qk90azGE0Sbmu/dZQhz6aRGSvU+CcR6II=; b=KGTr/636Ancmak5JWiozRWMJGE
 HyvHYLHiRUlI7TernxBpKEQyzBFlQpm9C1YYsPyDH3fhEvajNVzVq6JeTf66jvk1jJIzxupQDYZu9
 HluCnCe+uRLNaj9aOZKsme3UXWGXSmS3XTL8kDPH8xBzwoASdQsk6yF9k4nbMtSSwaG8=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hNZK1-00ALUu-5f
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 06 May 2019 08:50:07 +0000
Received: by mail-pg1-f195.google.com with SMTP id t22so6117682pgi.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 06 May 2019 01:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D5UrX+OKB1Qk90azGE0Sbmu/dZQhz6aRGSvU+CcR6II=;
 b=JBubT+aStrvOdmYGy3+U/RHPuwrfslnYHztfCXODd/806YqBZY47ajlr8a3NJz9DbF
 YUXnp/Ik8eg6Gz0XWbzByOEXfoikxDFcfqEYrQU4bUH3aQhlaUD4O9H17Pl+KdxR/zZS
 Htwqb4xMYF6lVuftPbXfloSULGPfMzXgvSA/oXNY5AHSEF6kwozNj0Ev9MGljvD5lYER
 uUYpC2cWgyNQ9aaPQSwX1tVQjl/uN8TQ5Px237Er/Tn8POiNo5rDGkUWKWm1sUGY91vv
 Y645Ziu242QSgr/cN2bgr7eShoRi7e9j13BfgesPzBPFEYFACSl2Kn/IvwWLWqHpWvJq
 7edA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D5UrX+OKB1Qk90azGE0Sbmu/dZQhz6aRGSvU+CcR6II=;
 b=rNlEbMbRl+eEktd16VeaREjPT+hijV8mSoevkuM0A8n17EQyscLcHyOvfDR2cCKfg9
 HRB/mD6SXUq9W2OlVzlqSFAtkwnoIQwG4hX/5d+j9+AfTZwo2+9xcnJmTRSDX1uL96YY
 YJv19Ks2f2j/6ZPhTYrtP0/SG5kvVzZrk3XolhH0FrKDtTQG2SRSzPkuI1tX072eZvP5
 tjl7wCoVg94QdVV/vYRUfzHYk14kjb79H1ctRdMrvyJPa4RyjyLwo6cxbMv2KipyjXJ1
 JvXjzIF3e/k7KydL3vaHwW5A7QCH4oe9QSNGzRSC0iuLqCd1vtGebYZ8L1biCBaihlCl
 7+hw==
X-Gm-Message-State: APjAAAUR7pPotFFbNVyS0xXR+RNgRpEIVRuXX0S3SRqJjnK/P8LCbfWo
 DS/DfMa/0kepGtrEIEsKYUNkNs440Ss1DEwpaPF8HTlgQVs=
X-Google-Smtp-Source: APXvYqwk4wRA4+aEmV822/Cbz6TpwqrbFU6onaXz2mR5pnZhdArGowee1G1v/w1vdUrQ3WrK3YRO9NKQZVPJ+1OerEE=
X-Received: by 2002:a62:30c2:: with SMTP id
 w185mr32048057pfw.175.1557132599170; 
 Mon, 06 May 2019 01:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190415125204.7386-1-colin.king@canonical.com>
 <520f6626-246b-005f-53ef-df2f75a89cd9@codeaurora.org>
In-Reply-To: <520f6626-246b-005f-53ef-df2f75a89cd9@codeaurora.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 6 May 2019 11:49:48 +0300
Message-ID: <CAHp75VcXGyEGYXrswuLHecpvqqR1dfi94Nhu3dhhkex9OVJCfw@mail.gmail.com>
To: Mukesh Ojha <mojha@codeaurora.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hNZK1-00ALUu-5f
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: fix
 spelling mistake "capabilites" -> "capabilities"
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
Cc: kernel-janitors@vger.kernel.org,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, Darren Hart <dvhart@infradead.org>,
 Colin King <colin.king@canonical.com>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Apr 16, 2019 at 9:58 AM Mukesh Ojha <mojha@codeaurora.org> wrote:
>
>
> On 4/15/2019 6:22 PM, Colin King wrote:
> > From: Colin Ian King <colin.king@canonical.com>
> >
> > There is a spelling mistake in a module parameter description. Fix it.
> >

Pushed to my review and testing queue, thanks!

> > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>
>
> Cheers,
> -Mukesh
>
> > ---
> >   drivers/platform/x86/thinkpad_acpi.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> > index 57d9ae9d8e56..9192b686e9a6 100644
> > --- a/drivers/platform/x86/thinkpad_acpi.c
> > +++ b/drivers/platform/x86/thinkpad_acpi.c
> > @@ -10269,7 +10269,7 @@ MODULE_PARM_DESC(volume_mode,
> >
> >   module_param_named(volume_capabilities, volume_capabilities, uint, 0444);
> >   MODULE_PARM_DESC(volume_capabilities,
> > -              "Selects the mixer capabilites: 0=auto, 1=volume and mute, 2=mute only");
> > +              "Selects the mixer capabilities: 0=auto, 1=volume and mute, 2=mute only");
> >
> >   module_param_named(volume_control, volume_control_allowed, bool, 0444);
> >   MODULE_PARM_DESC(volume_control,



-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
