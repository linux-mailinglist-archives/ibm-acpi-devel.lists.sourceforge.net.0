Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 847088A6632
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Apr 2024 10:33:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rweFd-0000vl-Np;
	Tue, 16 Apr 2024 08:33:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rweFb-0000vd-Ub
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 16 Apr 2024 08:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bzpK2jyxFnbS3uykXAlBWfyvSN7g3DKEoILwHz1vuj8=; b=PSML4zt3VAN+DIqK6a4rF8hg8C
 yEGLJYAauL1yXBx1uIcD7aJ5DTBOq1QAQ02jDBXQqAYRB7sgDqS2UjiwSguvftgewDl/AcB9Rk8Ee
 9nsvBUKzl5CuBgl6KNPnUg69SPQlqourZCqN6h4VdiJjNxjXCEiuEqW2IqnEYJ/RmM7w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bzpK2jyxFnbS3uykXAlBWfyvSN7g3DKEoILwHz1vuj8=; b=DPO/vKfnPqCcjiLq1l4U2c5BJq
 2m8UFI6dwTwLyvHnzCVlOWRYChssisTD56ESLRNgrotgU/ds2MN7Gy/PmlPL6WQfVNrvbSyBuq8fI
 6bTXtQ6E83edPAYolwkBgwCC1HNc9jjib/Vd3NAuHQGa4c/gZ9aZ8NRpB0j4v9lySexQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rweFb-0000j2-B7 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 16 Apr 2024 08:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713256385;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bzpK2jyxFnbS3uykXAlBWfyvSN7g3DKEoILwHz1vuj8=;
 b=i7TisAt0sYOwy3NWXB+rsDk+5mls8A1o3zbSKiBSfrVxNS0WjDkjsVcB0Ax8cTCZWk9E73
 xfvCpyGpDdExN3idFkt2S1SraTqJ5CNXb4h5jlBFSak+GSjrPIqM8xtVR/iPyDc3xMiqQ3
 aJYpP59sqwkKhmETKg8Tp6Rj29RkBlw=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-531-dxq2tJXPPOOvqws2cHkFMA-1; Tue, 16 Apr 2024 04:33:03 -0400
X-MC-Unique: dxq2tJXPPOOvqws2cHkFMA-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-56e6ecbf5c6so2449243a12.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 16 Apr 2024 01:33:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713256382; x=1713861182;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bzpK2jyxFnbS3uykXAlBWfyvSN7g3DKEoILwHz1vuj8=;
 b=VVSYIlWFK6oXvKIy5RsBjEwWXvpC3huiGdptWTjuK+nUQFT/+npanPl4euLxw9F6DR
 R5VBcsFRryw2ahEBwiCoY0nsVJcVzKCPuCa49UBD1uTSEKWzpU6s5xa1ojYpOU4qJUiH
 jQsYOmxqujl3HKI+IjtjL8m1wdBGSvofgPFdC6Wg/iL0fGvgcKEb/uJv3ZKSW97DAwyF
 zHLbGUSNals2XFJVdWCIZIS/hmMZYtJbFhvhYQ/S9ylEkin/1blxcO5qfsoqMTjXqtPR
 OtqEzj7/0avnvihQcTnifgeXn5yeyzQd0Dvn2p1RTP0dYIwVK83LhQfAan5i0LRFtbaZ
 PcOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1maFM5Ot2WufGp7ezKwKc6JqYwjyuU2F9HhwHDoO6Kx+A1NHwAZLB8so3EOUktY3v/NS0IbcPYNMu89Hknp/kvWO63NMIKf7QgJSzpSj0QhQ3kQ4=
X-Gm-Message-State: AOJu0YyS2smAmDHndldZOOtMWocjNmh8nlgjExkZpHAXwp7tMM3ThkrL
 V9ZdV5Z96p60vwyJZen/YwDfCOHw3jexR8VeyAX9dxEKjE82fWrTS60oWRn51L1Rz0qgNxERRQo
 AB7ezCVqax1fxnd6vpP1RnFjpdYA9RSZxLqWbk7qEQ1PAPfE63JV9cu0qsrbSvYelQwYPOeMQ
X-Received: by 2002:a50:d716:0:b0:56e:63d3:cb3e with SMTP id
 t22-20020a50d716000000b0056e63d3cb3emr8580029edi.41.1713256382593; 
 Tue, 16 Apr 2024 01:33:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmGRIbPaa1zBElQ+wLeSk/BgoY6QqwrgiNVIehp0etno1auNVqL5G4D3OtM6pxepLqXW5HPA==
X-Received: by 2002:a50:d716:0:b0:56e:63d3:cb3e with SMTP id
 t22-20020a50d716000000b0056e63d3cb3emr8580010edi.41.1713256382220; 
 Tue, 16 Apr 2024 01:33:02 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 l3-20020a056402124300b00570229afc16sm2671144edw.7.2024.04.16.01.33.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Apr 2024 01:33:01 -0700 (PDT)
