Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F31DB4134C2
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Sep 2021 15:47:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mSg6Y-0003lR-KA; Tue, 21 Sep 2021 13:46:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hdegoede@redhat.com>) id 1mSg6X-0003lE-2q
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Sep 2021 13:46:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JvAmThRyy+RUTWUi/6d03wzJkG7ApoxnCwQT7lVpJIU=; b=HyRMcOyyI4b1j1Ikxp9ZVmvHI8
 LBSzr0JLs8CQ76J5oEBGOEXA1/ZzDA3jzy58/XYcXLWrV9Qb9z/iBlSSCXpe406t4uF2hBKG0FXIv
 dkZdw266JTeNG6WfK6UcmrOmYdI2MT9BckdPemJ7JZWtHXgtIwe/JB6UgvVL9lsCvK4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JvAmThRyy+RUTWUi/6d03wzJkG7ApoxnCwQT7lVpJIU=; b=YX1mZTkF1ovZspklSjMJdd55S0
 HtyhpRcCK7w8kTMBD1S06HAcUY2j5X5N8jQe3yxQYiGk5s5ZDKI6384deizTS0Yo7ItZUI1ZzXJQM
 6nytMX88B3Y6hrggn5BQcvIsIeSlzzr9L6/GGSgcRG/3ADZk7F0Gg2Ent7Nunueyw7yM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSg6T-0000If-Rv
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Sep 2021 13:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632231987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JvAmThRyy+RUTWUi/6d03wzJkG7ApoxnCwQT7lVpJIU=;
 b=asfj9Bh0QAQexJ6ou7rb54xrCq3IdjF9eAvZTixLN+6pmgaexMpP2Dqq97a1RN5eifQbUt
 sMxB2GT0wHKvMWhWVlfbrayl7eVRsirRWTY/vqGM9uC2c1xmMbLDYmNWLeXhwfTUzFZZEa
 46OqU3dtbhQpB2azGuQV2tRbdvvUd2Q=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-3ak-SzlzPAePraorXhXxbA-1; Tue, 21 Sep 2021 09:46:25 -0400
X-MC-Unique: 3ak-SzlzPAePraorXhXxbA-1
Received: by mail-ed1-f69.google.com with SMTP id
 o18-20020a056402439200b003d2b11eb0a9so19057824edc.23
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 21 Sep 2021 06:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JvAmThRyy+RUTWUi/6d03wzJkG7ApoxnCwQT7lVpJIU=;
 b=EaHI6wP0MoxtyJ+0W9kTOLuKnDx5VeaZ1rgUYloorbVU0aq1aegEtUFt/KZOOcF6TE
 2QpoPG8ujWVLWEqrWCKcPrL9DY3KvUIvZaJrTzNsFMIqQY9VmPRuXobofuZyvvChk1rA
 0/UktbSzIW8pfyOuM1gcUUgc9Ol67fCKXb1774OjYWi+eSLrpGTzTJ4BeWkkH0BXk5VS
 ZS48oMwEA3vaWYERZ5byYNH7zPwX15/QqufCGIzTmCRxynb9mXFmPFlH7i3DPdciQ0Rl
 4cc11zddE5pFpG6+1xtAiEcEiPT8sYB6oFlGHhbxfwzyCNM3u5BgUX0DCqRdqBUgZ8eA
 DTww==
X-Gm-Message-State: AOAM531mf+gIyOR6JsO7qoOlmveO+9Dep0rpWcu/GCWUfiaw760RT76s
 5qOixBLpzNqyU89xt5q6bh2OPo1I57mUKo10IntYaUrv3wVtFd+R4cmA4BjcaP9iaEl9eUmv/He
 5RvbIBcWzozsSno+vg505X88oGTm3DFZdezU=
X-Received: by 2002:a05:6402:42d4:: with SMTP id
 i20mr35686281edc.348.1632231984275; 
 Tue, 21 Sep 2021 06:46:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxuMWC72gfkEbgCU16//CHfsCXwFHzIUTYNM/BMn7rMOz+GwSGYe5QXo4U0pKFB0Mb8mGLHOw==
X-Received: by 2002:a05:6402:42d4:: with SMTP id
 i20mr35686260edc.348.1632231984096; 
 Tue, 21 Sep 2021 06:46:24 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id z18sm8468335edq.29.2021.09.21.06.46.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Sep 2021 06:46:23 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>, Len Baker <len.baker@gmx.com>
References: <20210918150500.21530-1-len.baker@gmx.com>
 <202109192246.B438B42EF@keescook>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ba427967-cb1b-58a8-ec93-bd5ae89f58f8@redhat.com>
