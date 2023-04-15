Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A70366E307B
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 15 Apr 2023 12:13:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1pnctO-00018c-Dk;
	Sat, 15 Apr 2023 10:12:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1pnctL-00018W-9a
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 15 Apr 2023 10:12:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TQeirBygBhnh/bgPm8jyimdCuEwxK1b4oZ0S14iOIr8=; b=NYiPS2IgXf/ab9cH2MeS9aLYfx
 gIQTpzD6C+mO0tBt/4n4ZFnPOj+uSRSxVhnL4FOHkXN7hG2WIhY2I5xcqmfJbuHh3vZ3EEUrXcJ/E
 ZdNMBm3l9Kd7ZN3AsNXQLuiMh2NuV7kPPK1dWhZNlOa1Abamp+pIvE7al1wFEFhXbyXs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TQeirBygBhnh/bgPm8jyimdCuEwxK1b4oZ0S14iOIr8=; b=GSpSLfZ4ZkSv4R1GzDfIot8797
 Kq8+8Cqu93FzjSXHNIuIf42+Z8uzkFdoY+2Yktudn8uTy6ZafD0GKXsx8aQvaFN1akzZf3OtL+w0G
 kOKvGJb0DhdHYRMPjShvtAJyST5CwwhRssMsn/47tSbU9FDxipmTf6u46YKGk2MRFxBY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pnctK-008YrL-8P for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 15 Apr 2023 10:12:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681553536;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TQeirBygBhnh/bgPm8jyimdCuEwxK1b4oZ0S14iOIr8=;
 b=PXW7ne8IsPEEGPiYjr84kysPzbcHbAQEQ4NIyge43fhMYiZd7Bnh18b0avndg+QBiPQcLQ
 0hNmqaNDOiO8FZUv3bJ9gszjMUwvAFxEVRMViJnBXEvY0ociOyIwDLK6odO5cfJlz6anwg
 zgcnLezYyYcf+cuslVw1//c6o9X4xSM=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-458-3PwF_tPlMSqOaCvOKwiB1A-1; Sat, 15 Apr 2023 06:12:15 -0400
X-MC-Unique: 3PwF_tPlMSqOaCvOKwiB1A-1
Received: by mail-ed1-f72.google.com with SMTP id
 b60-20020a509f42000000b00504eca73d05so6099509edf.18
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 15 Apr 2023 03:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681553534; x=1684145534;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TQeirBygBhnh/bgPm8jyimdCuEwxK1b4oZ0S14iOIr8=;
 b=Uy9Dkz1v7lyhIcmsVPPy2D6s0geMPZ2ebHigcuyTJ/lLmC9EFj1+/mHzvIDMSYh9v5
 x9u+6T2O73F6SSeIALK67Gfk2CR8UY/Oxd894rDpCtAgcwIsBVvmgqHOcF+QwaQ8cDLf
 69r66z9zFVZ+n/N76XIyuD0xKg7R+tuv81emyxBryZ4L/wQrb/+AXYyb6LL59gzR3Y4j
 sJlJy1uYqp8UXEPMRdvanM0rcB9GimDXga5tVIW25CyU2Yk9d+RSpuYrmZQvhjasULej
 +Ns6ggwZi4zXG3fBtKzSJGC06pVyDP3GJ4oMEGA65lx2SDp8DYdc8RP2ZW6iZAX9DL7+
 aFBA==
X-Gm-Message-State: AAQBX9e0JrIZcRx0X7Jo2zH74AFDQgwetoRCIBt1O6TgdC9OQtx0F63T
 /spevqh77G/Tw2ya93XlbZlXMguBtpPgkVmzy2DNRmoSJTRMK5Jy9E8VY8OnzG8XNJ1HwGy6DD/
 2dyZZ97jn7RDzmAAnS9BO9sTK4bngUNSpH1VXSY2nSl8=
