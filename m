Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E08413656
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Sep 2021 17:39:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mShrH-0001rr-5y; Tue, 21 Sep 2021 15:38:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1mShrF-0001rV-LL
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Sep 2021 15:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JEHJIaeIrxQ7EDkWo18sxWISgbaZ5rdeC8twtOOBkO8=; b=T50KPRxKp3FJWb+iCUg0I9F+9r
 qd55YYvNbJYut/5zET4u5I82biytj5LhKJz/jV5KGKYiCYmwrAsGmyBIu6NvrV9mzGh76Z/nlL5Fy
 b06Zh8JrxjnPH8kRc2gHHwYlkgkM3v4Ry3TsPyzqPpsBzGu1Pg9cs28Li6y0iBbgrohA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JEHJIaeIrxQ7EDkWo18sxWISgbaZ5rdeC8twtOOBkO8=; b=mF7dn067//N3BzIT6YJCTH3kmp
 Hu/vGwok8iPUDjBCMbj4PZoxnTUtJuVJcski1FpT3bN5Zu5Pygb0baTKqEx2nk1kTU8NsFwmfODcN
 sV3KPmvRqQnwmtXda4DAxc+6LUV4NpJTu/7K5O9s0uLG1IM+3itvNmNgfJwVVfhr43yc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mShrC-0007Vx-Q0
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Sep 2021 15:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632238728;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JEHJIaeIrxQ7EDkWo18sxWISgbaZ5rdeC8twtOOBkO8=;
 b=Jm0QWwlUTCd/lcYWcjpUnPxs/Tdc2ArLWNJQ0HPNbmPR65ByAA2Za7yGY3UTZL933lPBRk
 /V+LSNOh9tNper+QFR86a/uFb9mNPpAtNOGTfgGeVd3Ua9SdkrYWOZywIKypgba/8F2ERa
 lPvHqddaBBPXcuZX2iKXFDqbb7C8+fo=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-OTiOrAzpM6KI6e21wzvzEA-1; Tue, 21 Sep 2021 11:38:42 -0400
X-MC-Unique: OTiOrAzpM6KI6e21wzvzEA-1
Received: by mail-ed1-f69.google.com with SMTP id
 2-20020a508e02000000b003d871759f5dso5567081edw.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 21 Sep 2021 08:38:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JEHJIaeIrxQ7EDkWo18sxWISgbaZ5rdeC8twtOOBkO8=;
 b=IG1zZootCMjGgg+7di2VFLnf/mZSqFRlkewfH21mpAYQpmMGvazA3C062bfVSC+kjC
 Crok/WuXxHXBYbcPlqLAms7fTvIvdUdYucia/DE8tM4UZWqyL33TY84USGDpvKvxEFle
 RrgrZwSb+uIMdl+tlBxgNrKCVsdelBafc3tHe3LyAD9OvezlzTqKM6goXB2ju2PUFoWQ
 dMuYbvYPi1gu6+4SDOMInU4XXKMg78UVyx6qknyl8tqiJMW+b27tBJxm7yUX8WPhVVbg
 lz1/1SmtcSDOqv/hE6qcct56/SRVAZLF1Q9d2dQtzJutR00tl5fY9MOHZLsq7kQduJlh
 sVUw==
X-Gm-Message-State: AOAM533JSZx2sYS+33qotUoz2nPD5USNjEUnH3J73S4UD/6unulzC0b2
 6GjbesZ4cJN9/crzPKmx6fdY1hGIRhikdLWeFbcBolQ0CIuDqzEYLYXbEXzvtzzbx/RWS8JmY+b
 nRZfIKB1tjD7lyw8sg2ET9apZhIfHPU4l6hw=
X-Received: by 2002:a17:906:c25a:: with SMTP id
 bl26mr35721350ejb.345.1632238721037; 
 Tue, 21 Sep 2021 08:38:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxr7TElEIy2EEm4/rx64vptbKgUH9jeDU8LRqXITNmphVxELjt4tx7Ldiqec0QA4sPUdepPOA==
