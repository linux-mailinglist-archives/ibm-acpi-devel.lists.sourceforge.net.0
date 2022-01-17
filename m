Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD89449057F
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 17 Jan 2022 10:56:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n9Ok9-0007Sh-65; Mon, 17 Jan 2022 09:56:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1n9Ok6-0007SR-JJ
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 17 Jan 2022 09:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+Zavah50CCFVi2Vkp9ku57YSss8cl2fM7vlj/N5ldog=; b=hIdOEK/oRXXHfXHs50R/+2/Wj7
 omqeIV/hy1KZ1mH4bx8umaG4Ij5RwrIGrchscmdtiIqFbxFHUeYe9QCOyfMmelzyV101fcWnrd7M8
 c7nHgab9GEJRyfxZIouH8HdmRSuLh7ZyQ7tPNx4rf+EAI7KgE/B/gEQXfTw2GQ7IcOOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+Zavah50CCFVi2Vkp9ku57YSss8cl2fM7vlj/N5ldog=; b=KYYNRc/piJ3XGAnAa5ahGB1RTt
 SMpLafSnUm5BZ8srht+gGgySkDjIXhl8LZK+H2vSS3jSPpbjOtVSYLaciTjG+yNJBym8I8DKpGhHs
 FQDpUBPZHIBaEQwoIoFVhdASK+dAFZCCzluZhIPJz60duMdb/1rXejD9C6ksRLqZWOWo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9Ok2-000eWL-FL
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 17 Jan 2022 09:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642413352;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+Zavah50CCFVi2Vkp9ku57YSss8cl2fM7vlj/N5ldog=;
 b=G+Tpqw6rrT3/qtmZhsQMxQ4Vx7JkP3p9EZcbRVnOAV1cfKeVz53kZMYQTvuhc6tbBjKigN
 Fuhg+beKSZAaBP1Bw2xLFqgfKcjgsoSGZS89p38gKKs1XlqjjrtrMXrr2tdzqNgNXRVckc
 6Pr5uwdYh/JpRvYsrL2mBBl7dRtMhpw=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-627-5n5h7XGVNOKCQ5kDRWq4wg-1; Mon, 17 Jan 2022 04:55:51 -0500
X-MC-Unique: 5n5h7XGVNOKCQ5kDRWq4wg-1
Received: by mail-ed1-f69.google.com with SMTP id
 er7-20020a056402448700b00402bbb8ce8bso2258651edb.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 17 Jan 2022 01:55:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=+Zavah50CCFVi2Vkp9ku57YSss8cl2fM7vlj/N5ldog=;
 b=DkLNv+uRirNf5f2hOj7jJDT6FTAJWp+5boO7eR6MRk1MfipVa+VSEtEC8OoNFeW87e
 qHC/ozC9P++lF8ASYx02tXMyFko0O9if9/v52j33g4aeM7K/UvsnpEs1SpU0bqiJ+2L9
 CgMqO1d+r7W8/QCmVjZVzSOyHbQUW8WUFdw41gYuxXPuCqwXN4M7bxKkM9EKDDSOZ6tC
 XdqhmMDUt5evwJz8EyDtQU/mVmwLRyNKdQqJrx1G+Ep/jjF5SoNe/7aRiigXhsHvLGwe
 XbZwMyLJqC5ZRVOncFjQx9A+EkiLVtqOCpDEID7xegkjjscvc60QmOsIKipshLjKvfTs
 b3fw==
X-Gm-Message-State: AOAM530qKVJ/pdlq+Sg1RP0AZoSZqWFD34PgXlNP+/ARTlghaCoEMWbv
 zk4jWrwIg7n0YWkAXwUJ4maLbCkicI5JL9hnCgCWQlxW5CMsLGBuONl5Gv5kEI644tACNcK/zwX
 bXOkazg2TRTB1H0YdJJjCBPUGFYYUn6+R4MA=
X-Received: by 2002:a17:906:7315:: with SMTP id
 di21mr15727292ejc.700.1642413349658; 
 Mon, 17 Jan 2022 01:55:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxhwwQ8HP6Jnulq/kXnN+vvBYk9fXpL+wB1IwApZ20yLVly4rnosnO6IvMl0Vjc0FXyV+hZGA==
X-Received: by 2002:a17:906:7315:: with SMTP id
 di21mr15727274ejc.700.1642413349413; 
 Mon, 17 Jan 2022 01:55:49 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id a6sm801730edx.94.2022.01.17.01.55.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 01:55:48 -0800 (PST)
