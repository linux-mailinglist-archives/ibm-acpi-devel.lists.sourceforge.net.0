Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1556D4B8A
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Apr 2023 17:15:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1pjLtM-0001Kw-UW;
	Mon, 03 Apr 2023 15:14:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1pjLtM-0001Kq-7v
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Apr 2023 15:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WnHDxISHyvOvLnit3NOC6bnRr0EdN+jVapdWjnaO6Jc=; b=AGlztcZ7vfmmD7EU615tnoVZYO
 DgJhBrDVCRbZrVOvz624WUCmFpaGQQRKwyeYot63oRuCMhkpac1TI8cPsZodvF8r/ib8ydsKQYCKD
 2ZfUR7Ct7DNHKXmZb9pcl3pV9frPiPbEhPiddl+REHz6Yvy6C+Kas69c45gbWXI49FX8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WnHDxISHyvOvLnit3NOC6bnRr0EdN+jVapdWjnaO6Jc=; b=fLM85qNazOLeVFfEukXF1K7aJ6
 ghjepTEaZ1PvxH2sOOJT3Ma26Ssk2wm+eBB6Beqo64aFowbC+jrPUMxtux80C4HeNhZDk2/XLQUqG
 RslK8URCBR0DmrQJYr92idjT12mHEE2rZ3r0PeqnQMTOdoS3QK9VTiBJlFfkRt9T1stc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pjLtK-00DqTR-Dq for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Apr 2023 15:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680534876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WnHDxISHyvOvLnit3NOC6bnRr0EdN+jVapdWjnaO6Jc=;
 b=OatW7eJXnASpwb0GMx3X29eGQ/bECgyMEHMfJx7H8iEdym3/V/6vVx27I69sANMYfWmq5s
 /qlw9qs3lAiE7V5N4+EZCcAgZLEtq+D00mQmwqsS2otDtJB+H+3uMJBrG/xl99w1R+BkzT
 h2Lu438mjvBZLZ22Ollh7HRvRhoFaXk=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-448-AyVV_cHAOQKqH_J8wqfMsA-1; Mon, 03 Apr 2023 11:14:35 -0400
X-MC-Unique: AyVV_cHAOQKqH_J8wqfMsA-1
Received: by mail-ed1-f69.google.com with SMTP id
 t14-20020a056402240e00b004fb36e6d670so41450769eda.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 03 Apr 2023 08:14:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680534873;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WnHDxISHyvOvLnit3NOC6bnRr0EdN+jVapdWjnaO6Jc=;
 b=kdJK98TxQVXvTv8UvtG/PLpkRIOcBkRWzpQvcsvu8af2CoUxlyoMZTgKpS029mUJgk
 RTtdnVRRYiqA6GOvbeCU4kehNC8uY1kkJ+4WXzgLy5VJ4Ry0kJ9UZylC9Rt9LPqFM/3l
 jUUCeVvLXpbl/dtf4/AqFX2GEBTtzEG7sCobRAgxM/yB9MHhjKGhGYjHqzTgLmbrm4Mg
 TqnSgTnWHjT0VP3wiWVMqJ9+MyVQdsxhTiZhj+APrRtkKG1dros5D+pieynzFA6c4VGT
 3A6ZcbluRley1y3V7n3X9B2XOOcWQ0jojyIc+fwEgf5oSF2I61yDraWU5JeB+N2T55Hf
 9bEA==
X-Gm-Message-State: AAQBX9eUd5xYCHeBBXLV6EKmOUdaDffSPRZqzqBd9XsyaT0cbDRhXHZf
 tjpkgrJjOkmPUxE+Orn1NZjFtS0snAxo+sh6nM/jT7Zh2TNg/q4k9vEIlRblOpRXRt9cMqMi6AC
 TBIk7SbjY52oqRie9Xd54UnLOoQmul9lTqokAa2lGWiM=
X-Received: by 2002:a17:906:5293:b0:92c:6fbf:28 with SMTP id
 c19-20020a170906529300b0092c6fbf0028mr37791195ejm.64.1680534873651; 
 Mon, 03 Apr 2023 08:14:33 -0700 (PDT)