X-Received: by 2002:a17:906:c25a:: with SMTP id
 bl26mr35721329ejb.345.1632238720807; 
 Tue, 21 Sep 2021 08:38:40 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id b14sm8632615edy.56.2021.09.21.08.38.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Sep 2021 08:38:40 -0700 (PDT)
To: Greg KH <greg@kroah.com>
References: <20210918150500.21530-1-len.baker@gmx.com>
 <202109192246.B438B42EF@keescook>
 <ba427967-cb1b-58a8-ec93-bd5ae89f58f8@redhat.com>
 <YUn3F9HtgrpN9sSM@kroah.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <725ac392-642b-f57d-a286-d662eaa7d2a2@redhat.com>
Date: Tue, 21 Sep 2021 17:38:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YUn3F9HtgrpN9sSM@kroah.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 9/21/21 5:15 PM, Greg KH wrote: > On Tue, Sep 21, 2021
 at 03:46:23PM +0200, Hans de Goede wrote: >> Hi, >> >> On 9/20/21 7:58 AM,
 Kees Cook wrote: >>> On Sat, Sep 18, 2021 at 05:05:00PM +0200, Len [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mShrC-0007Vx-Q0
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Prefer
 struct_size over open coded arithmetic
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
Cc: Mark Gross <mgross@linux.intel.com>, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Len Baker <len.baker@gmx.com>, linux-hardening@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 9/21/21 5:15 PM, Greg KH wrote:
> On Tue, Sep 21, 2021 at 03:46:23PM +0200, Hans de Goede wrote:
>> Hi,
>>
>> On 9/20/21 7:58 AM, Kees Cook wrote:
>>> On Sat, Sep 18, 2021 at 05:05:00PM +0200, Len Baker wrote:
>>>> As noted in the "Deprecated Interfaces, Language Features, Attributes,
>>>> and Conventions" documentation [1], size calculations (especially
>>>> multiplication) should not be performed in memory allocator (or similar)
>>>> function arguments due to the risk of them overflowing. This could lead
>>>> to values wrapping around and a smaller allocation being made than the
>>>> caller was expecting. Using those allocations could lead to linear
>>>> overflows of heap memory and other misbehaviors.
>>>>
>>>> So, switch to flexible array member in the struct attribute_set_obj and
>>>> refactor the code accordingly to use the struct_size() helper instead of
>>>> the argument "size + count * size" in the kzalloc() function.
>>>>
>>>> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments
>>>>
>>>> Signed-off-by: Len Baker <len.baker@gmx.com>
>>>> ---
>>>>  drivers/platform/x86/thinkpad_acpi.c | 8 +++-----
>>>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>>> index 50ff04c84650..ed0b01ead796 100644
>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>> @@ -1008,7 +1008,7 @@ struct attribute_set {
>>>>
>>>>  struct attribute_set_obj {
>>>>  	struct attribute_set s;
>>>> -	struct attribute *a;
>>>> +	struct attribute *a[];
>>>>  } __attribute__((packed));
>>>
>>> Whoa. I have so many questions... :)
>>>
>>>>
>>>>  static struct attribute_set *create_attr_set(unsigned int max_members,
>>>> @@ -1020,13 +1020,11 @@ static struct attribute_set *create_attr_set(unsigned int max_members,
>>>>  		return NULL;
>>>>
>>>>  	/* Allocates space for implicit NULL at the end too */
>>>> -	sobj = kzalloc(sizeof(struct attribute_set_obj) +
>>>> -		    max_members * sizeof(struct attribute *),
>>>> -		    GFP_KERNEL);
>>>> +	sobj = kzalloc(struct_size(sobj, a, max_members + 1), GFP_KERNEL);
>>>
>>> Whoa, this needs a lot more detail in the changelog if this is actually
>>> correct. The original code doesn't seem to match the comment? (Where is
>>> the +1?) So is this also a bug-fix?
>>
>> Kees, at first I thought you were spot-on with this comment, but the
>> truth is more subtle. struct attribute_set_obj was:
>>
>> struct attribute_set_obj {
>>         struct attribute_set s;
>>         struct attribute *a;
>> } __attribute__((packed));
>>
>> Another way of looking at this, which makes things more clear is as:
>>
>> struct attribute_set_obj {
>>         struct attribute_set s;
>>         struct attribute *a[1];
>> } __attribute__((packed));
>>
>> So the sizeof(struct attribute_set_obj) in the original kzalloc call
>> included room for 1 "extra" pointer which is reserved for the terminating
>> NULL pointer.
>>
>> Changing the struct to:
>>
>> struct attribute_set_obj {
>>         struct attribute_set s;
>>         struct attribute *a[];
>> } __attribute__((packed));
>>
>> Is equivalent to changing it to:
>>
>> struct attribute_set_obj {
>>         struct attribute_set s;
>>         struct attribute *a[0];
>> } __attribute__((packed));
>>
>> So the change in the struct declaration reduces the sizeof(struct attribute_set_obj)
>> by the size of 1 pointer, making the +1 necessary.
>>
>> So AFAICT there is actually no functional change here.
>>
>> Still I will hold off merging this until we agree on this :)
> 
> First off, why is a single driver doing so many odd things with
> attribute groups?  Why not just use them the way that the rest of the
> kernel does?  Why does this driver need this special handling and no one
> else does?

