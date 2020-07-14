Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B9421ECFC
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 Jul 2020 11:34:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jvHKA-00061k-Lg; Tue, 14 Jul 2020 09:34:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jvHK9-00061C-8X
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 09:34:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DD/NJLwq0bamxwrGSpcfsRcNRSxti2z+zdKscIzsmx8=; b=ROwh8zX8Ju6dXI3/D7Ig6Spvz9
 ryYFedkGTI7+mHaCMe9gV8sAuYjV523DL9t9OjfO09g5PUrKuisAuYTgZIZVRRkOsC1+s0vUvK3Cw
 HwQB7rSPjeH/sj4HZsTZkB9DgvNKF6H5ZrpYhKk81MX/PqGf6fWrwcHjUddmCIdiE5QE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DD/NJLwq0bamxwrGSpcfsRcNRSxti2z+zdKscIzsmx8=; b=C27sKwSfZWUn1CXzDqB/qTEE6J
 xP7aLIcCQiw/o7D9m57BNT8TYqMStPFqXly4WzMA9s6HvMy+OlW6KefWSfsnZyAEVluH5NJkCTSk7
 eP1tf1opM3Z8MH07+KJnmncPLzLojn1zk1xWbFQiGp8BGyK8DMdOGczOE8BNl7CBnZnM=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jvHK6-00HEHv-OE
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 09:34:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594719236;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DD/NJLwq0bamxwrGSpcfsRcNRSxti2z+zdKscIzsmx8=;
 b=aqpdiJTbxSyzYz5A5oM5qGBwedN6Z2XP4krUBoIdGuqI8/RAzX06Ic/k2gil0u0eVB9BgF
 XPC0VgGtHu9pkvLdW/6KV3xVbsDyanNFMG/LRh61N71X6F+eNZTXzOyyw6mSSvM9/PMCFP
 LajOPPz1TeZb7IFgq0b4C49EEgzFkkA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-84-idFFlXOJOBmt532bYKkKng-1; Tue, 14 Jul 2020 05:33:54 -0400
X-MC-Unique: idFFlXOJOBmt532bYKkKng-1
Received: by mail-wr1-f70.google.com with SMTP id a18so20931993wrm.14
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 Jul 2020 02:33:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DD/NJLwq0bamxwrGSpcfsRcNRSxti2z+zdKscIzsmx8=;
 b=eb3qmyIPHcyN+oZVGf8KHNs2fmN6Is/IgV5aSqUpdhUTzWqHwJQ9mKtkls7omdHfIv
 IH/kQvxv8eFnDjHGdeyXzJZiItJuBg+K9GkyIoPxIHw8qs1K86IXquNcQOpi60t8IlV5
 Qq8UDt7BUi8FqJQIWXhTLES8sIGHiI4e0serdRCVbytSIDINOuA4zn/CCOO+k7Mrs18t
 PL2bf4i5X8FhHQRJ6AewpIQQDUjrkp1D2o2aumMGyesUxQ74BWzR+qfyqB0V45TNEZTI
 AtUPx0TdxaxUC+7XNNugP1zrJ9jMPtTMocIuomxX7N9RjucHMC+bMmuo4G/GpCh3pkDc
 t8vw==
X-Gm-Message-State: AOAM533VoAdcPehNi4W6tT5Sikk0iJFF2axoKhZbSTClr30a+bkK3Xfi
 7CzUmWoxYVgwyD2PVtEweKpbZwJADnLiEq9bDYDiK78Jkk+i+Y6Awhf9xTHRh5FL61aROry2Dal
 IwdJW9Hu0CCUgFnXlBm8k1bBJzp6ohVlOdds=
X-Received: by 2002:adf:82f5:: with SMTP id 108mr4055593wrc.218.1594719233555; 
 Tue, 14 Jul 2020 02:33:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw1p/qy7933UavAoXwgcWhVOtbvoAlMJGxZoS0PdD7U/ByU3kIkzqqn/GZmkZDBKPgptMqMYw==
X-Received: by 2002:adf:82f5:: with SMTP id 108mr4055578wrc.218.1594719233348; 
 Tue, 14 Jul 2020 02:33:53 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id a12sm28522958wrv.41.2020.07.14.02.33.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 02:33:52 -0700 (PDT)
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20200714081510.6070-1-hdegoede@redhat.com>
 <CAHp75Vd6uGNw5m3-Tc1tkABLT_Wi7CtW2yo8+B5TpYV4U8XE9A@mail.gmail.com>
 <CAHp75Ve9HF4WVkiUA77s9LsN6d8oaFPRgjLi86FnDSHgmVvTNA@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <af1a7c41-071f-4c26-9a9a-7c6ffb5dde88@redhat.com>
Date: Tue, 14 Jul 2020 11:33:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAHp75Ve9HF4WVkiUA77s9LsN6d8oaFPRgjLi86FnDSHgmVvTNA@mail.gmail.com>
Content-Language: en-US
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jvHK6-00HEHv-OE
Subject: Re: [ibm-acpi-devel] [PATCH 5.8 regression fix] platform/x86:
 thinkpad_acpi: Revert: Use strndup_user() in dispatch_proc_write()
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
Cc: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 7/14/20 10:27 AM, Andy Shevchenko wrote:
> On Tue, Jul 14, 2020 at 11:21 AM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
>> On Tue, Jul 14, 2020 at 11:15 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>>
>>> Commit 35d13c7a0512 ("platform/x86: thinkpad_acpi: Use strndup_user()
>>> in dispatch_proc_write()") cleaned up dispatch_proc_write() by replacing
>>> the code to copy the passed in data from userspae with strndup_user().
>>
>> user space

Ack, do you want me to send a v2, or can you fix this up after applying.

>>> But strndup_user() expects a 0 terminated input buffer and the buffer
>>> passed to dispatch_proc_write() is NOT 0 terminated.
> 
> Second though, perhaps it's a simple wrong count parameter?
> strndup_user(..., min(count, PAGE_SIZE)) or so would work?

I honestly have not looked at a better fix and given that you've just come
up with 2 suggestions which may or may not work, combined with
where we are in the 5.8 cycle I believe it would be best to just
play it safe and go with the revert for 5.8.

If you then take a second attempt at cleaning this up for 5.9 and
send it to me, I can test it for you.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