Message-ID: <27b1b6cf-759c-4778-a53c-5d01442120b7@redhat.com>
Date: Tue, 16 Apr 2024 10:33:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
 <Zh2CtKy1NfKfojzS@google.com>
 <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
 <Zh2G85df29tPP6OK@google.com>
 <539776c5-6243-464b-99ae-5b1b1fb40e4b@app.fastmail.com>
 <Zh2wO0Bnyr8vFSpc@google.com>
 <7de52ec3-86f3-4a1d-ac87-a106ae1acb5d@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <7de52ec3-86f3-4a1d-ac87-a106ae1acb5d@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 4/16/24 1:57 AM, Mark Pearson wrote: > Hi Dmitry,
 > > On Mon, Apr 15, 2024, at 6:54 PM, Dmitry Torokhov wrote: >> On Mon, Apr
 15, 2024 at 04:28:19PM -0400, Mark Pearson wrote: >>> Hi >>> >>> On Mon [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rweFb-0000j2-B7
Subject: Re: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap
 and system debug info keycodes
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On 4/16/24 1:57 AM, Mark Pearson wrote:
> Hi Dmitry,
> 
> On Mon, Apr 15, 2024, at 6:54 PM, Dmitry Torokhov wrote:
>> On Mon, Apr 15, 2024 at 04:28:19PM -0400, Mark Pearson wrote:
>>> Hi
>>>
>>> On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote:
>>>> On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote:
>>>>> Hi,
>>>>>
>>>>> On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
>>>>>> On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
>>>>>>>
>>>>>>> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
>>>>>>
>>>>>> Please see my response to Peter's letter. I think it very much depends
>>>>>> on how it will be used (associated with the pointer or standalone as it
>>>>>> is now).
>>>>>>
>>>>>> For standalone application, recalling your statement that on Win you
>>>>>> have this gesture invoke configuration utility I would argue for
>>>>>> KEY_CONFIG for it.
>>>>>
>>>>> KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
>>>>> the GNOME/KDE control center/panel and I believe that at least GNOME
>>>>> comes with a default binding to map KEY_CONFIG to the control-center.
>>>>
>>>> Not KEY_CONTROLPANEL?
>>>>
>>>> Are there devices that use both Fn+# and the doubleclick? Would it be an
>>>> acceptable behavior for the users to have them behave the same?
>>>>
>>> Catching up with the thread, thanks for all the comments.
>>>
>>> For FN+N (originally KEY_DEBUG_SYS_INFO) the proposal was to now use
>>> KEY_VENDOR there. My conclusion was that this is targeting vendor
>>> specific functionality, and that was the closest fit, if a new keycode
>>> was not preferred.
>>
>> Fn+N -> KEY_VENDOR mapping sounds good to me.
>>
>>>
>>> For the doubletap (which is a unique input event - not related to the
>>> pointer) I would like to keep it as a new unique event. 
>>>
>>> I think it's most likely use would be for control panel, but I don't
>>> think it should be limited to that. I can see it being useful if users
>>> are able to reconfigure it to launch something different (browser or
>>> music player maybe?), hence it would be best if it did not conflict
>>> with an existing keycode function. I also can't confirm it doesn't
>>> clash on existing or future systems - it's possible.
>>
>> So here is the problem. Keycodes in linux input are not mere
>> placeholders for something that will be decided later how it is to be
>> used, they are supposed to communicate intent and userspace ideally does
>> not need to have any additional knowledge about where the event is
>> coming from. A keyboard either internal or external sends KEY_SCREENLOCK
>> and the system should lock the screen. It should not be aware that one
>> device was a generic USB external keyboard while another had an internal
>> sensor that recognized hovering palm making swiping motion to the right
>> because a vendor decided to make it. Otherwise you have millions of
>> input devices all generating unique codes and you need userspace to
>> decide how to interpret data coming from each device individually.
>>
>> If you truly do not have a defined use case for it you have a couple
>> options:
>>
>> - assign it KEY_RESERVED, ensure your driver allows remapping to an
>>   arbitrary keycode, let user or distro assign desired keycode to it
>>
>> - assign KEY_PROG1 .. KEY_PROG4 - pretty much the same - leave it in the
>>   hand of the user to define a shortcut in their DE to make it useful
>>
>>>
>>> FWIW - I wouldn't be surprised with some of the new gaming systems
>>> we're seeing (Steamdeck, Legion-Go, etc), that a doubletap event on a
>>> joystick might be useful to have, if the HW supports it?
>>
>> What would it do exactly? Once we have this answer we can define key or
>> button code (although I do agree that game controller buttons are
>> different from "normal" keys because they map to the geometry of the
>> controller which in turn defines their commonly understood function).
>>
>> But in any case you would not reuse the same keycode for something that
>> is supposed to invoke a configuration utility and also to let's say
>> drop a flash grenade in a game.
>>
> 
> Understood.
> 
> I don't see a path forward within your stated parameters. I did not realise that there were such limitations, so my apologies for wasting everybody's time, and thank you for your patience and guidance.
> 
> I will drop this patch from the series and proceed using existing defined codes only.
> 
> Hans, I'll need to rejig things a bits but I have some ideas and I think I can make it work and stay within the pdx86 tree, which will make it simpler.

Ok this sounds good to me. For Fn + N using KEY_VENDOR sounds good for
me and for the doubletap any one of KEY_CONFIG/KEY_CONTROLPANEL/KEY_INFO/KEY_PROG1
or some other suitable KEY_foo define works for me.

Regards,

Hans





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