X-Google-Smtp-Source: AKy350bGTc3zkapkoFnbodSzud0IWW7XUyEvjJxinyYjLv1oQXElVnMiYJv/BBp0aCfTuaUytLtuvg==
X-Received: by 2002:a17:906:5293:b0:92c:6fbf:28 with SMTP id
 c19-20020a170906529300b0092c6fbf0028mr37791179ejm.64.1680534873388; 
 Mon, 03 Apr 2023 08:14:33 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 h23-20020a170906261700b008e0bb004976sm4648943ejc.134.2023.04.03.08.14.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Apr 2023 08:14:32 -0700 (PDT)
Message-ID: <bee18e30-90e8-8e22-8192-c89dc73719f1@redhat.com>
Date: Mon, 3 Apr 2023 17:14:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 Benjamin Asbach <asbachb.kernel@impl.it>
References: <20230331232447.37204-1-asbachb.kernel@impl.it>
 <a192e386-5385-d18a-9816-273e433eb833@redhat.com>
 <ca667f1a-6e65-4d00-8015-bdd4c9f8de51@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ca667f1a-6e65-4d00-8015-bdd4c9f8de51@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 4/3/23 16:41, Mark Pearson wrote: > Hi Hans >
 > On Mon, Apr 3, 2023, at 6:03 AM, Hans de Goede wrote: >> Hi, >> >> On 4/1/23
 01:24, Benjamin Asbach wrote: >>>> Lenovo laptops that contain NVME SSDs
 [...] Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -1.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pjLtK-00DqTR-Dq
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add
 missing T14s Gen1 type to s2idle quirk list
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
 <platform-driver-x86@vger.kernel.org>,
 "markgross@kernel.org" <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, "Limonciello,
 Mario" <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <markpearson@lenvo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On 4/3/23 16:41, Mark Pearson wrote:
> Hi Hans
> 
> On Mon, Apr 3, 2023, at 6:03 AM, Hans de Goede wrote:
>> Hi,
>>
>> On 4/1/23 01:24, Benjamin Asbach wrote:
>>>> Lenovo laptops that contain NVME SSDs across a variety of generations have
>>>> trouble resuming from suspend to idle when the IOMMU translation layer is
>>>> active for the NVME storage device.
>>>>
>>>> This generally manifests as a large resume delay or page faults. These
>>>> delays and page faults occur as a result of a Lenovo BIOS specific SMI
>>>> that runs during the D3->D0 transition on NVME devices.
>>>
>>> Link: https://lore.kernel.org/all/20220503183420.348-1-mario.limonciello@amd.com/
>>>
>>> As Lenovo distributes T14s Gen1 laptops with different product names
>>> a missing one is added by this patch.
>>>
>>> Note: Based on lenovo support page there might be some more variants which
>>> are not represented in s2idle quirk list.
>>
>> Can you provide some more in info on this? Then Mark can maybe check
>> if we need to add more models ?
>>
>> Mark, generally speaking it may help to do a DMI_EXACT_MATCH on
>> DMI_PRODUCT_VERSION with ThinkPads ? That contains the human
>> readable model string instead of things like "20UJ", and I guess
>> that we want to e.g. apply the s2idle quirk to all "T14s Gen1 AMD"
>> ThinkPads.
> 
> Sadly that won't work :(
>  - The same ID is used for multiple platform names and those can change by geography (for instance China often calls things differently) or if WWAN supported, etc. 
>  - They use the same platform name for Intel and AMD in a few cases (not all). And this match should only be done for the AMD platforms.
> 
> For every platform there are two IDs. In this case the T14s G1 has 20UH and 20UJ. I need to figure out when each is used - I thought only the first one was in released platforms but it seems that's not the case from this patch. I need to understand how/why.
> 
> For models impacted - there are a couple missing from the list that I would expect to see there as they're the same generation: X13 G1 and L15 G2 (and a possible ? against L14/L15 G1). I'm also a bit cautious as the E-series might need to show up here - but I don't know those platforms as well..
> And depending on the two IDs...some of the platforms may need doubling up. Urgh.

Ok.

Stating the obvious here: Please send a patch adding
the necessary extra IDs once you know which ids to add.

Regards,

Hans






_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
