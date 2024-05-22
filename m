Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BD38CC227
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 May 2024 15:31:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s9m3G-0004Ah-OU;
	Wed, 22 May 2024 13:30:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1s9m3F-0004Ab-He
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 22 May 2024 13:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zU+6vg1pXYH/Fq9smC8GcZpWa9dzU2v7jBLJSVG9HRU=; b=ZrzemKj//A3wS8OYuf4LC9dXsf
 NB18L4VarEEKTsZ7Bdta9X0hrNxOyNKHA3N+sUL7vHa0NM8oLA0N2fksDzMXyCNnw2NFJRil5xdRW
 OmmMcQw5207mAKpaELbWWq+MdH0DxF3fcTtYQIqrYgqPYQ7YtJ+6tocQKrR4FM3k7DyA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zU+6vg1pXYH/Fq9smC8GcZpWa9dzU2v7jBLJSVG9HRU=; b=almsodmJ8Sn9yvEAsi/op5y3KZ
 63hGSjKJe685wxcIBGIFn8do93XqJVi6hGu96QljeFQlwHUwkFhY1k3S+dd3ZffGGuK7D4d9gresV
 Zt9xSRH7CSeOF1c+KOqAoO1UU6Xfl/ZT6avh+4wihA/MIDJjZ0rRttIMn760HC2dJFpE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s9m3F-00078c-QN for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 22 May 2024 13:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1716384630;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zU+6vg1pXYH/Fq9smC8GcZpWa9dzU2v7jBLJSVG9HRU=;
 b=KXIMpx7r6B35q1d8IzQeLzBfGMYGu8pZ8RidEnqidVwWz8s5hb0q5yCVBLe0uE2XuEU4ft
 Mbso3T1NAHQdffhytVoC2SbAxKbc0SjL65jD4jIrx9ZCDn/Q+Et5RJt2Ss+d48IqLFBxUy
 87CvUrUA95e5k+bWfx+eDPPnPChdXXw=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-595-uQFsK8KVOCiYrq7QrDkvTg-1; Wed, 22 May 2024 09:30:27 -0400
X-MC-Unique: uQFsK8KVOCiYrq7QrDkvTg-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-a5a05c4e0efso68696466b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 22 May 2024 06:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716384626; x=1716989426;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zU+6vg1pXYH/Fq9smC8GcZpWa9dzU2v7jBLJSVG9HRU=;
 b=GRSyM6Zyujshui46Z/u5kpISOf3qyhvch7I2jLOJVJdy49MgZjTiDZCt6Zg5UejO9E
 rzne4Bu++1bWNslr0MgqnPkZSmC7j8l89WnChAtxnidzuvjmKqo97pozy5V+L3lMlO5A
 nOupDnFSqpLOJi0kqcYJz6jkwSkDExK9gA2HM3oXnsw5Scoig3RpQPgyW8thUMR6nXON
 w0Quze0tCkqsS7hBPg4387U1iK/cJLWDAFx9zl5pf9LtODz5/n96OCiY9BkJTC9cMfFy
 hycpMyPnSRvhLde/05iDsPQ///9UO/sA0O5KQh6ABdYOLCuf4X7grdK3i2wG2zikohIz
 VRoA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXntaGSgEQsXl1MJTU+ICmsQrzL0ljrYTXC4wYAw9ohKmJu3GpgGRDV1wkTXxSVXQhNs5MrBlbZ4Y334qwMtK1GxgaaeDH+mtzMpmRWHla/RQdAwRI=
X-Gm-Message-State: AOJu0YwVy0Ec8f/K4JOZYzGo+SODlxzn/BmpLuy+9SaWppuVZhGW1/cI
 0h2YdlJBSL7QnlvWiKZZvoIbzszHdHzL9NgmS/cjBYDetb3vH3sRit+WY/dir2d3XT0WZkj1/OW
 785OGlQftmkjhJCKKwaj6dLRI7WhXUYq8GBHXGhAa7bvpJzJ/pUuiq+iNox+0RlhBrTiYerbD
X-Received: by 2002:a17:906:d506:b0:a58:7298:fdfe with SMTP id
 a640c23a62f3a-a62281253bamr118451166b.53.1716384626445; 
 Wed, 22 May 2024 06:30:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPs3As7TFkv/OA57+pBCFs+X1ihzxAdT//3QweWc2AAkyU5EJ3VQ3d5O3RGGsiWJBeuQQMPg==
X-Received: by 2002:a17:906:d506:b0:a58:7298:fdfe with SMTP id
 a640c23a62f3a-a62281253bamr118449166b.53.1716384626007; 
 Wed, 22 May 2024 06:30:26 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a5a17894d57sm1789298166b.73.2024.05.22.06.30.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 May 2024 06:30:25 -0700 (PDT)
Message-ID: <889a480d-a535-4e31-a0d1-b1ea23d484ea@redhat.com>
Date: Wed, 22 May 2024 15:30:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vlastimil Babka <vbabka@suse.cz>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-20-hdegoede@redhat.com>
 <1ae4267e-9515-4037-980e-b1f2961b166b@suse.cz>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <1ae4267e-9515-4037-980e-b1f2961b166b@suse.cz>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Vlastimil, On 5/22/24 1:50 PM, Vlastimil Babka wrote: >
 On 4/24/24 2:28 PM, Hans de Goede wrote: >> Switch the hotkey keymap handling
 over to the sparse-keymap helpers, >> there should be no functional changes
 f [...] Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s9m3F-00078c-QN
Subject: Re: [ibm-acpi-devel] [PATCH v2 19/24] platform/x86: thinkpad_acpi:
 Switch to using sparse-keymap helpers
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Nitin Joshi <njoshi1@lenovo.com>, Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Vlastimil,

On 5/22/24 1:50 PM, Vlastimil Babka wrote:
> On 4/24/24 2:28 PM, Hans de Goede wrote:
>> Switch the hotkey keymap handling over to the sparse-keymap helpers,
>> there should be no functional changes from this.
>>
>> Note all the mappings to KEY_UNKNOWN are removed since that is the default
>> behavior of sparse_keymap_report_event() for unknown scancodes.
>>
>> Also drop the big comment about making changes to the keymaps since
>> the contents of that comment are mostly obsolete.
>>
>> Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> 
> Hi,
> 
> I believe this is what gave me the following error compiling current
> Linus's master:
> 
> ERROR: modpost: "sparse_keymap_report_event"
> [drivers/platform/x86/thinkpad_acpi.ko] undefined!
> ERROR: modpost: "sparse_keymap_setup"
> [drivers/platform/x86/thinkpad_acpi.ko] undefined!
> 
> probably config THINKPAD_ACPI now has to depend/select INPUT_SPARSEKMAP?
> It's fixed when I configure it =m manually.

Thank you for reporting this. This should be fixed by:

https://lore.kernel.org/platform-driver-x86/20240522074813.379b9fc2@gandalf.local.home/T/#u

Which I will include in my next pdx86 fixes pull-request to Linus.

Regards,

Hans





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
