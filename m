Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 984588A14AF
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 11 Apr 2024 14:31:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rutaF-0001Y9-Ds;
	Thu, 11 Apr 2024 12:31:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rutaA-0001XR-S1
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 11 Apr 2024 12:31:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o39791NgVPOGygPt4yvbiHEMYNSCg3KIip+yEED7lns=; b=ebT8zZi8FLJnHi03F8wUamMBGU
 pSUAA6gDC7N4g+wt5tuF1fxkhvfhRKoK69PHbyvJTAM8FbDBuadX069TgC4HfKAnctmAC1CxaBT9z
 8w5dj6pDYSdTtboxHNJ5sBs3lbBN62JYUzfwUi+bsxd+DoD+67b9cWkLSlBA27ej6jcQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o39791NgVPOGygPt4yvbiHEMYNSCg3KIip+yEED7lns=; b=EHGx43h7AbeKgaMna2bOZDjkWf
 5NxhbP9voKxd7JC8ojUrPLaM+Bh/Y8dsw+cd4642FH+ap3uAGPn+1h4T3JiNVr4clK4TCGxX2JxvY
 RwhWAbk1twdm8updCpHoo1ncioAknOFe9Oh5GuY8n6E4FViG6zarl6cjXp5LW4zmWVVE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruta8-00089s-Ue for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 11 Apr 2024 12:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712838640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o39791NgVPOGygPt4yvbiHEMYNSCg3KIip+yEED7lns=;
 b=g1O5XFpkK8u5KQpMwzhw1K6JVuY0UPL/0XEoHwK/nDmwxjPJKoVPoDzHS3HA1xK/GM+fZR
 3Bi8CI3m0gMqk1NTOPeIEhH9kepfreGC5ZAeQUDDYHl0+2Cz9qz5sJroIkEnqFueWIxoOt
 Gz0e2vGNtSireHfsjh82PfRT42sNtgQ=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-207-xuYROyZhNYKL5cUOKLrULA-1; Thu, 11 Apr 2024 08:30:38 -0400
X-MC-Unique: xuYROyZhNYKL5cUOKLrULA-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-5685d83ec51so3819898a12.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 11 Apr 2024 05:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712838637; x=1713443437;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=o39791NgVPOGygPt4yvbiHEMYNSCg3KIip+yEED7lns=;
 b=oLneubGnMg9steW8CmIiP9OuakUza/m9wmMcDEU0C3VFAPqEC0LxMhOOyzOsmTwopz
 hOxuG7/dsiFLGrrjBif9Gde/cu7A6kvAUXoxvZCkGBrGMC+4pQyLqLzyc/sZouOoH3GG
 MQsY7EXujCip5HTS1FKWdYenPWQ5jmDG3YplIsbj8oP/jkX1Ry2DkIBJ/hYbAq8YR/lz
 VnOpPXbTcY4oC6fI5bHkmnRtbfdYvBM7Pqzk9yx1jPhn3YRsPRFByYuHRI2kOrvgYVmu
 Um3gJmou8BnbBJ8xbD5JjVdtTiv2Gf1WrCk3h1PjhMGrTLYmLVSQbuBrRI+Y4AadrScH
 /X6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUUoy/XZa0f/Y8vJ814jqym7wWmi5s9WKX5aw/OYff2Opeg5qxfaMMa9QHxHREFUugNxDSEnfC2T/Jjc9MHughz//1oX5Kq7UQkMggyUeqfcBPeN+s=
X-Gm-Message-State: AOJu0Yze8xFM5RjKId2F6IKtkzU2GBwXDC79zHS4a6Y8UN1405f0dJzw
 2ksGsV0zCNOTO5qqHr4e+55c4qtb4KiEdnC8xFGtEY1QpVZAWoAJIW5dNRKN0QWEbOWTFCbCGvN
 7JAylBHLHmAwMHS/z4wfAh8cF05Fk9izgBxfLe/6qXWtVJir9TidbjCmJDIQsVrspE6rbFdqd
X-Received: by 2002:a50:cd19:0:b0:56e:7751:ae4e with SMTP id
 z25-20020a50cd19000000b0056e7751ae4emr2253960edi.33.1712838637386; 
 Thu, 11 Apr 2024 05:30:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfczbrDYphsIXAmP5vXOQog7edYp3/hYYdYnPGuJW85oLkEvHop5fgUsPZglqMhlGlVlPhyg==
