Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6477A60A9CD
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Oct 2022 15:24:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1omxR5-0000DO-2E;
	Mon, 24 Oct 2022 13:24:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1omxR3-0000DH-Px
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 13:24:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pm5HJkjYWeeX/qs3JDehVtgKORU0AuoMo2twQDux5eA=; b=BDfXsMTlFzVqFxUti93aDnyrFu
 aFIbCuFNk7LS6vN0XZmCi7x854C0rlpJ8OXCdpagrIXIXHleGru722e2ajl/GLPDmeaxHWieDpXVR
 xCkZ5T0NrBpYrZ9WGhKIGuNPy5N44Iq7Ruh7okbV+eNb7AKNSq8dUZIGGfwp5LKALyLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pm5HJkjYWeeX/qs3JDehVtgKORU0AuoMo2twQDux5eA=; b=U7zkp6i6lUVJLSokauGIqX7cul
 tZjzhPp8f8OAvPA5cLqms4Jba9BYmiT34/unz4DTjPQOU4IepoqWhXqb3QfZ6waL2P9idO1oRsXHt
 UWG+jQk79CQeUk6h2FHAQSYBQ4uWTVgPkBhdVyyF80kFGVXazq/804WOkEHCCJTGzUng=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1omxR2-0007ad-HV for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 13:24:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666617842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Pm5HJkjYWeeX/qs3JDehVtgKORU0AuoMo2twQDux5eA=;
 b=JPCJuQuzTNYv/O/hg06P456awCDopfNBLQzolu2yLJJp0/GhZOcHcQoYtT891GeVSfvvch
 bT8kIeM8Bgt76FPMV3fxhsHhSQMxhms2FStpG3mleK5x8LHBgdZCRzSJipyBNH0bLhoqYI
 1yrWrrqB407Ui5voGGaT2vAoXx84HRg=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-164-ANeRzTMqOcqeKvuwkkIxEw-1; Mon, 24 Oct 2022 09:24:01 -0400
X-MC-Unique: ANeRzTMqOcqeKvuwkkIxEw-1
Received: by mail-lf1-f69.google.com with SMTP id
 k19-20020ac24f13000000b004a49391ef9eso2671449lfr.9
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 24 Oct 2022 06:24:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Pm5HJkjYWeeX/qs3JDehVtgKORU0AuoMo2twQDux5eA=;
 b=edYmbZ975h6U2bccnd0uHkClLOSSPCymmqjCcf2H8+rAdnIG6L79hdnE9BeB70h5hD
 eo00EurN96NO00/OFhknWVDLVB0aFU1IV7qHGTfcf7cyowkyH3PZEgLYxfN6a3lE+tSL
 mpkdEk4ItQ07tn4s5beg/w2e24q6KyRrUEvncmFZUUvpg8wJhPFRHoKQDXauG3LO5t0h
 JkctuNvrz9kp0rZMbSNorF6PImAo5up9/dlbZV33rsjiPPIE1E61dsovSYud/T9e/Qpr
 aTAQBPr9mZSF41edEwzQstvFgJezwGuu9Po0eLiP225oVMJAO6mmnRGZOKYYrpqwbl6q
 X1NA==
X-Gm-Message-State: ACrzQf2Onnzd41T4MvYb65/IoagjRlpRtvKcvFVuRV8qHyg2Yzbo7njW
 cEuVpNfvbN7nPSWMEHCfNrSSt+dXl4J0Fo8pzR95w9ow7F/BV54Rc3+fhhDtXAVaJ7uUswCKnqj
 kZOAkmncjNPeMAGNK9urOoBIuWdhc00DiZsY=
X-Received: by 2002:a2e:a781:0:b0:26f:c6b5:3da5 with SMTP id
 c1-20020a2ea781000000b0026fc6b53da5mr12838998ljf.396.1666617839447; 
 Mon, 24 Oct 2022 06:23:59 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6nRpfOUd7fXfaQxZAoL/YNjVZG4I1hOQtgleKwhNKXvtlVx02RUh+6naoowPVHW1NVhRqxQg==