Message-ID: <9e8d71ab-da70-71c5-9083-86cd671ea495@redhat.com>
Date: Mon, 17 Jan 2022 10:55:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
From: Hans de Goede <hdegoede@redhat.com>
To: David Dreschner <david@dreschner.net>,
 ibm-acpi-devel@lists.sourceforge.net, Mark Pearson <markpearson@lenovo.com>
References: <ec04aa1e-1ac3-edbc-ac08-eec15ec5c952@dreschner.net>
 <aceddce7-6c43-967c-fadd-fa307068e916@redhat.com>
In-Reply-To: <aceddce7-6c43-967c-fadd-fa307068e916@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi David, On 1/11/22 12:09, Hans de Goede wrote: > Hi David, 
 > > On 1/4/22 04:41, David Dreschner wrote: >> Hey guys, >> >> the attached
 patch updates the list of whitelisted ThinkPad models with dual fan suppo
 [...] Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9Ok2-000eWL-FL
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

On 1/11/22 12:09, Hans de Goede wrote:
> Hi David,
> 
> On 1/4/22 04:41, David Dreschner wrote:
>> Hey guys,
>>
>> the attached patch updates the list of whitelisted ThinkPad models with dual fan support.
>>
>> The changes were tested on my ThinkPad T15g Gen 2. According to Lenovo, the BIOS version is the same for the P15 Gen 2 and the P17 Gen 2 ( https://pcsupport.lenovo.com/us/en/downloads/ds551321-bios-update-utility-bootable-cd-for-windows-10-64-bit-thinkpad-p15-gen-2-p17-gen-2-t15g-gen-2 ).
>>
>> I also added the P15v Gen 2 and T15p Gen 2 to the whitelist based on the BIOS version listed on the Lenovo homepage ( https://pcsupport.lenovo.com/us/en/downloads/ds551356-bios-update-utility-bootable-cd-for-windows-10-64-bit-thinkpad-p15v-gen-2-t15p-gen-2 ). The first generation had two fans and where covered by the whitelist entry for the P15 Gen 2. As the second generation has two fans, too, I made that change for completeness.
>>
>> To apply the changes before it's merged in the mainline linux kernel, I made a little dkms patch: https://github.com/dreschner/thinkpad_acpi-dual-fan-patch
> 
> Thank you for your patch submission.
> 
> If I understand things correctly then you've only tested the addition of the:
> 
> TPACPI_Q_LNV3('N', '3', '7', TPACPI_FAN_2CTL),  /* P15 / P17 / T15g (2nd gen) */
> 
> quirk, correct? In that case we really only want to add that quirk, we don't
> want to go and add untested quirks. But perhaps Mark from Lenovo can confirm
> that this quirk:
> 
> TPACPI_Q_LNV3('N', '3', '8', TPACPI_FAN_2CTL),  /* P15v / T15p (2nd gen) */
> 
> also is correct and that those models really have 2 fans, Mark ?
> 
> Mark, more in general can you perhaps talk to the firmware team and ask
> if there is a better way to detect if there are 2 fans in a thinkpad then
> maintaining a quirk table for this ?
> 
> Besides the issue of the untested quirk, unfortunately your patch is not
> submitted in the right format, so I cannot accept it as is, esp. the
> missing of a Signed-off-by is a blocker.
> 
> Kernel patches should be in git format-patch output format and
> your patch is missing a Signed-off-by line in the commit-message. I can only
> accept patches with a Signed-off-by line in the commit-message like this:
> 
> Signed-off-by: Your Real Name <email@your.domain>
> 
> By adding this line you indicate that you are the author of the code and
> are submitting it under the existing license for the file which you are
> modifying (typically GPL-2.0) or that you have permission from the author
> to submit it under this license. See:
> 
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin
> 
> Given that this patch is trivial and mostly data, not code, I can turn
> it into a proper patch with myself as author, crediting you like this:
> 
> Reported-and-tested-by: David Dreschner <david@dreschner.net>
> 
> And then merge it with me as the author, or you can resubmit
> it in the proper format if you prefer.

Despite Mark's answer that he will look into this, it might very well
take quite a while before something comes out of that and it would be
good to in the mean time just extend the quirk list with your
ThinkPad T15g Gen 2 addition.

So can you please let me know how you want to proceed with this
(see above) ?

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
