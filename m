Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4199389D69E
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  9 Apr 2024 12:16:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ru8Wh-0007gz-OU;
	Tue, 09 Apr 2024 10:16:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ru8Wf-0007gr-LC
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Apr 2024 10:16:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aMeePPemknPpIlqp3R4BbTMH+iMIzQbR2BJB446CC8o=; b=UQMDuTfUqKxHc0LD65UXtWvPGK
 6dYqizck5hkGMziH3r3xGCT3fJ0aZ+UfwV3MAR3017YaC4ggPA2UO+ydlS4IULjbGoMOYta2DIpTN
 T6BVLSKfbq0ILJPp5eqB2kaaI/rE9R7crYZgJ2w2ESVeYIGSw8t/Qt6UJPNtioFal8IY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aMeePPemknPpIlqp3R4BbTMH+iMIzQbR2BJB446CC8o=; b=B979OnldCizhhJFHFXS6kxlvgT
 q1mdrOsepCoIrvmdsGymN+6JARVVoBkBU6rN9Q97vuoZ2dE92ajK+GP9KmeOMykSxRFTF4gwrRBZL
 IHc7i89662MQa3nhOmufnu+cPWDzgEdWj+SMy1tbp4yLqdESXMGCwT21x8vR2eUHMBOw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ru8Wa-0003wv-E8 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Apr 2024 10:16:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712657769;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aMeePPemknPpIlqp3R4BbTMH+iMIzQbR2BJB446CC8o=;
 b=SfxyAHNlNyNgmKTfWOh6hGo3uXTpDM7uzS/cVnhQMaaVIk5JTXxeoozkY7TbwCrcRWn0Kz
 jgTXvH1XwbAeMCNq889riNDUBPg0XlFZlelLrLAtgvZtNpTkRmOZWT7O9yzdHi9JKBBxtQ
 G7dXHBj3oR/drNUQX8R4K12A2Ur3xIE=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-574-Sci4QC6rM_CNWaChSMf9nQ-1; Tue, 09 Apr 2024 06:16:07 -0400
X-MC-Unique: Sci4QC6rM_CNWaChSMf9nQ-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a51b00fc137so226746466b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 09 Apr 2024 03:16:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712657766; x=1713262566;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aMeePPemknPpIlqp3R4BbTMH+iMIzQbR2BJB446CC8o=;
 b=hkpPZIEKri1v9HnTuy3VFO7nUagJ83EbHAwrSm7Yi1wjcTIKT8N5dYsCs0Iy13UKx6
 5huspm7cZ1Jp4q4wMOGWt906ik47IcLz0O54jLS79RzdRP7P3XJNKg+YYO6snkf4b4CQ
 3RJE59Bp12ReCL9fT7PeR9KrFkfV5WK8aHVPiK5LXXLXeXHGrGYpxZxXcB3myWSW3x/2
 kiEmEuYC471hVzhJw3jpvmkxyVP2iAZu6T3toT8642BY9j9A4Hl6VgxWuVr3kz0uN0Mb
 1PcqqCrO2D747QSUTjcaevmzxjgri5bPH50wO7ApwiULqMKuHllrEpjGa2MIsPOIx1zV
 vhMQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVJHp04xhW7qp2UhiWRQk412gnI2zG7zfO5psIbOHjEOmPmYEweMSvyv9gh/enxL/PsdS1tlGajhtQuh0wti2Dn8y9EhOyid3Su64MlTU7fnt21Qvc=
X-Gm-Message-State: AOJu0Yy2awsG/9MAXe66f9eH84CtDG+TT7/f7fLgwIeeBfFsLWTRE6bv
 F6Xr+vXv8lSYpmb54bzKTp8Pn9ZG/jFboEfk9wKQFWKkx9CMSzcEu8b2UofNzbZvSzmER+7sdqc
 GTPjlqillv2/bdIeo5Fx64XborZ6wK9vRDIqSN+SLAAvIykaq5iiz25QeGzk8UPHB50yj8cVo
X-Received: by 2002:a17:907:980c:b0:a4e:e61:b5fa with SMTP id
 ji12-20020a170907980c00b00a4e0e61b5famr10411693ejc.15.1712657766196; 
 Tue, 09 Apr 2024 03:16:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNC0SM3GLkJe2l6pl8yMpUjris79RVE1HgtJTa1aHHLO8ip+nVXtFxc8Q0SGPPZICM3onLkQ==
X-Received: by 2002:a17:907:980c:b0:a4e:e61:b5fa with SMTP id
 ji12-20020a170907980c00b00a4e0e61b5famr10411673ejc.15.1712657765872; 
 Tue, 09 Apr 2024 03:16:05 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 lg11-20020a170906f88b00b00a4e2db8ffdcsm5493019ejb.111.2024.04.09.03.16.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Apr 2024 03:16:05 -0700 (PDT)
Message-ID: <dded171e-4cb4-47cc-aece-d5afd229060a@redhat.com>
Date: Tue, 9 Apr 2024 12:16:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <c6427b27-3c9d-4aa4-abfa-c3588b5d9a42@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <c6427b27-3c9d-4aa4-abfa-c3588b5d9a42@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dmitry, On 4/9/24 2:00 AM, Mark Pearson wrote: > Hi Dmitry
 > > On Mon, Apr 8, 2024, at 7:31 PM, Dmitry Torokhov wrote: >> Hi Mark, >>
 >> On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote: >>> Add
 s [...] Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ru8Wa-0003wv-E8
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

On 4/9/24 2:00 AM, Mark Pearson wrote:
> Hi Dmitry
> 
> On Mon, Apr 8, 2024, at 7:31 PM, Dmitry Torokhov wrote:
>> Hi Mark,
>>
>> On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
>>> Add support for new input events on Lenovo laptops that need exporting to
>>> user space.
>>>
>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>> Add a new keycode to allow this to be used by userspace.
>>
>> What is the intended meaning of this keycode? How does it differ from
>> the driver sending BTN_LEFT press/release twice?
> 
> Double tapping on the trackpoint is a unique event - it's not the same as BTN_LEFT twice. The BIOS will send a new ACPI event for it and it's not meant to be the same as mouse button clicks.

To extend a bit on this, this double-tap event is not reported through
the PS/2 trackpoint interface at all. Instead it is reported to
the OS by the ACPI hotkey notifier, which is used to report various
multi-media hotkeys and things like that, this is handled by
the thinkpad_apci driver which sofar only reports key-presses.

So there is no BTN_LEFT to report twice and if we add a BTN_LEFT
then we end up with an input_device which has a bunch of KEYs
+ BTN_LEFT but no abs/rel axis which will just confuse userspace.

We could add a second input_device which looks like a mouse
but only ever reports BTN_LEFT double-clicks I guess, but as
Mark said the intention is for this double-tap to work more
like a hotkey then a double click. Also note that regular
taps on the trackstick do nothing. Clicking the mouse buttons
of the stick involves pressing separate physical buttons between
the trackpad and the keyboard and those are reported over
the same PS/2 port as the relative motion events from the stick.

Regards,

Hans





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
