Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B7C6E65C6
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 18 Apr 2023 15:24:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1polJ2-0005Se-Sj;
	Tue, 18 Apr 2023 13:23:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1polJ1-0005SY-Pm
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 18 Apr 2023 13:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jtc3nZAFND4an9RKQCf6WUjcLwPZiFyLQ4c7U5Vc9Ig=; b=bWMMOyvAu/fae3ZHPu2NQCwYoW
 mD4WHxQEqbcgNNIL3Wt93w/x9cOEtvMMgaiXX2AQ4Kh0xieX4IX4fhWbhs3rTFeyLCzFsinliraCQ
 cGsFeg0MUVvlgmeKXnuHE1EthP+umTGrD2m81EJF0db9xaVrYEdboIBo0yAYk1RwbyN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jtc3nZAFND4an9RKQCf6WUjcLwPZiFyLQ4c7U5Vc9Ig=; b=nMo9F97JuWHvDnCYZpQrR4qH6i
 dss6gBlkAatbM6iLWeX8acygkgu/XSDBgiu/Mb5de/WGyxzvWZ4z3q81Sa9S+dyFlXpx0NUhC8B8M
 XhAdJyvh+bwz/CitbJWjh2GBGrf9vFl5WIuIfuq0YbALQfkjcwa3Q4m1ScZzD+SGsyvc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1polIv-0002Ms-Uh for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 18 Apr 2023 13:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681824192;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jtc3nZAFND4an9RKQCf6WUjcLwPZiFyLQ4c7U5Vc9Ig=;
 b=FurygbnOVWwz9wFio+w6uMdiQThZsof0NsMW1BSBpxtWyXlWgw6oUgOYpyJ210Nf0WBVjd
 gJOVGKVDoLD48+KMCCI9Xlh+OxJMmK4fGHh1XY2KtdBEwibK1IZnuDxqf69oHrkEGQhlrY
 DX8utYtWATs4GA9Vjlgr52SDe7Qv5dM=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-290-oeXbtyCYPHSm1FolXIyaSA-1; Tue, 18 Apr 2023 09:23:11 -0400
X-MC-Unique: oeXbtyCYPHSm1FolXIyaSA-1
Received: by mail-ej1-f70.google.com with SMTP id
 sz7-20020a1709078b0700b0095335508065so259698ejc.19
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 18 Apr 2023 06:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681824190; x=1684416190;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Jtc3nZAFND4an9RKQCf6WUjcLwPZiFyLQ4c7U5Vc9Ig=;
 b=IyWEIfiDjW13vvg/lBG+Ti34cbyNN8IMM8dlodoeft0uR/EqjQOsHgaNGV+cUcaiIv
 6IRn2N28+VwA0N5sV7E2U4NJKgUBpLE+ivHvrVq60/QlII0sEtpgH6VfCe3faGCVl0rG
 K3CZcbWivyeqB1IbCW7GWARshrbw6ayW1fKIWi1msYW+GEFRhdDHlbcS4wHrui9SsOGE
 tSNBtzxs/9b8r+clR5RQjCPuNdR4IMRCnod77A6KWloEOgSDRs+hc58Y7TKzPXnslzmQ
 m39Q+tpbkNTzJtS3wV67q8jqX+y0kqvSdMvs3O3r311anoBg+I+duiQCn/dIXV8bzYje
 gixg==
X-Gm-Message-State: AAQBX9c7YFhXdd+JmpDyE5AkPDTIKVJ3/7DofZzxrwdIriyjglLr7yhN
 8eGkbRvY12v26K/0i3u6wx4x62wCb4eIbMa71CCQa9MM0nDbD2XtJen3MGeYhfq4JLuka4XaXzv
 leH+ekIvSokmx1VXReM/cZ3ZH0nSRLh+lNIY=
