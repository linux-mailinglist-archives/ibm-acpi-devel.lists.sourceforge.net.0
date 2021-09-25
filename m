Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FDD41812F
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 25 Sep 2021 13:08:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mU5Wt-00071V-7j; Sat, 25 Sep 2021 11:07:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <greg@kroah.com>) id 1mU5Wr-000710-6s
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 25 Sep 2021 11:07:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3uQrqEVhHhLU6E1nXr0ckYIdMZ1n/+TcG7HITTU3dkI=; b=j6ij7iikUHarlx7A4fRvKBDwa+
 ejr+Zzl0XBWPofTy8jrKRG1lPdSs3EEvaTkH6h2nc8HfLlRPLZAyrKba/wecT14y9FntPNVCFJOx0
 kh98747MdIRtrKnkcFpc0DTPDqppYLCN8ubp8JySvR4milY8GOSbZo+j3W/0cpE/UvIQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3uQrqEVhHhLU6E1nXr0ckYIdMZ1n/+TcG7HITTU3dkI=; b=DAWHp99rEg0SUbtzrqmC/S3Eof
 cynXQsEwxkuG0EAJ5IQ2mVofkiQFoJ52XfHYXryvPzYPoR4EVXFtPy+KbJSck2eTadC/rSeDH6UFh
 Vi9SrtQPczrGPk+VC9haLjpaK4dxXLXDtl4NA6p2AoOD0QwZ3fg5TW7k2RxP8eUgYml4=;
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mU5Wp-0002sW-W8
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 25 Sep 2021 11:07:37 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.west.internal (Postfix) with ESMTP id 504E02B0063E;
 Sat, 25 Sep 2021 07:07:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sat, 25 Sep 2021 07:07:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=3uQrqEVhHhLU6E1nXr0ckYIdMZ1
 n/+TcG7HITTU3dkI=; b=Bipe1O7BRRE0DizAoy8TNijIWvKh+TrmfSzetj4DQIQ
 mf1bKGj6w9dgr0khmgQZTh9ss6UWfIjGsndlAoiWWtgqZAKjthEC5MmqpgZQMp10
 J59QXnjtfWwyeJ1gUSa8Osty9TWTSMx3MB/9UMJII61IM5OGXHezutgntp0LB/sS
 8BRiO4AwtynTCZbZcGnnF3LE7UubBZv4b/rieMJJN3wT7ASUJQ0fvwulrvReEekw
 JVxcFsRrU7uMk0ADJYciik5KrCX8JNclvUfZcDETmiLCF2XAgzyQS/atBQYG4j4B
 mBGa4McLyh34IAbn3M+nNEnP+ysS3jKpKCpWG7Uilag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=3uQrqE
 VhHhLU6E1nXr0ckYIdMZ1n/+TcG7HITTU3dkI=; b=h759m/5BigSJkwYVjTOB04
 rQAMAZjgCrSV3fvVMYcl7k99lyjGMacz9/NO9gI8du2XeXr0QJLwV32/HMsxsIj0
 zoZggdCj2WkpIPqlJumyihH/sT4hO9O7ZWEfzKfFblq2V/pLY6vP0TuTi2vDGpeA
 Z6Ab6n/dMUBirjiyQVWXt7eKmapK97on3511kBLHHkposEfKifzFJf2qum/LcYXW
 QbbSmrAvPPpWhiZMzp6iwPootN9noh1wGQ8jz/vtEX4Z8dQcpdShNgFBe4rHT76s
 SLsjfgd0+azuTHXbUm6fMNO6p2/lBElosiFZE1mhr0vw4zRSc0GYPGOOaDSmAaYw
 ==
X-ME-Sender: <xms:6wJPYTJ-1Vq28NSW3ObfYiNYzstYOY9JSebhJOAVCoxbKRDCcaDSwA>
 <xme:6wJPYXLDVXar2mKdtwAXbQD34cmhl5uZXRAPnjI1Gc5tGBId6ggVtzo3ULYYFrmBb
 v_YHXrXayapaA>
