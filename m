Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C2021B4E7
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 10 Jul 2020 14:21:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jts1c-0002NN-ED; Fri, 10 Jul 2020 12:21:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jts1b-0002NG-Qt
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 12:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CTBlbIbJuXZzM/fT0KgwCGp0qaQ8YE6cwnWgRYPo0ks=; b=LfzMr8eBSqFib/FOg79RLzcotV
 yYA5mWUuuzk+zPLPujv6clBEp+qqINhKxZohKXlW6l8mi7zzEtqlINULczK7XI8ZwzdrzXyFXvS92
 Mr28EtrzlmUfkVIdXZN6EdzuctxsXeY+eKWqbrIuCKFwTYUiAkb6If57FwLMQUpT1OI4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CTBlbIbJuXZzM/fT0KgwCGp0qaQ8YE6cwnWgRYPo0ks=; b=J2FXRHWuM8Hj8Pk53lkgbWWed3
 lTRnwdZUJBStptGNZguM9Rg6QhFaxvk/ojlAvCN6Z0UQvi9YU54nz0pBw01lh9dyCTn8ZOqgl09G3
 LGeKRZx3bVZOR1NXcsCI8B6u37s/+3CjPFi50CofgG0PwslGXUQahsXwuww3wxPx8DXQ=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jts1Y-00G9Q3-2p
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 12:21:07 +0000
Received: by mail-pf1-f194.google.com with SMTP id x72so2469364pfc.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 10 Jul 2020 05:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CTBlbIbJuXZzM/fT0KgwCGp0qaQ8YE6cwnWgRYPo0ks=;
 b=rSmExF17TiQ8MXbmzxV7x4G/bZG9b+GqexM1KxTZGCcTTOrAvBys1cnboz1sx+c35e
 3XPCBIky1q3TuLVKZKmsi/PuKAVBHnOBR6pIkjWfMLfr+cghuwgJgwfSf8Of65zCvTMW
 fdt53J7ZS15ydhgK9nfSEN/0/K5mKlV6Z0SnyodSEdwuZM3iT6rdkspjk+1APW+cSKyh
 JyE2xv4aANOhgxHQEIGZP5OfXbwSoHR6Zm2M9XJRelTFWUCoLFB3Qqw6bJzHTbo/Qac7
 nMFYjQ1M78JAnH1bflyhJGOxeWogImKPnaskNz85lJUpE+fz+1woI4VcpAgBD2hEoqW3
 mhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CTBlbIbJuXZzM/fT0KgwCGp0qaQ8YE6cwnWgRYPo0ks=;
 b=Kc5JtkOdNtGrz+70EDDTOvnVD4c/PDkrhE8Cs6CZQx2bdU3QG5+h0vXAJai1UQKjKM
 2NA3YI23BYgMPG51GLMRnz0SA8SBAS3o2qnv816y2Lnz6Gw6y/yaW8Kk0r8I/Tx051VN
 eLIOV9mdvyYzqYrrVbd57WMwwyIu/o9UTsmVQJrOSYcLdEkWBs+eX5u78EL/1na2/xX0
 nN7203hIIJsYzRpTRI+rd0K6A3QIO8aJscd1SrDYQqL07Elz+dxMw+Ko1UaTIdGv1sld
 rLKt+omAZT4J5Yd7eeUMRx1BzX9TBoovLPj3QYGnxHw+LfTlXGS7AjsAkpaqbx+Gw8kW
 AUdQ==
X-Gm-Message-State: AOAM532Aii1RTTwxMLda0HGuW4H1+656T8tSNVocnmIhtD0L/U7qhnlb
 NgP6mjy7Np/fEVNZhWIWpRQEZTKT/Rva0R8HhlU=
X-Google-Smtp-Source: ABdhPJw2pJczX94PnHWVUkkElfzoUXElds8HC47tOH7/y4KCSnsZSIxqQa6Eea93xaluEcuSdUfBUwLx6KKaDTOgejc=
X-Received: by 2002:a63:ce41:: with SMTP id r1mr35496732pgi.203.1594383658474; 
 Fri, 10 Jul 2020 05:20:58 -0700 (PDT)
MIME-Version: 1.0
References: <markpearson@lenovo.com>
 <20200703012353.26413-1-markpearson@lenovo.com>
 <CAHp75Vcs15wGCzwW8Pq7AXyqQnvnopNdFP1nDE0nf+ZTz=9zFw@mail.gmail.com>
 <7c1698a6-ebd6-553d-a686-d9bd4e5a5e99@redhat.com>
In-Reply-To: <7c1698a6-ebd6-553d-a686-d9bd4e5a5e99@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 10 Jul 2020 15:20:41 +0300
Message-ID: <CAHp75Ve-qOs8VosoxEaHH1EnK-r16Sx0ki3uj14yZJWyuwC88w@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jts1Y-00G9Q3-2p
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
Cc: Sugumaran <slacshiminar@lenovo.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Mark Pearson <markpearson@lenovo.com>, Nitin Joshi <njoshi1@lenovo.com>,
 Bastien Nocera <bnocera@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Jul 10, 2020 at 11:00 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 7/9/20 8:02 PM, Andy Shevchenko wrote:
> > On Fri, Jul 3, 2020 at 4:24 AM Mark Pearson <markpearson@lenovo.com> wrote:
> >>
> >> Newer Lenovo Thinkpad platforms have support to identify whether the
> >> system is on-lap or not using an ACPI DYTC event from the firmware.
> >>
> >> This patch provides the ability to retrieve the current mode via sysfs
> >> entrypoints and will be used by userspace for thermal mode and WWAN
> >> functionality
> >
> > Hans, do you think it's good to have custom ABI for this? I think you
> > may be know better what types of ABI we already have for such thing.
>
> Actually, Mark asked me the same question before submitting his
> patch upstream. I'm never a fan of custom ABI for this. But for now
> the solution Lenovo has chosen to deal with thermal management
> issues on modern hw is unique to Lenovo and we do not have anything
> like this anywhere else.
>
> So for now I believe that a custom ABI is best.
>
> If we see this becoming a common feature on more platforms then we can
> design a generic API for it once we have a better idea how this would
> look like when implemented by others and then thinkpad_acpi can easily
> add support for the new generic interface, while keeping its own
> custom interface for backward compatibility.

Thank you very much for the elaborative comment, appreciated!

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
