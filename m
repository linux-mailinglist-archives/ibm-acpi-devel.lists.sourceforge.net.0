Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A43612121A1
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 Jul 2020 12:57:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jqwu9-0003Wu-I4; Thu, 02 Jul 2020 10:57:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jqwu8-0003Wn-E9
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 Jul 2020 10:57:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=06wVRBUw5sU6HeeBW+uzGWclrs60UMpE1NyO8Qk7/YY=; b=NAxFIak0E03X7V0x2AH6PT7SQ1
 dSb46L5Kl0nEpaQCmkeTAJ/8zlYSz5QqG/xryQ8Gq3ge60k5RYu+gSR87In4dU81bOfFs2YB/xqJH
 Do4VGGzgANQCE1qwRHj9GTdGz2TH2hHGPdi90vnRA7iVX1aZWDhlS7/Y2ornfUePlJvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=06wVRBUw5sU6HeeBW+uzGWclrs60UMpE1NyO8Qk7/YY=; b=IhPlB1HwVW5go1RPU/rUxUfFey
 xt5Nu/+pBgoGJirk1Wvs0VB+dN++e/mfPA+NhV6y0NzCVWDHM0LBRZH1Xpk8rV6JRpOiUdkm+T5Ir
 AWHUoCsImCAziwqsQFAJOUfQDqtOfT5j32BN/F3BMNgJffoaBOvKVU2zwVuR+Vj76j8U=;
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jqwu6-009zjM-NV
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 Jul 2020 10:57:20 +0000
Received: by mail-pg1-f196.google.com with SMTP id j19so6430271pgm.11
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 02 Jul 2020 03:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=06wVRBUw5sU6HeeBW+uzGWclrs60UMpE1NyO8Qk7/YY=;
 b=grfnpMycLdylON5naV2oSZu+n1o9Ni/pE7vv33/lW1UMlPSV++fubzQe4DGyJ6uXzY
 rbDQWCSCEcivfpsiLPgSJR8qeNNpSnTqqAd+7vmdPuolICBdzV+lIAqod/mpGfst2Kdc
 NyBebcHCN8kNl3Nb0cUFo6xDIRjmT3M7o7g+HsAuaTZEJiNCivrML1canpU1Ew6DmUOE
 Ip2G3nVmLS1G0jPNTlYrodTtMzqRJU3HQrDMx1miqa7IwU/idqmY8G3tWT1ut8uvOJ55
 yoLwMoxcJBu0+Dttp1sCgzGqRSsS/t0oTAVYy35GVT4UP2eAwMB08ipX+YSvpblFBY/0
 IAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=06wVRBUw5sU6HeeBW+uzGWclrs60UMpE1NyO8Qk7/YY=;
 b=jyR8eLWewCdb3mkZs5AmrdI7bYmO99jetNjuqAzMATjw+gwDc0bsvpVyMnqvQFnQoF
 Jk5DCNM2bz1YhYX3hfVafEcTH6RaZV0g/N1WxtUeuXH4MiNWMhzmXeUfCWPTvnixQlfi
 s7TiJdGar7SlpuZidfDKq6PYOQj0oxph41fHpvRqrAWthsedjVrstjKPc/G4X/YQ+ngM
 hA8t/QD4FrcDCBSE/wLaNCrULMAC9SGZJuTs/EyMrksHRO/UUXgUFhKkpfAWkvVg45OO
 ABcRcXT6gbyAwX0mMaaI0MaVxtMjHOsbAa9xOpaDRsuWAwqHtN91FZY3r+DVCAucqJzK
 /lkA==
X-Gm-Message-State: AOAM530cz6M4j7qLl7vfhiKauDPeXt5SjRpHEVfkB1kCkTP5JAYx/TU1
 emrc9U1l0doQFKp1r6Fm6Mu4yK50NszW3SJouKnJb7Gik7E=
X-Google-Smtp-Source: ABdhPJyaWAJfuvQ5qJmv2QxaphDS1/PE7a4nmUeRCtiwOIllzJlabporD1fs8Ewl+NJ4r3b8f++1Hl3vby77EUlPaVU=
X-Received: by 2002:a62:7657:: with SMTP id r84mr27243754pfc.130.1593687425894; 
 Thu, 02 Jul 2020 03:57:05 -0700 (PDT)
MIME-Version: 1.0
References: <markpearson@lenovo.com>
 <20200629191748.3859-1-markpearson@lenovo.com>
 <CAHp75VeO5SzYs=kRh+BV_vydO7PTPLkmu8aiYXvSJFTewSTYwA@mail.gmail.com>
 <7d0e1dcc-7285-71e1-7125-604cb2630595@lenovo.com>
In-Reply-To: <7d0e1dcc-7285-71e1-7125-604cb2630595@lenovo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 2 Jul 2020 13:56:48 +0300
Message-ID: <CAHp75Vemyxv6KWBwAB+EyzvBRO_3OPaad9qCXdos_x8QhLupiw@mail.gmail.com>
To: Mark Pearson <markpearson@lenovo.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jqwu6-009zjM-NV
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH v4] platform/x86:
 thinkpad_acpi: lap or desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Nitin Joshi <njoshi1@lenovo.com>, bnocera@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Jul 2, 2020 at 1:45 PM Mark Pearson <markpearson@lenovo.com> wrote:
> On 7/2/2020 5:29 AM, Andy Shevchenko wrote:
> > On Mon, Jun 29, 2020 at 10:23 PM Mark Pearson <markpearson@lenovo.com> wrote:

...

> > You specifically added a new ABI, where is documentation? It's a show stopper.
> Ah - my apologies I didn't know that was a requirement.
>
> Any pointers on where to add it? I looked in Documentation/ABI and I
> couldn't find anything around thinkpad_acpi to add this to.
> Should there be a sysfs-devices-platform-thinkpad_acpi file?
>
> If that's the case I'm happy to look at creating that but as a first
> time kernel contributor would you object if I took that on as a separate
> exercise rather than as part of this patch. I'm guessing it would need
> more time, care and reviewers from other contributors to the
> thinkpad_acpi.c driver

Since it's an old driver its ABI is listed here

https://elixir.bootlin.com/linux/latest/source/Documentation/admin-guide/laptops/thinkpad-acpi.rst

...

> > Why not simple
> >
> >   if (output < 0)
> >     return output;
> Agreed. I'll fix

> > I think your prototype should be
> >
> > int foo(cmd, *output);
> Looking at it again - I agree.

And after returning only error codes, you may do above as simple as

int ret;

ret = ...(.., &output);
if (ret)
  return ret;
...
return 0;

...

> As a minor note I think these all arose because of getting checkpatch to
> run cleanly. I prefer one line too and if that's your preference it
> works for me.

Checkpatch shouldn't complain (update it if it does).

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