X-Received: by 2002:a17:906:960e:b0:94f:12c0:4c8f with SMTP id
 s14-20020a170906960e00b0094f12c04c8fmr10554134ejx.50.1681824190472; 
 Tue, 18 Apr 2023 06:23:10 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZWhECLdD7gDfCcaJ0EnJEvlzniIBvYBElbDokcD2L4G4tBcqixe526x0PefHD4QbmGIShW7A==
X-Received: by 2002:a17:906:960e:b0:94f:12c0:4c8f with SMTP id
 s14-20020a170906960e00b0094f12c04c8fmr10554105ejx.50.1681824190093; 
 Tue, 18 Apr 2023 06:23:10 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 fl3-20020a1709072a8300b0094f396c7a7asm4348535ejc.214.2023.04.18.06.23.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Apr 2023 06:23:09 -0700 (PDT)
Message-ID: <831fe8e5-2fe2-7188-227d-2a6932313eb1@redhat.com>
Date: Tue, 18 Apr 2023 15:23:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 Daniel Bertalan <dani@danielbertalan.dev>
References: <20230414180034.63914-1-dani@danielbertalan.dev>
 <060c750b-f282-b1f4-2fcc-64fc3885f149@redhat.com>
 <a1229347-b5f3-8a1d-40a8-20beb863592a@gmail.com>
 <2739eb24-736f-6f59-70c5-d9975c354369@redhat.com>
 <c7LGto3wAWSkvfZaIEtB9_5EhTFe8ZdAOCKSZE8m8L18w0kJu2tms1RSdhrdUPBfHy5f-GMvxi_Etc5s8e7NOdF_xG4atmwco2QQ41bv9Sc=@danielbertalan.dev>
 <dd07686f-dd03-4efc-3dfe-5b568c6c854d@redhat.com>
 <TYZPR03MB59945171347BC248412EBEE6BD9D9@TYZPR03MB5994.apcprd03.prod.outlook.com>
 <ca210db5-2a2b-4962-8c28-e9b7d8cf6a59@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ca210db5-2a2b-4962-8c28-e9b7d8cf6a59@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/18/23 15:16,
 Mark Pearson wrote: >> Subject: [External]
 Re: [ibm-acpi-devel] [PATCH] platform/x86: >> thinkpad_acpi: Fix Embedded
 Controller access on X380 Yoga >> >> Hi, >> >> On 4/15/23 16:22, [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1polIv-0002Ms-Uh
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix
 Embedded Controller access on X380 Yoga
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
Cc: "Mark Gross>" <markgross@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 Liav Albani <liavalb@gmail.com>,
 "Henrique de Moraes Holschuh>" <hmh@hmh.eng.br>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/18/23 15:16, Mark Pearson wrote:
>> Subject: [External] Re: [ibm-acpi-devel] [PATCH] platform/x86: 
>> thinkpad_acpi: Fix Embedded Controller access on X380 Yoga
>>
>> Hi,
>>
>> On 4/15/23 16:22, Daniel Bertalan wrote:
>>> Hi,
>>>
>>> On Saturday, April 15th, 2023 at 15:30, Hans de Goede <hdegoede@redhat.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> On 4/15/23 15:24, Liav Albani wrote:
>>>>
>>>>> On 4/15/23 13:12, Hans de Goede wrote:
>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> On 4/14/23 20:02, Daniel Bertalan wrote:
>>>>>>
>>>>>>> On the X380 Yoga, the `ECRD` and `ECWR` ACPI objects cannot be used for
>>>>>>> accessing the Embedded Controller: instead of a method that reads from
>>>>>>> the EC's memory, `ECRD` is the name of a location in high memory. This
>>>>>>> meant that trying to call them would fail with the following message:
>>>>>>>
>>>>>>> ACPI: \_SB.PCI0.LPCB.EC.ECRD: 1 arguments were passed to a non-method
>>>>>>> ACPI object (RegionField)
>>>>>>>
>>>>>>> With this commit, it is now possible to access the EC and read
>>>>>>> temperature and fan speed information. Note that while writes to the
>>>>>>> HFSP register do go through (as indicated by subsequent reads showing
>>>>>>> the new value), the fan does not actually change its speed.
>>>>>>>
>>>>>>> Signed-off-by: Daniel Bertalan dani@danielbertalan.dev
>>>>>>> Interestig, this looks like a pretty clean solution to me.
>>>>>
>>>>> Daniel and I have looked in the DSDT ASL code and found a bunch of registers in high physical memory location (which is an ACPI OpRegion),
>>>>> and one of the registers had a bit called ECRD.
>>>>> However, there were many other registers that might be interesting as well, the problem is the short names in the ASL code (so we only see abbreviations essentially).
>>>>>
>>>>> While I do agree that adding this code is indeed a clean solution, if you (people that are dealing with Thinkpad laptops) know about cleaner way to access the embedded controller, I think it's preferable, because this way Daniel might be able to trigger the fan on that laptop so it will actually spin and will dissipate-out heat from the system, without the relying on the embedded controller to get into some sort of thermal state and then to trigger the fan.
>>>>
>>>>
>>>> Have you tried falling back to the ec_read() and ec_write() helpers
>>>> exported by the ACPI EC code ?
>>>>
>>>> The "first_ec" pointer used by these functions is exported too,
>>>> so you could try modifying thinkpad_acpi to use ec_read() and
>>>> ec_write() as fallback when first_ec is set (and the quirk
>>>> added by this patch triggers).
>>>
>>> This is basically what my patch does. If the ECRD/ECWR method handles
>>> are NULL, thinkpad_acpi's acpi_ec_{read,write} functions fall back to
>>> the regular ACPI EC helpers you mentioned.
>>
>> Ah I did not realize that. Ok that sounds good to me.
>>
>> I'll go and apply the patch then. To be on the save side I'm going
>> to only add this to -next, so that it gets some testing before
>> showing up in stable series. Once 6.4-rc1 is out you can then
>> send it to stable@vger.kernel.org to get it backported.
>>
>>> Speaking of which, does anyone know why these private helper functions
>>> exist in the first place? The code seems to use them interchangeably.
>>> Even in the fan control code, there are places where the regular EC
>>> helpers are called directly. Can we get away with always doing that?
>>
>> I assume that on some older models there is no standard ACPI EC device
>> in the ACPI tables, so there only ECRD/ECWR work. I guess that code-paths
>> which directly call ec_read() / ec_write() are only used on newer
>> models. But this does indeed seem inconsistent.
>>
>>> Back to the issue at hand, is there someone we could ask if the X380Y
>>> even supports manual fan control in the first place? My debugging
>>> efforts are starting to look like a wild goose chase.
>>>
>>> The thermal sensors and fan PWM readings now work, which is better
>>> than nothing, but it would be good to get to the bottom of this.
>>
>> Mark Pearson from Lenovo can hopefully help answer this, but I know
>> that he is quite busy atm. Hopefully Mark will get back to you when
>> he has some more bandwidth.
>>
> Sorry for the slow reply on this one.
> 
> I checked with the FW team and they confirmed on the x380 Yoga that the implementation is unique and not using the ECRD/WCWR ACPI methods. They didn't say why...but it's not expected to be something done again.
> 
> I had missed the question about fan control so didn't ask about that. Is there a reason you need to change the fans? It's generally not recommended as it can violate temperature specs and leads to all sorts of issues.
> 
> I don't know if the fact this is a one off makes this a better candidate as a quirk? To reduce the risk of breaking something on other platforms? But the code changes looked sensible to me.
> 
> I'll aim to do some builds with it in and test it on a few platforms - but I'm travelling next week so this week (and almost certainly the week after) are a bit hectic.

I just remembered that making thinkpad_acpi fan-control
actually requires passing a module-parameter, because as
said generally speaking leaving the fan on auto mode is best.

I wonder if that parameter was set when testing on
the X380 ?  I guess it was set since the actual
register was inspected and the changes were visible
there, right ?

Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