X-Received: by 2002:a17:906:3ac7:b0:94a:5819:5a24 with SMTP id
 z7-20020a1709063ac700b0094a58195a24mr1770120ejd.18.1681553533905; 
 Sat, 15 Apr 2023 03:12:13 -0700 (PDT)
X-Google-Smtp-Source: AKy350YusHoo6gFVnpQm9KF88p/O/d5jPexaF7AcZIqORigpf2xuxV4feGwJcL2yrZUgRKevX6hCXQ==
X-Received: by 2002:a17:906:3ac7:b0:94a:5819:5a24 with SMTP id
 z7-20020a1709063ac700b0094a58195a24mr1770099ejd.18.1681553533559; 
 Sat, 15 Apr 2023 03:12:13 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 gv35-20020a1709072be300b0094f07545d43sm1066677ejc.188.2023.04.15.03.12.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 Apr 2023 03:12:12 -0700 (PDT)
Message-ID: <060c750b-f282-b1f4-2fcc-64fc3885f149@redhat.com>
Date: Sat, 15 Apr 2023 12:12:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Daniel Bertalan <dani@danielbertalan.dev>,
 Mark Gross <markgross@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
References: <20230414180034.63914-1-dani@danielbertalan.dev>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230414180034.63914-1-dani@danielbertalan.dev>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/14/23 20:02, Daniel Bertalan wrote: > On the X380
 Yoga, the `ECRD` and `ECWR` ACPI objects cannot be used for > accessing the
 Embedded Controller: instead of a method that reads from > the EC's m [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pnctK-008YrL-8P
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
Cc: ibm-acpi-devel@lists.sourceforge.net, liavalb@gmail.com,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/14/23 20:02, Daniel Bertalan wrote:
> On the X380 Yoga, the `ECRD` and `ECWR` ACPI objects cannot be used for
> accessing the Embedded Controller: instead of a method that reads from
> the EC's memory, `ECRD` is the name of a location in high memory. This
> meant that trying to call them would fail with the following message:
> 
>   ACPI: \_SB.PCI0.LPCB.EC.ECRD: 1 arguments were passed to a non-method
>   ACPI object (RegionField)
> 
> With this commit, it is now possible to access the EC and read
> temperature and fan speed information. Note that while writes to the
> HFSP register do go through (as indicated by subsequent reads showing
> the new value), the fan does not actually change its speed.
> 
> Signed-off-by: Daniel Bertalan <dani@danielbertalan.dev>

Interestig, this looks like a pretty clean solution to me.

Mark Pearson, do you have any remarks on this ?

Regards,

Hans


> ---
>  drivers/platform/x86/thinkpad_acpi.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 7191ff2625b1..6fe82f805ea8 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -11699,6 +11699,7 @@ static int __init thinkpad_acpi_module_init(void)
>  {
>  	const struct dmi_system_id *dmi_id;
>  	int ret, i;
> +	acpi_object_type obj_type;
>  
>  	tpacpi_lifecycle = TPACPI_LIFE_INIT;
>  
> @@ -11724,6 +11725,21 @@ static int __init thinkpad_acpi_module_init(void)
>  	TPACPI_ACPIHANDLE_INIT(ecrd);
>  	TPACPI_ACPIHANDLE_INIT(ecwr);
>  
> +	/*
> +	 * Quirk: in some models (e.g. X380 Yoga), an object named ECRD
> +	 * exists, but it is a register, not a method.
> +	 */
> +	if (ecrd_handle) {
> +		acpi_get_type(ecrd_handle, &obj_type);
> +		if (obj_type != ACPI_TYPE_METHOD)
> +			ecrd_handle = NULL;
> +	}
> +	if (ecwr_handle) {
> +		acpi_get_type(ecwr_handle, &obj_type);
> +		if (obj_type != ACPI_TYPE_METHOD)
> +			ecwr_handle = NULL;
> +	}
> +
>  	tpacpi_wq = create_singlethread_workqueue(TPACPI_WORKQUEUE_NAME);
>  	if (!tpacpi_wq) {
>  		thinkpad_acpi_module_exit();



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
