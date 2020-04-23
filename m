Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C9C1B65FD
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 23 Apr 2020 23:11:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jRj7F-0005i5-KV; Thu, 23 Apr 2020 21:10:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jRj7E-0005hx-3z
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 23 Apr 2020 21:10:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+OIMf7u31X2aNGEXuvKS10sKXMY1vhM7SV4Q6Chk/AU=; b=iprs5//p1nuyqUURqRYvk21f67
 xwmtF85EoVanfpIEZAnVkhl2PKGuxdeTEkur4Uio+gEvInDIZeMDoybnXZcLi32x86U6dppXIcKJd
 8Y91zqzeKP9MCgcRn+NQ32r7HVgl8aqwNDlr7cxZQjdDEMdx7JCKLUskLNzLOCWGjQow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+OIMf7u31X2aNGEXuvKS10sKXMY1vhM7SV4Q6Chk/AU=; b=AwruCmG8p07MhXOkxTQK2x/6iD
 nvtI/TLh6dWEGsIAa5yIhHipUS0T8iMPLofURq1qsaF3yh/gfWH1jldcIHcjycyAX8Prms22T0xZj
 EEf6toqNztG9SBMM0t2Uk3CcV/vjnOkBMVGXXGAwTdRhShjDyJFbAlB5FwRUpH+Nk3h8=;
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jRj7C-00BlbS-Qd
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 23 Apr 2020 21:10:36 +0000
Received: by mail-pj1-f65.google.com with SMTP id h12so1986426pjz.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 23 Apr 2020 14:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+OIMf7u31X2aNGEXuvKS10sKXMY1vhM7SV4Q6Chk/AU=;
 b=rf7jryEE8xFhXic+859tBYXc9wzsiVl3fjOfifEmN10oCpeGFIQXawvvEqtGTNrgXs
 xFexvPl4aIWg+MeKrvAX6NEDihzDPxvlEffedm1fJDPqzMI1vAef5e6DmmkkqE6P/dwW
 h2l+74+FV+NBhyJZ72thkinimdd6Fcy87ZDYWzGqP9iljGVB4kC2wLRi4o1095zAT48C
 S8RBxsy1QsdedsXkxCi8vy8+qLo3fdv8qQ84TuelKf9/+6M//UIAxQbkQMGJHSO5Bezx
 TCv1WG0BYFL5jxZts35vScFuCJxJNC+zgy81W5WzMYAzkNfKFVX0ODJRRKAnqvDahzjm
 uxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+OIMf7u31X2aNGEXuvKS10sKXMY1vhM7SV4Q6Chk/AU=;
 b=n2D2qffUY8b6dXrAidw4fOb2iy7clY7eXpqVOMC2oJX69gitMMgx8g2RBAAOIIq3fC
 LoUN1pSgWEGWeqdMSc9fq7ZW/RHI4QZxY1rZgnDsS4K3BKXtPBMxPUkiR+iOxlMQWW2W
 XqgV22Ich8eimxw0ggekcx+GZrNmlSZR5KYvdwxSCbT77NtCC/yt9frEC9cH0BbIeb8F
 ArbzSBLoosRpe3rJ9qxm9x7MFOzqxLXe5BjucjLNmi7UrsYXLkitsxLaACWERDVyXegt
 fj5Q8xqQyI5lxT2YPf3GKhmlF+7hFs6gZTPTFwk1dUBgu4KeKFk2yXgPRkueb9fgtmCd
 qJvQ==
X-Gm-Message-State: AGi0PuY8HrGbl5FhGE0/inojW2oTaAxDhugXgrN7spJF5/p+AF+KJcso
 bTWseEGM3VgSWfOQlrkj3kevYEOGGoF3Axqhixg=
X-Google-Smtp-Source: APiQypL8XEe2SJFTnrpTkGcra76pGTYtdf9nsUjsuoswpbyStK/5r4b9Ko/XGGy4gEh5eAyJxN4/UytGg6S6SchXNZw=
X-Received: by 2002:a17:902:aa09:: with SMTP id
 be9mr5828683plb.18.1587676228865; 
 Thu, 23 Apr 2020 14:10:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200417194344.22597-1-larsh@apache.org>
 <20200423165238.54109-1-larsh@apache.org>
In-Reply-To: <20200423165238.54109-1-larsh@apache.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 24 Apr 2020 00:10:16 +0300
Message-ID: <CAHp75VdsR=uADmb7h0Bj_n0ALRVX39_gLjEpUfPbfQ=ZygtSxQ@mail.gmail.com>
To: Lars <larsh@apache.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jRj7C-00BlbS-Qd
Subject: Re: [ibm-acpi-devel] [PATCH v3] thinkpad_acpi: Add support for dual
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
Cc: Alexander Kappner <agk@godking.net>, kjslag@gmail.com,
 =?UTF-8?Q?Sebastian_D=C3=B6rner?= <bastidoerner@gmail.com>,
 nanodario@gmail.com, Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 sassmann@kpanic.de, Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 arc@osknowledge.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Apr 23, 2020 at 7:56 PM Lars <larsh@apache.org> wrote:
>
> This patch allows controlling multiple fans as if they were a single fan.
>
> This adds P52, P72, X1E, and X1E gen2 to dual fan quirks.
> Both fans are controlled together.
>
> Tested on an X1 Extreme Gen2.
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
> [1]. Thanks to Github users voidworker and civic9.

GitHub

>
> The BIOS ids are taken from there. The X1E gen2 id is verified on my machine.
>

I got two mails, which one is correct?
So, please send a new version only one time, thanks.

Some comments below.

> [1]: vmatare/thinkfan#58

Please, use full URL her.

...

> +               if (((level < 0) || (level > 7)))
>                         return -EINVAL;

Maybe you didn't check what I did for previous version...
Here is too many parentheses.

> +       TPACPI_Q_LNV3('N', '1', 'D', TPACPI_FAN_2CTL),  /* P70 */
> +       TPACPI_Q_LNV3('N', '1', 'E', TPACPI_FAN_2CTL),  /* P50 */
> +       TPACPI_Q_LNV3('N', '1', 'T', TPACPI_FAN_2CTL),  /* P71 */
> +       TPACPI_Q_LNV3('N', '1', 'U', TPACPI_FAN_2CTL),  /* P51 */
> +       TPACPI_Q_LNV3('N', '2', 'C', TPACPI_FAN_2CTL),  /* P52 / P72 */
> +       TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),  /* X1 Extreme (1st gen) */
> +       TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),  /* X1 Extreme (2nd gen) */

This has been expanded, but commit message still old, please, update
commit message as well (and perhaps give a credit to people who
suggested / tested other models).

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
