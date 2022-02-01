Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BB84A5E16
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  1 Feb 2022 15:18:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nEtyV-0006BP-KR; Tue, 01 Feb 2022 14:17:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1nEtyT-0006BI-LA
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 01 Feb 2022 14:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4wM594E1c//tLjmj62U5O4f0BYe1FlRQuVGCkPTlZ/A=; b=E9w4WowOEvllnvdjf2t1ovlX8c
 SjXP+MyHP4mH24ZMIoPMYm60pI9NrWJemvkMo1BHOGATbAeMpn46c8XKQdBzVf+dLKBGtgzbFcguW
 NsF+aD2dgF/wpXU06TBBR60Lor5Q/19mXYHv1yvYdMvbsRkaSEpvYcv3jaBS6Sa/fJ1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4wM594E1c//tLjmj62U5O4f0BYe1FlRQuVGCkPTlZ/A=; b=Ypw2qYViTtLq0pzidwtmXNUaoQ
 JIK3m5W2FEznq25LVwWTAqpvQKNgCvU9KBL+Moc4SlBQjBxjSr83gstbAmLkCH/mU748q9NDk5s2P
 uDbfl2UDoiK+cVLRybF5GQD7PV+f3qy9lWQxwyhP16BnZbx6ZkdJyYAM4Pc4NA1sWb5U=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nEtyR-0001iG-C0
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 01 Feb 2022 14:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643725049;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4wM594E1c//tLjmj62U5O4f0BYe1FlRQuVGCkPTlZ/A=;
 b=WTYCzU9ifEc98CCnuFxRfpZ6bsp3nPYx8+RhfiVdwKvvdYJt+Vv1o2gc0asGmslEf8mAWr
 yXZZC5HTCfAx0UsxHFMKE/q5q0PvlrLIPuZ1/xn6LEDqlwFFt7byLEXEhyJmnxQorPwLqG
 vRMDcxbZ/JJhD+laukp9ZNEAFJoCojE=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-5JpQb1QlOdqoLg3rrzgCmg-1; Tue, 01 Feb 2022 09:17:26 -0500
X-MC-Unique: 5JpQb1QlOdqoLg3rrzgCmg-1
Received: by mail-ej1-f70.google.com with SMTP id
 v2-20020a170906292200b006a94a27f903so6640525ejd.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 01 Feb 2022 06:17:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=4wM594E1c//tLjmj62U5O4f0BYe1FlRQuVGCkPTlZ/A=;
 b=cIT4ml3/WLWwCKlkP1dpxVPbhMwgUEuwIjdkgx/+OVMnnA0IzgcQmq5HXEmMIe2VWN
 BGdlz8YRDZO7jOakohcg7iGnV/0sYAtp76cj4/UI475eD3gmoD8zYAlgkmJ6gXwXIXTJ
 BVwGnvc0/ir2n0IMoW1xTjVusggLtdTybIY5Hwaxtm++xeQn3ej8HwpsmtS3mSMYJBzl
 2sg4vzPE0XsENvbLmMt3MwQE5CsZOhLd1dZnnvRveC+AQOYCpLLgr3Eu6ZB+fOqykb6G
 E1bwHNBDWVgzIQgAeuCp7ZVtegvmBaGV28eOaZl9zkuv2kj6CmgBhjM++sDgcbIrKxZ9
 mbrg==
X-Gm-Message-State: AOAM5314kGpKBLA6Hw5pMkuQ+Fk8W7kILG5uNMEzZf8Ivy0qqUEGv0Gq
 BKqFfChzSWyVF0sQKuE0ek+ATG6zxYiQv2u3+lLCoRML003mRGcFcUAbQpA89fugtw0U/eYfdak
 RiEdxjQepMj99U0EDC+BeLOoz5v7/Bjf7NE4=
X-Received: by 2002:a17:907:3f96:: with SMTP id
 hr22mr21313138ejc.594.1643725045386; 
 Tue, 01 Feb 2022 06:17:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyORpBSz/JKposZR7BW2TYw8TYhREbZzEtINtBaQonWuJagaeu6BR2dpntNuPLeVdyP2pnDIw==
X-Received: by 2002:a17:907:3f96:: with SMTP id
 hr22mr21313122ejc.594.1643725045175; 
 Tue, 01 Feb 2022 06:17:25 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id w27sm14816983ejb.90.2022.02.01.06.17.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Feb 2022 06:17:24 -0800 (PST)
Message-ID: <2e362538-7402-9843-ff97-c759be2d8bfd@redhat.com>
Date: Tue, 1 Feb 2022 15:17:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
From: Hans de Goede <hdegoede@redhat.com>
To: David Dreschner <david@dreschner.net>,
 ibm-acpi-devel@lists.sourceforge.net, Mark Pearson <markpearson@lenovo.com>
