Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943059985F
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 19 Aug 2022 11:21:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oOyBc-0008O0-Hg;
	Fri, 19 Aug 2022 09:21:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1oOyBY-0008NW-F7
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 19 Aug 2022 09:21:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1IbbuZ/sOEyv7Ff85tiaeE6QSXFpWukZ2njJ70+6dh0=; b=ETC/kU2dANs1BvZ7QU5eqNd/B3
 XIo43haNLEHi/fyW5uGgyJ+JqVz3fdVfwqCRLr0t34ArFYl2yqDJVhN1Mm1TOFgpSDman7ePBZhdC
 /xqdc0HxW6gYreOeKZBExpDwU/hPOI0+/NSF9jiiW0ixXOWY+krpg7cS4JFaK376CiRI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1IbbuZ/sOEyv7Ff85tiaeE6QSXFpWukZ2njJ70+6dh0=; b=IAa7ccvT1BphlbsiruXdEUZ0CF
 X3SxsmbfUHATIEDJd0zuOBsIkAlgLS8JJXfmYdAoaGUTTLqdm4ycKqO2fg6uP9jhV3UNPamR1xNcp
 AU3gqHNvk3niePIlpbd910IYkxPKGx1V7S/HTFq/hjJwdSvC6sT5lCXgeTIrORIyQGKU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oOyBW-008zlU-MT for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 19 Aug 2022 09:21:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660900852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1IbbuZ/sOEyv7Ff85tiaeE6QSXFpWukZ2njJ70+6dh0=;
 b=OdX83WtBrtpdgVOZODzk9IGBFZ8YwU+Lm+m1snPnbqZC1Q1/1A5rTBHy1eg1FVdwfJDymZ
 dFmsFnZkmy39NKpDXOV5KSf7jdlY0iGj9AOBSxQDNATDb5DUeeLOl2mD9wvFM2e0FhUCvh
 oVpQ8KnIQe70r1kqAivFYrNudiB/CCY=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-582-LZTjj_noNmeXYKPfbiSOmg-1; Fri, 19 Aug 2022 05:20:51 -0400
X-MC-Unique: LZTjj_noNmeXYKPfbiSOmg-1
Received: by mail-ej1-f72.google.com with SMTP id
 ga16-20020a1709070c1000b007331af32d3aso1293766ejc.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 19 Aug 2022 02:20:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=1IbbuZ/sOEyv7Ff85tiaeE6QSXFpWukZ2njJ70+6dh0=;
 b=Ta5V+Jbeg8UuFAylgwaf9rl5P27WvO3Ro9xawPrJpq/8lBo63aoMJImjCApHgKJI9o
 inG5LdgiRSUZtShm5fYbGRYjYCC8oSeLJ9tWQpDs9B0E2gVeAACBknSJmn4EQmvj4aUn
 /OnaxHAbDtno2PknR5V1DrV6l/rTeA6ZQB7f7UMbDtBv9j89mEBjZPOnfVHr3Jm2t/ma
 8aa3AVUgqaV+C5SJM8pkH19husZ85pu1tJ19bYRAJoih0bQ0L7e0/Im/WYgLFqQzjMIs
 dOLkomtGe0cq1JPc7U55LlBDptCbCzZpAF/n5CSuqU1tZ1YSqlBXii7oNIA2rfXzMqNi
 NYFg==
X-Gm-Message-State: ACgBeo1iSWibcol5WndEsjbl+WHuKf/NufL9PMl6t/Pm7MVKEhBaW8zj
 Y1gm3odF57iJe3P3Ss+q1PomCMtDrnmqsjyqim+7KOxWZSwnMCMx23dYpE/XXct1Tj9XZKytSs4
 4pkX10A+YT9UaXz+vDK4jb8GqK3jAmz0DFqU=
X-Received: by 2002:a17:907:168d:b0:731:67eb:b608 with SMTP id
 hc13-20020a170907168d00b0073167ebb608mr4173256ejc.518.1660900850408; 
 Fri, 19 Aug 2022 02:20:50 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5W4/lZxNZ8ZjUFgSfxvralXr9HHWlIfklNUN8lChAnSN0KD0mbBjxMaqIPfftrDrw7U1CAVg==
X-Received: by 2002:a17:907:168d:b0:731:67eb:b608 with SMTP id
 hc13-20020a170907168d00b0073167ebb608mr4173245ejc.518.1660900850273; 
 Fri, 19 Aug 2022 02:20:50 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 j15-20020aa7c0cf000000b0043bbc9503ddsm2736545edp.76.2022.08.19.02.20.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Aug 2022 02:20:49 -0700 (PDT)
Message-ID: <9c6f4ac0-1e71-6b91-ae03-0795cd551c46@redhat.com>
Date: Fri, 19 Aug 2022 11:20:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Gross <markgross@kernel.org>, Maximilian Luz <luzmaximilian@gmail.com>,
 Divya Bharathi <divya.bharathi@dell.com>,
 Prasanth Ksr <prasanth.ksr@dell.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Dell.Client.Kernel@dell.com,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>
References: <20220818210058.7229-1-wsa+renesas@sang-engineering.com>
 <CAHp75VeM2q7wdnREoenyYpJ-tso2G6M-uyGFJGjPGL8hfUmzhQ@mail.gmail.com>
 <Yv9VhdVXqXhONj41@shikoro>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <Yv9VhdVXqXhONj41@shikoro>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 8/19/22 11:19, Wolfram Sang wrote: > >> I assume you
 are experimenting with coccinelle, so I have no objection >> to the change,
 but in PDx86 we usually want to have one patch per >> driver. Can yo [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oOyBW-008zlU-MT
Subject: Re: [ibm-acpi-devel] [PATCH] platform: move from strlcpy with
 unused retval to strscpy
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 8/19/22 11:19, Wolfram Sang wrote:
> 
>> I assume you are experimenting with coccinelle, so I have no objection
>> to the change, but in PDx86 we usually want to have one patch per
>> driver. Can you split?
> 
> I can split if you want.
> 
> I intentionally did group per subsystem, otherwise I would have sent out
> 1200+ patches. So, I chose to do it on subsystem level first and adapt
> later where this scheme does not fit.

See my reply to Andy, there is no need to split this further IMHO,
as you sat 1200 patches would be a bit much.

I will merge this as is during my next round of merges.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