X-Received: by 2002:a17:906:8a6a:b0:79e:2efe:e0 with SMTP id
 hy10-20020a1709068a6a00b0079e2efe00e0mr12680099ejc.401.1666617828842; 
 Mon, 24 Oct 2022 06:23:48 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 b27-20020a17090630db00b0073dbaeb50f6sm15619252ejb.169.2022.10.24.06.23.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 06:23:48 -0700 (PDT)
Message-ID: <84d86b61-7694-2e22-3593-b11b3ce33cf8@redhat.com>
Date: Mon, 24 Oct 2022 15:23:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
 Akihiko Odaki <akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <746e5cc6-516f-8f69-9d4b-8fe237de8fd6@redhat.com>
 <edec5950-cec8-b647-ccb1-ba48f9b3bbb0@daynix.com>
 <20221024131451.lvkesdg3kvyvbi7n@pali>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20221024131451.lvkesdg3kvyvbi7n@pali>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 10/24/22 15:14, Pali Rohár wrote: > On Monday 24 October
    2022 21:58:57 Akihiko Odaki wrote: >> Regarding the second limitation, I
   don't even understand the difference >> between vendor and native. [...] 
 
 Content analysis details:   (-0.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1omxR2-0007ad-HV
Subject: Re: [ibm-acpi-devel] [PATCH 00/22] Fallback to native backlight
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
Cc: linux-fbdev@vger.kernel.org, Ike Panhc <ike.pan@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Azael Avalos <coproscefalo@gmail.com>,
 Mattia Dongili <malattia@linux.it>, Daniel Dadap <ddadap@nvidia.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, David Airlie <airlied@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Woithe <jwoithe@just42.net>, Jonathan Corbet <corbet@lwn.net>, "Lee,
 Chun-Yi" <jlee@suse.com>, Helge Deller <deller@gmx.de>,
 Lee Jones <lee@kernel.org>, Robert Moore <robert.moore@intel.com>,
 linux-acpi@vger.kernel.org, Cezary Jackiewicz <cezary.jackiewicz@gmail.com>,
 Len Brown <lenb@kernel.org>, Matthew Garrett <mjg59@srcf.ucam.org>,
 Kenneth Chan <kenneth.t.chan@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>, intel-gfx@lists.freedesktop.org,
 acpi4asus-user@lists.sourceforge.net,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Mark Gross <markgross@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 platform-driver-x86@vger.kernel.org, devel@acpica.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net, Jingoo Han <jingoohan1@gmail.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiAxMC8yNC8yMiAxNToxNCwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gT24gTW9uZGF5IDI0
IE9jdG9iZXIgMjAyMiAyMTo1ODo1NyBBa2loaWtvIE9kYWtpIHdyb3RlOgo+PiBSZWdhcmRpbmcg
dGhlIHNlY29uZCBsaW1pdGF0aW9uLCBJIGRvbid0IGV2ZW4gdW5kZXJzdGFuZCB0aGUgZGlmZmVy
ZW5jZQo+PiBiZXR3ZWVuIHZlbmRvciBhbmQgbmF0aXZlLiBNeSBndWVzcyBpcyB0aGF0IGEgdmVu
ZG9yIGJhY2tsaWdodCBkZXZpY2UgdXNlcwo+PiB2ZW5kb3Itc3BlY2lmaWMgQUNQSSBpbnRlcmZh
Y2UsIGFuZCBhIG5hdGl2ZSBvbmUgZGlyZWN0bHkgdXNlcyBoYXJkd2FyZQo+PiByZWdpc3RlcnMu
IElmIG15IGd1ZXNzIGlzIGNvcnJlY3QsIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdmVuZG9yIGFu
ZCBuYXRpdmUKPj4gZG9lcyBub3QgaW1wbHkgdGhhdCBib3RoIG9mIHRoZW0gYXJlIGxpa2VseSB0
byBleGlzdCBhdCB0aGUgc2FtZSB0aW1lLiBBcwo+PiB0aGUgY29uY2x1c2lvbiwgdGhlcmUgaXMg
bm8gbW9yZSBtb3RpdmF0aW9uIHRvIHRyeSB0byBkZS1kdXBsaWNhdGUgdGhlCj4+IHZlbmRvci9u
YXRpdmUgY29tYmluYXRpb24gdGhhbiB0byB0cnkgdG8gZGUtZHVwbGljYXRlIGNvbWJpbmF0aW9u
IG9mIGRldmljZXMKPj4gd2l0aCBhIHNpbmdsZSB0eXBlLgo+IAo+IEhlbGxvISBJIGp1c3Qgd2Fu
dCB0byBwb2ludCBvbmUgdGhpbmcuIE9uIHNvbWUgRGVsbCBsYXB0b3BzIHRoZXJlIGFyZQo+IDMg
ZGlmZmVyZW50IHdheXMgKD0gMyBkaWZmZXJlbnQgQVBJcykgaG93IHRvIGNvbnRyb2wgZGlzcGxh
eSBiYWNrbGlnaHQuCj4gVGhlcmUgaXMgQUNQSSBkcml2ZXIgKHVzZXMgQUNQSSksIEdQVS9EUk0g
ZHJpdmVyIChpOTE1LmtvOyB1c2VzIGRpcmVjdGx5Cj4gSFcpIGFuZCBwbGF0Zm9ybSB2ZW5kb3Ig
ZHJpdmVyIChkZWxsLWxhcHRvcC5rbzsgdXNlcyB2ZW5kb3IgQklPUyBvcgo+IGZpcm13YXJlIEFQ
SSkuCgpSaWdodCBhbmQgdGhhdCBpcyBqdXN0IG9uZSBleGFtcGxlIG9mIGxhcHRvcHMgd2hpY2gg
Y2FuIHJlZ2lzdGVyIGJvdGgKdmVuZG9yICsgbmF0aXZlIGJhY2tsaWdodCBkZXZpY2VzLCB3aGlj
aCBpcyB3aHkgdGhpcyB3aG9sZSBzZXJpZXMgaXMKYSBiYWQgaWRlYS4KClJlZ2FyZHMsCgpIYW5z
CgoKCj4gSnVzdCBldmVyeSBkcml2ZXIgaGFzIGRpZmZlcmVudCBwcmUtY2FsY3VsYXRlZCBzY2Fs
aW5nCj4gdmFsdWVzLiBTbyBzb21ldGltZXMgdXNlciB3YW50cyB0byBjaG9vc2UgZGlmZmVyZW50
IGRyaXZlciBqdXN0IGJlY2F1c2UKPiBpdCBhbGxvd3MgdG8gc2V0IGJhY2tsaWdodCBsZXZlbCB3
aXRoICJiZXR0ZXIiIGdyYW51bGFyaXR5LiBSZWdpc3RlcmluZwo+IGFsbCAzIGRldmljZSBkcml2
ZXJzIGlzIGJhZCBhcyB1c2VyIGRvZXMgbm90IHdhbnQgdG8gc2VlIDMgZGlzcGxheQo+IHBhbmVs
cyBhbmQgZm9yY2luZyByZWdpc3RyYXRpb24gb2Ygc3BlY2lmaWMgb25lIHdpdGhvdXQgcnVudGlt
ZSBvcHRpb24KPiBpcyBhbHNvIGJhZCAoc29tZSBvZiB0aG9zZSBkcml2ZXJzIGRvIG5vdCBoYXZl
IHRvIGJlIHN1aXRhYmxlIG9yIGhhcwo+IHdvcnNlIGdyYW51bGFyaXR5IGFzIG90aGVyKS4KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGkt
ZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZl
bAo=
