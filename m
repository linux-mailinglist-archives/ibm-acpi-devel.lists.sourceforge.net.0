Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89582477629
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 16 Dec 2021 16:42:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mxstL-0004HY-F4; Thu, 16 Dec 2021 15:41:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mxstK-0004HO-H8
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 16 Dec 2021 15:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ns7kDMEcoaKNGUL81oUCnFc8/9AieN/OkLMyVTe3m3I=; b=lw/w+LoPaTKx8ZpcRMF3CLH6Q2
 PuPvAOBEH65dUd4DYBUIandCWZWjxIH/rpysKVwcrBvDYy95b7zlUC8VEN2dY3k1d4dqFGkrwIROS
 pxshOnt75ezLXb3tllkTaoCQcnONqgNX8otHKDZSuFQZNaa34YKrYDJlKi/7mIyCI1Ms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ns7kDMEcoaKNGUL81oUCnFc8/9AieN/OkLMyVTe3m3I=; b=apFeyh/AmcxRhj+2VRkDxE0yTi
 LM3lHY93iCaXnCSTlzOcs6emjf7pQ9/Mj4waxp/eWH4oN4Cq1zGVa9jjy5ZowP9obo/koFmiCtlPD
 eFD3+8upkXWWD1GqFPXzcCG1dfltRch/sQo7Frj/ePoJepyyQcBgl0DHrSpQqQoHKcFw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxstI-0006Hs-M5
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 16 Dec 2021 15:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639669310;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ns7kDMEcoaKNGUL81oUCnFc8/9AieN/OkLMyVTe3m3I=;
 b=dzvFCdBJPLHjRFLrHNGG1s8lZ9/Qdkzz2KDb5ikiFh+a8SELSG2Bsf6phuTMQRbJdq7anF
 92qUPmYE6E19PrhfLlkjzMrtdOVgtutLqra8MfQHzPgjfRr9+GB0A6QbNVnwepinSKa4wl
 hBfbE2jZsVmo1U2xyTp/pgUtJ3KdF2w=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-46-sc-mmUEpPk2FCoSF9b29-A-1; Thu, 16 Dec 2021 10:41:49 -0500
X-MC-Unique: sc-mmUEpPk2FCoSF9b29-A-1
Received: by mail-ed1-f71.google.com with SMTP id
 v19-20020a056402349300b003f7eba50675so4878340edc.12
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 16 Dec 2021 07:41:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Ns7kDMEcoaKNGUL81oUCnFc8/9AieN/OkLMyVTe3m3I=;
 b=m4soA8iCpwGE//zkpF273PCq9YXrc7XKjsSr8NElhqG8EncYur19wr/uNU3FIb6aUO
 mmXPGAxLWhSiZDwASj79cvyZZcUeRpYc8aIOU9bNJsDzP9fgXJxTwA//sDi6ZlYMKwPK
 mc+p0Jk3iwYgaGRNzZWUigbWSl0BXM41oVaUY7Oq3rwEhykpSLrmEtMX3OQyqXjzY6u2
 UGBr+Xy3CZI4NdbFMDR6NLlVB/RxZeAplnLYx+6yAlv2Tw+uA9J+r/R0z6GMxoDWlgpd
 zw2MvSLKU/i7I7aIaFPyx3CKHS5zvzJ1EO9j3ugw4KOH5Q+m43z1WCyaht1Dx02rvqnM
 XUMQ==
X-Gm-Message-State: AOAM530dLU+F4G0CIoYj4uU84Zw9biu95g2LFcmaRpMiqmQy0jnnLGcw
 f9lTbtf7V03rFK4vLqyPcVPwfiQJWvMOnGpcYtoMukBeuG1R6aCWSsbk0jREUrL7mHrS8Ya90SJ
 2+BlCHr27TI0+fIjGGcUOYrYzPjpDqSEmJqU=
X-Received: by 2002:a17:906:730d:: with SMTP id
 di13mr7423016ejc.557.1639669308379; 
 Thu, 16 Dec 2021 07:41:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw1hty/NqPgPOCvuZBByYKKfw+FS2DPD3jcu2pyAp6MB4tRgVw73vipf1LyB4LBXvx9BUiuUQ==
