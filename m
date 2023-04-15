Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE0B6E3196
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 15 Apr 2023 15:31:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1pnfzk-0000Bg-Je;
	Sat, 15 Apr 2023 13:31:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1pnfzi-0000BT-RP
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 15 Apr 2023 13:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NcvzNNael5RZ48MN+Rhic1gwvv1RpZsAbU5niqhRVqU=; b=bmeKaRJDRVcO8KSq6D0WR02AXD
 gNBtN+bDLCfMyk590D7vaGOhVKhyPgmpxXqdgISBMnbIJz16Hgv64Lj+KfjfxoCXt5TCeZ29ZVGZD
 dboDGtSQCYc8DkcNzyMi0fp15NoBIUyDgel1St5H0LNVDKAZ3CLJeDv5zwmr+PacgQxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NcvzNNael5RZ48MN+Rhic1gwvv1RpZsAbU5niqhRVqU=; b=PGLb4n73PdwSqHeVlEFTRYpGE7
 U+qaLosIvMXUG7yEgXIq+N2aSH8Snlbo9mwuPbhHAduIts7OjFrf8KNNfaFH46Dla1vbhUsHHXJr0
 NSMvOcoq3rZE9uNnXHbdKb9O3CcNcQJVwk2drW+DHWJ5bxzsNLbsn1daSvvKh5Z4SmQ8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pnfzY-00008C-4o for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 15 Apr 2023 13:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681565453;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NcvzNNael5RZ48MN+Rhic1gwvv1RpZsAbU5niqhRVqU=;
 b=Dc67AFIf6kTw3R76LL7jxHouI/HDbnKTa2J1NJnSNGGDTKQaL3+NLW3GF7r88tgandPktY
 /UQ0hHcsaDWYu8LcAF9LWMJXa42DLVhYkvSYgukAMLSGcPjB26arDUHlttnZUHgXjGlCfy
 I7OLQJj9x+s9ZssOF/0vLk3ur2hhQco=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-463-Zf5uaTGlPV2gma_ASedDSg-1; Sat, 15 Apr 2023 09:30:52 -0400
X-MC-Unique: Zf5uaTGlPV2gma_ASedDSg-1
Received: by mail-ej1-f70.google.com with SMTP id
 qp26-20020a170907207a00b0094efd1b28b2so1039478ejb.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 15 Apr 2023 06:30:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681565451; x=1684157451;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NcvzNNael5RZ48MN+Rhic1gwvv1RpZsAbU5niqhRVqU=;
 b=IdS+xKIA+/ZyysBC4u6XGdkPz/tSZQVAucbk58+XboL0uqCSKPPKcZr3aeAxXoUNef
 vXdOp2CJqd3wnsnIBaP2H917MueWTQxRCw77xT7WHYDaWep1UfIub+VNqK1ikH1TYR/9
 zrSsYQphh9ceu0mbOM0XDMVBcjMyT8XH0OLaTYEA73zkbhOnG3TBim7Z1d3Ha8ajLzWV
 +DWp+m/03qUFxZZwgb3s6aplkqBwfoCib6DAijivm3FWiLyxpPNynlL6EuKtePh5SoXp
 QacSUfkEyftInLyxx94cJbQrYteHlWxp0O+LtLadrC6oAL1is9WNaTCivs6ezEqnWsv9
 NOuQ==
X-Gm-Message-State: AAQBX9e/dD6wuTzG11AEbzP9t+XhP+MGtJf/269GDHTzeKXrJL0b+r3J
 0yWCKLi7IDwVTVLM/Ws1krxQCd/uh+IwUodV88jEMylzYWFomumQMCaFV0//GJCofRRSUXOTKvc
 BJ3ML90OT1El46e7sR0n7gDTV7iqBlE+SDoU=
X-Received: by 2002:a17:906:544e:b0:92e:a1d8:bf1 with SMTP id
 d14-20020a170906544e00b0092ea1d80bf1mr2017005ejp.13.1681565451696; 
 Sat, 15 Apr 2023 06:30:51 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZRUZIAWkx8m427CwzAdFZkWzx2pEe1/g3W9zMN/WqZOoqFCLvT/q2T/PrIt/hyhpT12XosAA==
X-Received: by 2002:a17:906:544e:b0:92e:a1d8:bf1 with SMTP id
 d14-20020a170906544e00b0092ea1d80bf1mr2016992ejp.13.1681565451366; 
 Sat, 15 Apr 2023 06:30:51 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 y14-20020a1709064b0e00b0094e60ac9678sm3765955eju.122.2023.04.15.06.30.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 Apr 2023 06:30:50 -0700 (PDT)