The thinkpad_acpi driver carries a lot of legacy with it.
So in general we are careful with making changes because some people
still use quite old ThinkPad-s and it is tricky to make sure we
don't break stuff on older models. So yeah there is some cruft in
a bunch of places in this driver.

In this case it seems that cleaning things up is a straight forward fix
though, so we really should do so.

> 
> I think the default way of handling if an attribute is enabled or not,
> should suffice here, and make things much simpler overall as all of this
> crazy attribute handling can just be removed.
> 
> Bonus would also be that I think it would fix the race conditions that
> happen when trying to create attributes after the device is bound to the
> driver that I think the existing driver has today.
> 
>>> (I see the caller uses +2? Why? It seems to be using each of hotkey_attributes,
>>> plus 1 more attr, plus a final NULL?)
>>
>> The +2 is actually for 2 extra attributes (making the total number
>> of extra attributes +3 because the sizeof(struct attribute_set_obj)
>> already includes 1 extra). 
>>
>> FWIW these 2 extra attributes are for devices with a
>> a physical rfkill on/off switch and for the device being
>> a convertible capable of reporting laptop- vs tablet-mode.
> 
> Again, using the default way to show (or not show) attributes should
> solve this issue.  Why not just use that instead?

I agree, moving to a "fixed" attribute_group, with an is_visible
check for the optional attributes would be a much better fix and
allow removal of a whole bunch of custom code.

If anyone following this thread could submit a patch doing that,
then that would be great.

>>>>  	if (!sobj)
>>>>  		return NULL;
>>>>  	sobj->s.max_members = max_members;
>>>> -	sobj->s.group.attrs = &sobj->a;
>>>> +	sobj->s.group.attrs = sobj->a;
>>>>  	sobj->s.group.name = name;
>>>
>>> The caller also never sets a name?
>>
>> attribute_group.name may be NULL, I don't know
>> of (m)any drivers which actual set this to non NULL.
> 
> It is used by some, that is how you can put all of the attributes in a
> subdirectory automatically.  No idea if that's needed here...
> 
> All attributes for this driver are documented in Documentation/ABI/,
> right? :)

I'm not sure if all attributes are documented, but a lot of them
(including all recently added ones) are documented in:
Documentation/admin-guide/laptops/thinkpad-acpi.rst

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