X-Received: by 2002:a17:906:730d:: with SMTP id
 di13mr7422994ejc.557.1639669308104; 
 Thu, 16 Dec 2021 07:41:48 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id 23sm1937056ejg.213.2021.12.16.07.41.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Dec 2021 07:41:47 -0800 (PST)
Message-ID: <0a2a0f82-b914-e9fe-97a3-13a9608f2dde@redhat.com>
Date: Thu, 16 Dec 2021 16:41:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>
References: <20211123232704.25394-1-linux@weissschuh.net>
 <20211203213305.dfjedjj3b25ftj2z@earth.universe>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211203213305.dfjedjj3b25ftj2z@earth.universe>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 12/3/21 22:33, Sebastian Reichel wrote: > Hi, > > On
    Wed, Nov 24, 2021 at 12:27:00AM +0100, Thomas Weißschuh wrote: >> This series
    adds support for the charge_behaviour property to the power >> su [...] 
 
 Content analysis details:   (-3.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.133.124 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mxstI-0006Hs-M5
Subject: Re: [ibm-acpi-devel] [PATCH 0/4] power: supply: add
 charge_behaviour property (force-discharge, inhibit-charge)
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
Cc: linrunner@gmx.net, nicolopiazzalunga@gmail.com, bberg@redhat.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, hadess@hadess.net,
 markpearson@lenovo.com, smclt30p@gmail.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiAxMi8zLzIxIDIyOjMzLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiBIaSwKPiAK
PiBPbiBXZWQsIE5vdiAyNCwgMjAyMSBhdCAxMjoyNzowMEFNICswMTAwLCBUaG9tYXMgV2Vpw59z
Y2h1aCB3cm90ZToKPj4gVGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgY2hhcmdlX2Jl
aGF2aW91ciBwcm9wZXJ0eSB0byB0aGUgcG93ZXIKPj4gc3Vic3lzdGVtIGFuZCB0aGlua3BhZF9h
Y3BpIGRyaXZlci4KPj4KPj4gQXMgdGhpbmtwYWRfYWNwaSBoYXMgdG8gdXNlIHRoZSAnc3RydWN0
IHBvd2VyX3N1cHBseScgY3JlYXRlZCBieSB0aGUgZ2VuZXJpYwo+PiBBQ1BJIGRyaXZlciBpdCBo
YXMgdG8gcmVseSBvbiBjdXN0b20gc3lzZnMgYXR0cmlidXRlcyBpbnN0ZWFkIG9mIHByb3Blcgo+
PiBwb3dlcl9zdXBwbHkgcHJvcGVydGllcyB0byBpbXBsZW1lbnQgdGhpcyBwcm9wZXJ0eS4KPj4K
Pj4gUGF0Y2ggMTogQWRkcyB0aGUgcG93ZXJfc3VwcGx5IGRvY3VtZW50YXRpb24gYW5kIGJhc2lj
IHB1YmxpYyBBUEkKPj4gUGF0Y2ggMjogQWRkcyBoZWxwZXJzIHRvIHBvd2VyX3N1cHBseSBjb3Jl
IHRvIGhlbHAgZHJpdmVycyBpbXBsZW1lbnQgdGhlCj4+ICAgY2hhcmdlX2JlaGF2aW91ciBhdHRy
aWJ1dGUKPj4gUGF0Y2ggMzogQWRkcyBzdXBwb3J0IGZvciBmb3JjZS1kaXNjaGFyZ2UgdG8gdGhp
bmtwYWRfYWNwaS4KPj4gUGF0Y2ggNDogQWRkcyBzdXBwb3J0IGZvciBpbmhpYml0LWRpc2NoYXJn
ZSB0byB0aGlua3BhZF9hY3BpLgo+Pgo+PiBQYXRjaCAzIGFuZCA0IGFyZSBsYXJnZWx5IHRha2Vu
IGZyb20gb3RoZXIgcGF0Y2hlcyBhbmQgYWRhcHRlZCB0byB0aGUgbmV3IEFQSS4KPj4gKExpbmtz
IGFyZSBpbiB0aGUgcGF0Y2ggdHJhaWxlcikKPj4KPj4gT2duamVuIEdhbGljOgo+Pgo+PiBZb3Vy
IFMtby1iIGlzIG9uIHRoZSBvcmlnaW5hbCBpbmhpYml0X2NoYXJnZSBhbmQgZm9yY2VfZGlzY2hh
cmdlIHBhdGNoZXMuCj4+IEkgd291bGQgbGlrZSB0byBhZGQgeW91IGFzIENvLWRldmVsb3BlZC1i
eSBidXQgdG8gZG8gdGhhdCBpdCB3aWxsIGFsc28gcmVxdWlyZQo+PiB5b3VyIFMtby1iLiBDb3Vs
ZCB5b3UgZ2l2ZSB5b3VyIHNpZ24tb2ZmcyBmb3IgdGhlIG5ldyBwYXRjaGVzLCBzbyB5b3UgY2Fu
IGJlCj4+IHByb3Blcmx5IGF0dHJpYnV0ZWQ/Cj4+Cj4+IFNlYmFzdGlhbiBSZWljaGVsOgo+Pgo+
PiBDdXJyZW50bHkgdGhlIHNlcmllcyBkb2VzIG5vdCBhY3R1YWxseSBzdXBwb3J0IHRoZSBwcm9w
ZXJ0eSBhcyBhIHByb3Blcgo+PiBwb3dlcnN1cHBseSBwcm9wZXJ0eSBoYW5kbGVkIGZ1bGx5IGJ5
IHBvd2VyX3N1cHBseV9zeXNmcy5jIGJlY2F1c2UgdGhlcmUgd291bGQKPj4gYmUgbm8gdXNlciBm
b3IgdGhpcyBwcm9wZXJ0eS4KPiAKPiBJJ20gbm90IHRvbyBoYXBweSBob3cgdGhlIGFjcGktYmF0
dGVyeSBob29rcyB3b3JrLCBidXQgdGhhdCdzIG5vdAo+IHlvdXIgZmF1bHQgYW5kIHRoaXMgcGF0
Y2hzZXQgZG9lcyBub3QgcmVhbGx5IG1ha2UgdGhlIHNpdHVhdGlvbgo+IHdvcnNlLiBTbzoKPiAK
PiBBY2tlZC1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9y
YS5jb20+CgpTZWJhc3RpYW4sIHdoYXQgaXMgdGhlIHBsYW4gZm9yIHRha2luZyB0aGlzIHVwc3Ry
ZWFtID8gRG9lcyB5b3VyIGFjayBtZWFuIHRoYXQKeW91IGFyZSBvayB3aXRoIG1lIHRha2luZyB0
aGUgZW50aXJlIHNlcmllcyB1cHN0cmVhbSB0aHJvdWdoIHRoZSBwZHg4NiB0cmVlPwoKT3IgZG8g
eW91IHBsYW4gdG8gYXBwbHkgcGF0Y2hlcyAxLTIgdGhyb3VnaCBsaW51eC1wb3dlci1zdXBwbHku
Z2l0OyBhbmQgaW4gdGhhdApjYXNlIGNhbiB5b3UgcHJvdmlkZSBhbiBpbm1tdXRhYmxlIGJyYW5j
aCB3aXRoIHRob3NlIHBhdGNoZXMgZm9yIG1lIHRvIG1lcmdlCmludG8gcGR4ODYvZm9yLW5leHQg
c28gdGhhdCBJIGNhbiB0aGVuIGFwcGx5IHBhdGNoZXMgMyArIDQgdGhlcmUgPwoKTm90ZSBtZXJn
aW5nIGV2ZXJ5dGhpbmcgdGhyb3VnaCB0aGUgbGludXgtcG93ZXItc3VwcGx5LmdpdCB0cmVlIGlz
IG5vbiBpZGVhbAppbiB0aGlzIGNhc2UgYmVjYXVzZSB0aGUgdGhpbmtwYWRfYWNwaS5jIGNvZGUg
YWxyZWFkeSBoYXMgYSBsb3Qgb2YgY2hhbmdlcwppbiBwZHg4Ni9mb3ItbmV4dC4KClJlZ2FyZHMs
CgpIYW5zCgoKPj4gUHJldmlvdXMgZGlzY3Vzc2lvbnMgYWJvdXQgdGhlIEFQSToKPj4KPj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGxhdGZvcm0tZHJpdmVyLXg4Ni8yMDIxMTEwODE5Mjg1Mi4z
NTc0NzMtMS1saW51eEB3ZWlzc3NjaHVoLm5ldC8KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
cGxhdGZvcm0tZHJpdmVyLXg4Ni8yMTU2OWE4OS04MzAzLTg1NzMtMDVmYi1jMmZlYzI5OTgzZDFA
Z21haWwuY29tLwo+Pgo+PiB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIxMTEx
MzEwNDIyNS4xNDEzMzMtMS1saW51eEB3ZWlzc3NjaHVoLm5ldC8KPj4gdjEgLT4gdjI6Cj4+Cj4+
ICogVXNlIHN5c2ZzX2VtaXQtQVBJcyBpbnN0ZWFkIG9mIHBsYWluIHNwcmludGYKPj4gKiBNb3Jl
IGNlY2tzIGZvciBhY3R1YWwgZmVhdHVyZSBhdmFpbGFiaWxpdHkKPj4gKiBWYWxpZGF0aW9uIG9m
IHRoZSB3cml0dGVuIHZhbHVlcwo+PiAqIFJlYWQgaW5oaWJpdC1jaGFyZ2UgdmlhIEJJQ0cgaW5z
dGVhZCBvZiBQU1NHIChwZWFrIHNoaWZ0IHN0YXRlKQo+PiAqIERvbid0IG1hbmdsZSBlcnJvciBu
dW1iZXJzIGluIGNoYXJnZV9iZWhhdmlvdXJfc3RvcmUoKQo+Pgo+PiBPcGVuIHBvaW50czoKPj4K
Pj4gVGhvbWFzIEtvY2ggaGFzIG9ic2VydmVkIHRoYXQgb24gYSBUNDUwcyB3aXRoIHR3byBiYXR0
ZXJpZXMKPj4gaW5oaWJpdC1jaGFyZ2Ugb24gQkFUMCB3aWxsIGFmZmVjdCBib3RoIGJhdHRlcmll
cyBhbmQgZm9yIEJBVDEgaXQgaXMgaWdub3JlZAo+PiBlbnRpcmVseSwgdGhpcyBzZWVtcyB0byBi
ZSBhIGJ1ZyBpbiB0aGUgRUMuCj4+IE9uIG15IFQ0NjBzIHdpdGggdHdvIGJhdHRlcmllcyBpdCB3
b3JrcyBjb3JyZWN0bHkuCj4+Cj4+IFRob21hcyBXZWnDn3NjaHVoICg0KToKPj4gICBwb3dlcjog
c3VwcGx5OiBhZGQgY2hhcmdlX2JlaGF2aW91ciBhdHRyaWJ1dGVzCj4+ICAgcG93ZXI6IHN1cHBs
eTogYWRkIGhlbHBlcnMgZm9yIGNoYXJnZV9iZWhhdmlvdXIgc3lzZnMKPj4gICBwbGF0Zm9ybS94
ODY6IHRoaW5rcGFkX2FjcGk6IHN1cHBvcnQgZm9yY2UtZGlzY2hhcmdlCj4+ICAgcGxhdGZvcm0v
eDg2OiB0aGlua3BhZF9hY3BpOiBzdXBwb3J0IGluaGliaXQtY2hhcmdlCj4+Cj4+ICBEb2N1bWVu
dGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWNsYXNzLXBvd2VyIHwgIDE0ICsrCj4+ICBkcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgICAgICAgIHwgMTkxICsrKysrKysrKysrKysr
KysrKystCj4+ICBkcml2ZXJzL3Bvd2VyL3N1cHBseS9wb3dlcl9zdXBwbHlfc3lzZnMuYyAgIHwg
IDUxICsrKysrKwo+PiAgaW5jbHVkZS9saW51eC9wb3dlcl9zdXBwbHkuaCAgICAgICAgICAgICAg
ICB8ICAxNiArKwo+PiAgNCBmaWxlcyBjaGFuZ2VkLCAyNjggaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPj4KPj4KPj4gYmFzZS1jb21taXQ6IDY2ZjRiZWFhNmMxZDI4MTYxZjUzNDQ3MTQ4
NGIyZGFhMmRlMWRjZTAKPj4gLS0gCj4+IDIuMzQuMAo+PgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QK
aWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