Message-ID: <2739eb24-736f-6f59-70c5-d9975c354369@redhat.com>
Date: Sat, 15 Apr 2023 15:30:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Liav Albani <liavalb@gmail.com>, Daniel Bertalan
 <dani@danielbertalan.dev>, Mark Gross <markgross@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
References: <20230414180034.63914-1-dani@danielbertalan.dev>
 <060c750b-f282-b1f4-2fcc-64fc3885f149@redhat.com>
 <a1229347-b5f3-8a1d-40a8-20beb863592a@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <a1229347-b5f3-8a1d-40a8-20beb863592a@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/15/23 15:24, Liav Albani wrote: > > On 4/15/23 13:12,
 Hans de Goede wrote: >> Hi, >> >> On 4/14/23 20:02, Daniel Bertalan wrote:
 >>> On the X380 Yoga, the `ECRD` and `ECWR` ACPI objects cannot be [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1pnfzY-00008C-4o
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/15/23 15:24, Liav Albani wrote:
> 
> On 4/15/23 13:12, Hans de Goede wrote:
>> Hi,
>>
>> On 4/14/23 20:02, Daniel Bertalan wrote:
>>> On the X380 Yoga, the `ECRD` and `ECWR` ACPI objects cannot be used for
>>> accessing the Embedded Controller: instead of a method that reads from
>>> the EC's memory, `ECRD` is the name of a location in high memory. This
>>> meant that trying to call them would fail with the following message:
>>>
>>>   ACPI: \_SB.PCI0.LPCB.EC.ECRD: 1 arguments were passed to a non-method
>>>   ACPI object (RegionField)
>>>
>>> With this commit, it is now possible to access the EC and read
>>> temperature and fan speed information. Note that while writes to the
>>> HFSP register do go through (as indicated by subsequent reads showing
>>> the new value), the fan does not actually change its speed.
>>>
>>> Signed-off-by: Daniel Bertalan <dani@danielbertalan.dev>
>> Interestig, this looks like a pretty clean solution to me.
> 
> Daniel and I have looked in the DSDT ASL code and found a bunch of registers in high physical memory location (which is an ACPI OpRegion),
> and one of the registers had a bit called ECRD.
> However, there were many other registers that might be interesting as well, the problem is the short names in the ASL code (so we only see abbreviations essentially).
> 
> 
> While I do agree that adding this code is indeed a clean solution, if you (people that are dealing with Thinkpad laptops) know about cleaner way to access the embedded controller, I think it's preferable, because this way Daniel might be able to trigger the fan on that laptop so it will actually spin and will dissipate-out heat from the system, without the relying on the embedded controller to get into some sort of thermal state and then to trigger the fan.

Have you tried falling back to the ec_read() and ec_write() helpers
exported by the ACPI EC code ?

The "first_ec" pointer used by these functions is exported too,
so you could try modifying thinkpad_acpi to use ec_read() and
ec_write() as fallback when first_ec is set (and the quirk
added by this patch triggers).

Regards,

Hans



>> Mark Pearson, do you have any remarks on this ?
>>
>> Regards,
>>
>> Hans
>>
>>
>>> ---
>>>  drivers/platform/x86/thinkpad_acpi.c | 16 ++++++++++++++++
>>>  1 file changed, 16 insertions(+)
>>>
>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>> index 7191ff2625b1..6fe82f805ea8 100644
>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>> @@ -11699,6 +11699,7 @@ static int __init thinkpad_acpi_module_init(void)
>>>  {
>>>  	const struct dmi_system_id *dmi_id;
>>>  	int ret, i;
>>> +	acpi_object_type obj_type;
>>>  
>>>  	tpacpi_lifecycle = TPACPI_LIFE_INIT;
>>>  
>>> @@ -11724,6 +11725,21 @@ static int __init thinkpad_acpi_module_init(void)
>>>  	TPACPI_ACPIHANDLE_INIT(ecrd);
>>>  	TPACPI_ACPIHANDLE_INIT(ecwr);
>>>  
>>> +	/*
>>> +	 * Quirk: in some models (e.g. X380 Yoga), an object named ECRD
>>> +	 * exists, but it is a register, not a method.
>>> +	 */
>>> +	if (ecrd_handle) {
>>> +		acpi_get_type(ecrd_handle, &obj_type);
>>> +		if (obj_type != ACPI_TYPE_METHOD)
>>> +			ecrd_handle = NULL;
>>> +	}
>>> +	if (ecwr_handle) {
>>> +		acpi_get_type(ecwr_handle, &obj_type);
>>> +		if (obj_type != ACPI_TYPE_METHOD)
>>> +			ecwr_handle = NULL;
>>> +	}
>>> +
>>>  	tpacpi_wq = create_singlethread_workqueue(TPACPI_WORKQUEUE_NAME);
>>>  	if (!tpacpi_wq) {
>>>  		thinkpad_acpi_module_exit();



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
