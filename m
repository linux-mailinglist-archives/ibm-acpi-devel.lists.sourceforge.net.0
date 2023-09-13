Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DBD79EFB8
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 13 Sep 2023 19:01:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qgTEh-0005Cv-TV;
	Wed, 13 Sep 2023 17:01:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1qgTEg-0005Co-QA
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 13 Sep 2023 17:01:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3RcP0+lHz50hfFKyKt8JAwtGK5ems8bjkcAlSKeDZtw=; b=EQHPjeQYwkDY+ym+ly8wG2tAw/
 HLd6aZyX94k/OLFGliIVp8fb2sGsKFMtU3hpxQ1aPr3d6s4amgvfDTNJzWXsC8WqJ9KQCqnVDoMkJ
 tP1Uv6QXO1qvT+74OmHEgaGk6romMg5rpPUsc8Gu7BO58bb3r3jBnEcX7ryOu6bhZH0E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3RcP0+lHz50hfFKyKt8JAwtGK5ems8bjkcAlSKeDZtw=; b=JdFeoEiSdcVu1LrALXvHwS1baL
 2mV5mtwaumK54bLPJeADg/dYsqcfKJu71M0Qak8BkaYWH3TzT/Exgdu+KcOHIN+3j8Ehb1JqzIgRb
 +YDb9Pw0GSU9BvgRikStPq6tB0GdASwcEgl8fJ4Enf2uhbkCRQMJrJCB2i8IN9I2eXbg=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qgTEa-00062K-2W for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 13 Sep 2023 17:01:07 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 059D63200C12;
 Wed, 13 Sep 2023 12:42:42 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute5.internal (MEProxy); Wed, 13 Sep 2023 12:42:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1694623362; x=1694709762; bh=3R
 cP0+lHz50hfFKyKt8JAwtGK5ems8bjkcAlSKeDZtw=; b=SFdfYurV3LFeF11BlE
 0T1zplDsH8tN8CVuE/kMKr4Q0+E+TELiBcVDyWg72VyGjNpve0xPw0N2//v/kbOb
 t0peAcWyBdfTCtFVPrFXjeVLXDD5wmrc9XqMd8SdFjFv8QusmAu6JzjO2FLLW16L
 r/JgITTK8/upYaeEUMa4Wg5gs3etP2Npr8CK+QYMlI7TAnvDkFaC3oL1a6jNPgDM
 o8KuZJlqpXltq4wK7PfvqPrw2JyLUtJ6iKfl7ANenteBVsEO1S1Po918niSHfSIq
 Wzr9D1K3WUj5qOxx/7RZMG67FCQAafyOsU8U3QoRgkGLs1j4F4CN6s/F5Fa6M1Wi
 m4kA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1694623362; x=1694709762; bh=3RcP0+lHz50hf
 FKyKt8JAwtGK5ems8bjkcAlSKeDZtw=; b=j24EU+fwE1hbp/zQ/LQ+0jcKF6iax
 JxD5X2voC/Cbe2rmbOExAYpOW3P+fMEt5/PjXZIQuCU33MB5+conM6VSV5afTowi
 GAEMT3IXrpD1sRFRHo0XH+gEe99/EMZrYVotG7QoJvwx1p82Yuym8t9qjOBKMtJB
 2rZLUQJ3gF9qrhblOkuC6u7lKayDfjUyB24r18IaOQgj1OU2oRFsPfjFFgmlQDf1
 EHcki53K78pCi7y9uywCzYv9CWi0/LIVGcJw4UfhdJN88/pczx/+6fqHs03pHhsK
 YGuFPf/BS6hiN46HnsRdauphJFAMy/3DAxWpoiMykW8TkQ4gnJqW69+zw==