X-ME-Received: <xmr:6wJPYbv7lHB4X6EyiekiXdM6XvCBdSCUY_yoD7UCOVhHNyMufB_C2dLSjAI5eMQzxlUOBiZxdnAoeG3YhWX1G2l5nvf69TZR>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudejfedgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevffffte
 fhleeuhfefieffhfeifefhhefftefhffduvdfhfffgleetgfdvleehtdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgpdhkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:6wJPYcac4EhmEtUn4XmJA2fWY6HGV09Pr_Cj6jSen5LV0yzoKSQnbA>
 <xmx:6wJPYaZoSEvcqefDMEf-nbE5FFwnMksG6G305hi_yiZa2rBxv4ttCA>
 <xmx:6wJPYQBPyAmjWjOvYy9Q-tOfnaFr8FqaCycu1RaIFtxT4PI7CK9M3w>
 <xmx:6wJPYXR8gYW4CmYRCDRPA297DWaRwBYpfuEfdWqBW03hajW92EzXcp0vGSI>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Sep 2021 07:07:22 -0400 (EDT)
Date: Sat, 25 Sep 2021 13:07:20 +0200
From: Greg KH <greg@kroah.com>
To: Len Baker <len.baker@gmx.com>
Message-ID: <YU8C6B5zw5t4vsh7@kroah.com>
References: <20210918150500.21530-1-len.baker@gmx.com>
 <202109192246.B438B42EF@keescook>
 <ba427967-cb1b-58a8-ec93-bd5ae89f58f8@redhat.com>
 <YUn3F9HtgrpN9sSM@kroah.com> <20210925081856.GD1660@titan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210925081856.GD1660@titan>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Sep 25, 2021 at 12:40:44PM +0200, Len Baker wrote:
 > Hi, > > On Tue, Sep 21, 2021 at 05:15:35PM +0200, Greg KH wrote: > > >
 > First off, why is a single driver doing so many odd things with > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kroah.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mU5Wp-0002sW-W8
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
 Hans de Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 linux-hardening@vger.kernel.org, Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sat, Sep 25, 2021 at 12:40:44PM +0200, Len Baker wrote:
> Hi,
> 
> On Tue, Sep 21, 2021 at 05:15:35PM +0200, Greg KH wrote:
> >
> > First off, why is a single driver doing so many odd things with
> > attribute groups?  Why not just use them the way that the rest of the
> > kernel does?  Why does this driver need this special handling and no one
> > else does?
> 
> Is [1] the correct way to deal with devices attributes? I think so.
> 
> [1] https://www.kernel.org/doc/html/latest/driver-api/driver-model/driver.html#attributes

No, do not use driver_create_file(), see:
	http://kroah.com/log/blog/2013/06/26/how-to-create-a-sysfs-file-correctly/
as a more up to date thing.

Someone should fix that in-kernel documentation one day :)

> > I think the default way of handling if an attribute is enabled or not,
> > should suffice here, and make things much simpler overall as all of this
> > crazy attribute handling can just be removed.
> 
> Sorry but what is the default way? Would it be correct to check if the
> file exists?

Use the is_visable() callback for the attribute group to enable/disable
the creation of the sysfs file.

> > Bonus would also be that I think it would fix the race conditions that
> > happen when trying to create attributes after the device is bound to the
> > driver that I think the existing driver has today.
> >
> > > > (I see the caller uses +2? Why? It seems to be using each of hotkey_attributes,
> > > > plus 1 more attr, plus a final NULL?)
> > >
> > > The +2 is actually for 2 extra attributes (making the total number
> > > of extra attributes +3 because the sizeof(struct attribute_set_obj)
> > > already includes 1 extra).
> > >
> > > FWIW these 2 extra attributes are for devices with a
> > > a physical rfkill on/off switch and for the device being
> > > a convertible capable of reporting laptop- vs tablet-mode.
> >
> > Again, using the default way to show (or not show) attributes should
> > solve this issue.  Why not just use that instead?
> 
> What is the default way? Would it be correct to use device_create_file()
> and device_remove_file()?

Put all the attributes into an attribute group and attach it to the
driver.  The driver core will create/remove the files when needed.  The
link above should help explain that a bit better, and I can point you at
examples if needed.

Does that help?

thanks,

greg k-h


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