Date: Tue, 21 Sep 2021 15:46:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202109192246.B438B42EF@keescook>
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
 Content preview:  Hi, On 9/20/21 7:58 AM, Kees Cook wrote: > On Sat, Sep 18,
 2021 at 05:05:00PM +0200, Len Baker wrote: >> As noted in the "Deprecated
 Interfaces, Language Features, Attributes, >> and Conventions" document [...]
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
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
X-Headers-End: 1mSg6T-0000If-Rv
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
Cc: Mark Gross <mgross@linux.intel.com>, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 linux-hardening@vger.kernel.org, Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 9/20/21 7:58 AM, Kees Cook wrote:
> On Sat, Sep 18, 2021 at 05:05:00PM +0200, Len Baker wrote:
>> As noted in the "Deprecated Interfaces, Language Features, Attributes,
>> and Conventions" documentation [1], size calculations (especially
>> multiplication) should not be performed in memory allocator (or similar)
>> function arguments due to the risk of them overflowing. This could lead
>> to values wrapping around and a smaller allocation being made than the
>> caller was expecting. Using those allocations could lead to linear
>> overflows of heap memory and other misbehaviors.
>>
>> So, switch to flexible array member in the struct attribute_set_obj and
>> refactor the code accordingly to use the struct_size() helper instead of
>> the argument "size + count * size" in the kzalloc() function.
>>
>> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments
>>
>> Signed-off-by: Len Baker <len.baker@gmx.com>
>> ---
>>  drivers/platform/x86/thinkpad_acpi.c | 8 +++-----
>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>> index 50ff04c84650..ed0b01ead796 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -1008,7 +1008,7 @@ struct attribute_set {
>>
>>  struct attribute_set_obj {
>>  	struct attribute_set s;
>> -	struct attribute *a;
>> +	struct attribute *a[];
>>  } __attribute__((packed));
> 
> Whoa. I have so many questions... :)
> 
>>
>>  static struct attribute_set *create_attr_set(unsigned int max_members,
>> @@ -1020,13 +1020,11 @@ static struct attribute_set *create_attr_set(unsigned int max_members,
>>  		return NULL;
>>
>>  	/* Allocates space for implicit NULL at the end too */
>> -	sobj = kzalloc(sizeof(struct attribute_set_obj) +
>> -		    max_members * sizeof(struct attribute *),
>> -		    GFP_KERNEL);
>> +	sobj = kzalloc(struct_size(sobj, a, max_members + 1), GFP_KERNEL);
> 
> Whoa, this needs a lot more detail in the changelog if this is actually
> correct. The original code doesn't seem to match the comment? (Where is
> the +1?) So is this also a bug-fix?

Kees, at first I thought you were spot-on with this comment, but the
truth is more subtle. struct attribute_set_obj was:

struct attribute_set_obj {
        struct attribute_set s;
        struct attribute *a;
} __attribute__((packed));

Another way of looking at this, which makes things more clear is as:

struct attribute_set_obj {
        struct attribute_set s;
        struct attribute *a[1];
} __attribute__((packed));

So the sizeof(struct attribute_set_obj) in the original kzalloc call
included room for 1 "extra" pointer which is reserved for the terminating
NULL pointer.

Changing the struct to:

struct attribute_set_obj {
        struct attribute_set s;
        struct attribute *a[];
} __attribute__((packed));

Is equivalent to changing it to:

struct attribute_set_obj {
        struct attribute_set s;
        struct attribute *a[0];
} __attribute__((packed));

So the change in the struct declaration reduces the sizeof(struct attribute_set_obj)
by the size of 1 pointer, making the +1 necessary.

So AFAICT there is actually no functional change here.

Still I will hold off merging this until we agree on this :)

> (I see the caller uses +2? Why? It seems to be using each of hotkey_attributes,
> plus 1 more attr, plus a final NULL?)

The +2 is actually for 2 extra attributes (making the total number
of extra attributes +3 because the sizeof(struct attribute_set_obj)
already includes 1 extra). 

FWIW these 2 extra attributes are for devices with a
a physical rfkill on/off switch and for the device being
a convertible capable of reporting laptop- vs tablet-mode.

>>  	if (!sobj)
>>  		return NULL;
>>  	sobj->s.max_members = max_members;
>> -	sobj->s.group.attrs = &sobj->a;
>> +	sobj->s.group.attrs = sobj->a;
>>  	sobj->s.group.name = name;
> 
> The caller also never sets a name?

attribute_group.name may be NULL, I don't know
of (m)any drivers which actual set this to non NULL.

> Why is struct attribute_set_obj marked as __packed?

I have no clue, this seems completely unnecessary.

Len Baker can you submit a separate patch removing the useless
__packed ?

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