X-ME-Sender: <xms:geYBZRowaePEQKs7XhclyLFV55ppcambco4l7EwYgPkmTdhxIbPh7A>
 <xme:geYBZTrz7oBkmBmsfLnWy8AEgya_jplFHo2LvcNMyX_eRixdjCakqKI4KjUvXYaE4
 ZnfA0qrX1fkYklWKKc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudeikedguddtgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeefudetheeijefhledufeejvdetteeiueefteeu
 jeekieeukeeuheegveehueeftdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuve
 hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhs
 ohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:geYBZeMDHBHhrXMW3x8wCG3a2W_cQ3IvNFpA1dPikjhOHD7PqSt2gw>
 <xmx:geYBZc4FkyiaEVswUuYHjaM10z9opw-LtmNwnilr6pjrrOdi4mhBIA>
 <xmx:geYBZQ5R_JcGpGOJg9anlIWN1p0O_ad7SqW5yMlhiWz0wBTbYIl7Sw>
 <xmx:guYBZb2dL2Noto2A-HRnB0M689zLVHKQGZMh_NGj8JwGOOIMojl6XQ>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 02C51C60091; Wed, 13 Sep 2023 12:42:40 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-745-g95dd7bea33-fm-20230905.001-g95dd7bea
Mime-Version: 1.0
Message-Id: <c05afb18-bca5-4500-877d-d44ef3abc310@app.fastmail.com>
In-Reply-To: <d26d4b15-765b-a444-b740-97f95f2db58d@redhat.com>
References: <20230906195204.4478-1-fevalle@ipt.br>
 <d26d4b15-765b-a444-b740-97f95f2db58d@redhat.com>
Date: Wed, 13 Sep 2023 12:41:42 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>,
 "Fernando Eckhardt Valle" <fevalle@ipt.br>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>,
 "markgross@kernel.org" <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 linux-kernel@vger.kernel.org
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 13, 2023, at 11:58 AM, Hans de Goede wrote: >
 Hi Fernando, > > On 9/6/23 21:52, Fernando Eckhardt Valle wrote: >> Newer
 Thinkpads have a feature called Mac Address Passthrough. >> This pat [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1qgTEa-00062K-2W
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: sysfs
 interface to auxmac
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



On Wed, Sep 13, 2023, at 11:58 AM, Hans de Goede wrote:
> Hi Fernando,
>
> On 9/6/23 21:52, Fernando Eckhardt Valle wrote:
>> Newer Thinkpads have a feature called Mac Address Passthrough.
>> This patch provides a sysfs interface that userspace can use
>> to get this auxiliary mac address.
>> 
>> Signed-off-by: Fernando Eckhardt Valle <fevalle@ipt.br>
>
> Thank you for your patch. 
>
> At a minimum for this patch to be accepted you will need
> to document the new sysfs interface in:
>
> Documentation/admin-guide/laptops/thinkpad-acpi.rst
>
> But I wonder if we should export this information to
> userspace in this way ?
>
> The reason why I'm wondering is because mac-address passthrough
> in case of using e.g. Lenovo Thunderbolt docks is already
> supported by the kernel by code for this in drivers/net/usb/r8152.c :
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/usb/r8152.c#n1613
>
> So I'm wondering if we really need this, is there a planned
> userspace API consumer of the new sysfs interface ?
>
> Or is this only intended as a way for a user to query this, iow
> is this purely intended for informational purposes ?
>
Hi Hans,

We've previously had strong pushback from the maintainers in the net tree that the MAC passthru should not be done there and should be done in user-space. I'd have to dig up the threads, but there was a preference for it to not be done in the kernel (and some frustrations at having vendor specific changes in the net driver).

We've also seen various timing issues (some related to ME FW doing it's thing) that makes it tricky to handle in the kernel - with added delays being needed leading to patches that can't be accepted.

This approach is one of the steps towards fixing this. Fernando did discuss and review this with me beforehand (apologies - I meant to add a note saying I'd been involved). If you think there is a better approach please let us know, but we figured as this is a Lenovo specific thing it made sense to have it here in thinkpad_acpi.

There will be a consumer (I think it's a script and udev rule) to update the MAC if a passthru-MAC address is provided via the BIOS. This will be open-source, but we haven't really figured out how to release it yet.

Fernando - please correct anything I've gotten wrong!

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