X-Received: by 2002:a50:cd19:0:b0:56e:7751:ae4e with SMTP id
 z25-20020a50cd19000000b0056e7751ae4emr2253947edi.33.1712838636991; 
 Thu, 11 Apr 2024 05:30:36 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 n22-20020aa7c796000000b0056feeb85ed0sm177407eds.19.2024.04.11.05.30.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Apr 2024 05:30:36 -0700 (PDT)
Message-ID: <411e6353-16ef-455b-98fa-2d38bb7bf9bd@redhat.com>
Date: Thu, 11 Apr 2024 14:30:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ZhcogDESvZmUPEEf@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dmitry, On 4/11/24 2:02 AM, Dmitry Torokhov wrote: > On
 Tue, Apr 09, 2024 at 10:17:05PM -0400, Mark Pearson wrote: >> Hi Dmitry >>
 >> On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov wrote: >>> On Tue, Apr
 09 [...] 
 Content analysis details:   (-2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ruta8-00089s-Ue
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

Hi Dmitry,

On 4/11/24 2:02 AM, Dmitry Torokhov wrote:
> On Tue, Apr 09, 2024 at 10:17:05PM -0400, Mark Pearson wrote:
>> Hi Dmitry
>>
>> On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov wrote:
>>> On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
>>>> On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
>>>>> On 09/04/2024 09:31, Dmitry Torokhov wrote:
>>>>>> Hi Mark,
>>>>>>
>>>>>> On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
>>>>>>> Add support for new input events on Lenovo laptops that need exporting to
>>>>>>> user space.
>>>>>>>
>>>>>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>>>>>> Add a new keycode to allow this to be used by userspace.
>>>>>>
>>>>>> What is the intended meaning of this keycode? How does it differ from
>>>>>> the driver sending BTN_LEFT press/release twice?
>>>>>>>
>>>>>>> Lenovo support is using FN+N with Windows to collect needed details for
>>>>>>> support cases. Add a keycode so that we'll be able to provide similar
>>>>>>> support on Linux.
>>>>>>
>>>>>> Is there a userspace consumer for this?
>>>>>
>>>>> Funnily enough XKB has had a keysym for this for decades but it's not
>>>>> hooked up anywhere due to the way it's pointer keys accessibility
>>>>> feature was implemented. Theory is that most of userspace just needs
>>>>> to patch the various pieces together for the new evdev code + keysym,
>>>>> it's not really any different to handling a volume key (except this
>>>>> one needs to be assignable).
>>>>
>>>> What is the keysym? If we can make them relatable to each other that
>>>> would be good. Or maybe we could find a matching usage from HID usage
>>>> tables...
>>>
>>> I was looking through the existing codes and I see:
>>>
>>> #define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */
>>>
>>> We also have KEY_VENDOR used in a few drivers/plafrom/x86, including
>>> thinkkpad_acpi.c and I wonder if it would be suitable for this vendor
>>> specific debug info collection application (which I honestly doubt will
>>> materialize).
>>>
>>
>> That's a somewhat disappointing note on your doubts, is that based on
>> anything? Just wondering what we've done to deserve that criticism.
> 
> Sorry, this was not meant as a criticism really, but you mentioned
> yourself that there isn't anything in the works yet, you just have some
> plans.
> 
> For such a project to succeed Lenovo needs to invest into selling
> devices with Linux as a primary operating system, and it has to be
> consumer segment (or small business, because for corporate they
> typically roll their own support channels). The case of retrofitting
> Linux onto a that device originally came with Windows OS rarely gets
> much if any response from the normal support channels.
> 
> Is this something that is actually happening?

Yes, Lenovo is actually offering Fedora as an OS choice when
ordering ThinkPads directly from their website in many countries
including when ordering as a consumer.

And unlike other vendor's Linux preloads which often use a kernel
with downstream laptop specific changes these laptops are running
unmodified Fedora kernels, which themselves are almost pristine
upstream kernels.

Lenovo (Mark) has been really good the last couple of years in
making sure that their hw just works with mainline kernels without
any downstream vendor specific patches.

>> That aside, I guess KEY_INFO or KEY_VENDOR could be a good fit (I
>> personally don't think KEY_CONFIG matches well), but I would be
>> worried about clashing with existing functionality.

Using KEY_INFO / KEY_VENDOR works for me too. So maybe we should
just go with one of those 2 ?

Regards,

Hans





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