References: <ec04aa1e-1ac3-edbc-ac08-eec15ec5c952@dreschner.net>
 <aceddce7-6c43-967c-fadd-fa307068e916@redhat.com>
 <f9ef9270-159e-7c7d-c6b3-72a2196933b2@redhat.com>
In-Reply-To: <f9ef9270-159e-7c7d-c6b3-72a2196933b2@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi David, On 1/17/22 10:55, Hans de Goede wrote: > Hi David, 
 > > On 1/11/22 12:09, Hans de Goede wrote: >> Hi David, >> >> On 1/4/22 04:41, 
 David Dreschner wrote: >>> Hey guys, >>> >>> the attached patch update [...]
 Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nEtyR-0001iG-C0
Subject: Re: [ibm-acpi-devel] [PATCH] Update whitelisted ThinkPad models
 with dual fan support in thinkpad_acpi
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
Cc: platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi David,

On 1/17/22 10:55, Hans de Goede wrote:
> Hi David,
> 
> On 1/11/22 12:09, Hans de Goede wrote:
>> Hi David,
>>
>> On 1/4/22 04:41, David Dreschner wrote:
>>> Hey guys,
>>>
>>> the attached patch updates the list of whitelisted ThinkPad models with dual fan support.
>>>
>>> The changes were tested on my ThinkPad T15g Gen 2. According to Lenovo, the BIOS version is the same for the P15 Gen 2 and the P17 Gen 2 ( https://pcsupport.lenovo.com/us/en/downloads/ds551321-bios-update-utility-bootable-cd-for-windows-10-64-bit-thinkpad-p15-gen-2-p17-gen-2-t15g-gen-2 ).
>>>
>>> I also added the P15v Gen 2 and T15p Gen 2 to the whitelist based on the BIOS version listed on the Lenovo homepage ( https://pcsupport.lenovo.com/us/en/downloads/ds551356-bios-update-utility-bootable-cd-for-windows-10-64-bit-thinkpad-p15v-gen-2-t15p-gen-2 ). The first generation had two fans and where covered by the whitelist entry for the P15 Gen 2. As the second generation has two fans, too, I made that change for completeness.
>>>
>>> To apply the changes before it's merged in the mainline linux kernel, I made a little dkms patch: https://github.com/dreschner/thinkpad_acpi-dual-fan-patch
>>
>> Thank you for your patch submission.
>>
>> If I understand things correctly then you've only tested the addition of the:
>>
>> TPACPI_Q_LNV3('N', '3', '7', TPACPI_FAN_2CTL),  /* P15 / P17 / T15g (2nd gen) */
>>
>> quirk, correct? In that case we really only want to add that quirk, we don't
>> want to go and add untested quirks. But perhaps Mark from Lenovo can confirm
>> that this quirk:
>>
>> TPACPI_Q_LNV3('N', '3', '8', TPACPI_FAN_2CTL),  /* P15v / T15p (2nd gen) */
>>
>> also is correct and that those models really have 2 fans, Mark ?
>>
>> Mark, more in general can you perhaps talk to the firmware team and ask
>> if there is a better way to detect if there are 2 fans in a thinkpad then
>> maintaining a quirk table for this ?
>>
>> Besides the issue of the untested quirk, unfortunately your patch is not
>> submitted in the right format, so I cannot accept it as is, esp. the
>> missing of a Signed-off-by is a blocker.
>>
>> Kernel patches should be in git format-patch output format and
>> your patch is missing a Signed-off-by line in the commit-message. I can only
>> accept patches with a Signed-off-by line in the commit-message like this:
>>
>> Signed-off-by: Your Real Name <email@your.domain>
>>
>> By adding this line you indicate that you are the author of the code and
>> are submitting it under the existing license for the file which you are
>> modifying (typically GPL-2.0) or that you have permission from the author
>> to submit it under this license. See:
>>
>> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin
>>
>> Given that this patch is trivial and mostly data, not code, I can turn
>> it into a proper patch with myself as author, crediting you like this:
>>
>> Reported-and-tested-by: David Dreschner <david@dreschner.net>
>>
>> And then merge it with me as the author, or you can resubmit
>> it in the proper format if you prefer.
> 
> Despite Mark's answer that he will look into this, it might very well
> take quite a while before something comes out of that and it would be
> good to in the mean time just extend the quirk list with your
> ThinkPad T15g Gen 2 addition.
> 
> So can you please let me know how you want to proceed with this
> (see above) ?

ping David?

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
