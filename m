Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C1847C37F
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Dec 2021 17:07:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mzheh-0005sQ-RZ; Tue, 21 Dec 2021 16:06:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mzheg-0005sC-6I
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Dec 2021 16:06:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h8j90K6L+jMTJ+92nwkdhzdimoieBEu9gIYMqpMiA+k=; b=jnRhCkHSuZ5HRRx2NnIxfJ3rPP
 dKSRa0xKYEs8IOf3lfJHt5MUdIIrvUFqrAjOpU6/bZXsp2bAvs6RIpYJGbJlym0OfuAOMy7uUnk1G
 4FjDrxgB/LkZ2CD1+lSZq/1rqlUp4rmJVliZaWZy40HtfxotBK4b8QM85aEyCjxm+yOI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h8j90K6L+jMTJ+92nwkdhzdimoieBEu9gIYMqpMiA+k=; b=TVjC/HRKnyrs/cdwm8xrpJxc+e
 d8yPgaklf/ty1iICa14WCgGgsZ+EDqc6bWAyMhuzFAnrUkFd1cEoz1747b64oZ0D4mrQP0P7M5Ner
 OEvOeeAPeBuREvoqH+A6bHQ2c9MVcp90XGrdNnkFv5KRdp62zGTFbHANrC28U5osSQRc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mzheg-0005gQ-AA
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Dec 2021 16:06:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640102775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h8j90K6L+jMTJ+92nwkdhzdimoieBEu9gIYMqpMiA+k=;
 b=bkXIGuGQ0hPahkoSgrXjT6dApPnWVT4qs/MjWoB3TbYpNMX8jt6S9BQJuTfrU9NSBmp4ag
 DBctlOtXqEMVhnnVpYjbOgcXSredxGPGJ0J+AGlI6qwV8yVF8P7OWt4iUN3WLafFaufMcd
 16oWmtck9rPnvOYKlKD37kJctLRFyxM=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-424-ETPyBDlyNUmxs7irz5AA-w-1; Tue, 21 Dec 2021 11:06:12 -0500
X-MC-Unique: ETPyBDlyNUmxs7irz5AA-w-1
Received: by mail-ed1-f70.google.com with SMTP id
 h7-20020a05640250c700b003f800db4193so10837615edb.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 21 Dec 2021 08:06:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=h8j90K6L+jMTJ+92nwkdhzdimoieBEu9gIYMqpMiA+k=;
 b=lQ7X005sTpFznTftXJw1X/Ob4c6zBRD0Iy5W8Gxr8BGWN7d+/RfgGY5amYBwCnaNn8
 ybOPQxV+aP9n/e1pH4SAcUihYV6QN3HkI0v298X9jgmCGlSV3TiveUuPuP3Wsl3uzsKc
 NFkHhtRasWXl1oJo7R1yVDRwqOfDaC/OYhuth7TfXqFkEspSCrDm2982c2mmyR/J4gV6
 GYESew9VXMJ5nnAPnmG/0T+rAb1nQDa0+cmw8y10vgQCxt1b2Xs12IK4IV0s2tes1RW8
 bBfG3GWmFCcmx2njkOKbaVWcLHMPw4gW7ezFPZe3j/DO12M4vM0HPC22ZuS00c1pAKjt
 SbOA==
X-Gm-Message-State: AOAM531nsy1+uB1gpRouHcsIqAL/99mev1mNjOMAcfGtGlDRq2xtLENf
 E/JMEAHOqdz8u8Xdpc2z00bGikYupZqam7+Anlkp3+HBn2iXPUy3XyEPYGdjogtlSzkClaYhrQL
 qJtDI1Jq1mxUWTpVxEGsPPfM/VeritYwuzas=
X-Received: by 2002:a17:906:c113:: with SMTP id
 do19mr3452274ejc.386.1640102766154; 
 Tue, 21 Dec 2021 08:06:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz+kRtxhqJ1CGneSm94jZP3MegGl113EQ2yZjMTqNZ5gCM6/LfJa6vjVtgAVr3CWxay7JN6Ig==
X-Received: by 2002:a17:906:c113:: with SMTP id
 do19mr3452253ejc.386.1640102765935; 
 Tue, 21 Dec 2021 08:06:05 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id oz7sm2018016ejc.81.2021.12.21.08.06.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Dec 2021 08:06:05 -0800 (PST)
Message-ID: <b858c808-6153-66fd-beb5-68595b148a7e@redhat.com>
Date: Tue, 21 Dec 2021 17:06:04 +0100
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
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
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
X-Headers-End: 1mzheg-0005gQ-AA
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
YS5jb20+CgpTZWJhc3RpYW4sIEkgaGF2ZSB0YWtlbiB0aGUgbGliZXJ0eSB0byBhc3N1bWUgdGhh
dCB0aGlzIG1lYW5zIHRoYXQgeW91IGFyZQpvayB3aXRoIG1lcmdpbmcgdGhlIGVudGlyZSBzZXJp
ZXMgdGhyb3VnaCB0aGUgcGR4ODYgdHJlZSAoSSd2ZSBkb25lIGEgdGVzdC1tZXJnZQp3aXRoIGxp
bnV4LXBvd2VyLXN1cHBseS9mb3ItbmV4dCBhbmQgdGhlcmUgYXJlIG5vIGNvbmZsaWN0cykuCgpU
aG9tYXMsIFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC1zZXJpZXMsIEkndmUgYXBwbGllZCB0aGUg
c2VyaWVzCnRvIG15IHJldmlldy1oYW5zIGJyYW5jaDoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcGR4ODYvcGxhdGZvcm0tZHJpdmVycy14ODYuZ2l0L2xv
Zy8/aD1yZXZpZXctaGFucwoKT25jZSBJJ3ZlIHJ1biBzb21lIHRlc3RzIG9uIHRoaXMgYnJhbmNo
IHRoZSBwYXRjaGVzIHRoZXJlIHdpbGwgYmUKYWRkZWQgdG8gdGhlIHBsYXRmb3JtLWRyaXZlcnMt
eDg2L2Zvci1uZXh0IGJyYW5jaCBhbmQgZXZlbnR1YWxseQp3aWxsIGJlIGluY2x1ZGVkIGluIHRo
ZSBwZHg4NiBwdWxsLXJlcXVlc3QgdG8gTGludXMgZm9yIHRoZSBuZXh0Cm1lcmdlLXdpbmRvdy4K
ClJlZ2FyZHMsCgpIYW5zCgoKCgoKPiAKPiAtLSBTZWJhc3RpYW4KPiAKPj4gUHJldmlvdXMgZGlz
Y3Vzc2lvbnMgYWJvdXQgdGhlIEFQSToKPj4KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGxh
dGZvcm0tZHJpdmVyLXg4Ni8yMDIxMTEwODE5Mjg1Mi4zNTc0NzMtMS1saW51eEB3ZWlzc3NjaHVo
Lm5ldC8KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGxhdGZvcm0tZHJpdmVyLXg4Ni8yMTU2
OWE4OS04MzAzLTg1NzMtMDVmYi1jMmZlYzI5OTgzZDFAZ21haWwuY29tLwo+Pgo+PiB2MTogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIxMTExMzEwNDIyNS4xNDEzMzMtMS1saW51eEB3
ZWlzc3NjaHVoLm5ldC8KPj4gdjEgLT4gdjI6Cj4+Cj4+ICogVXNlIHN5c2ZzX2VtaXQtQVBJcyBp
bnN0ZWFkIG9mIHBsYWluIHNwcmludGYKPj4gKiBNb3JlIGNlY2tzIGZvciBhY3R1YWwgZmVhdHVy
ZSBhdmFpbGFiaWxpdHkKPj4gKiBWYWxpZGF0aW9uIG9mIHRoZSB3cml0dGVuIHZhbHVlcwo+PiAq
IFJlYWQgaW5oaWJpdC1jaGFyZ2UgdmlhIEJJQ0cgaW5zdGVhZCBvZiBQU1NHIChwZWFrIHNoaWZ0
IHN0YXRlKQo+PiAqIERvbid0IG1hbmdsZSBlcnJvciBudW1iZXJzIGluIGNoYXJnZV9iZWhhdmlv
dXJfc3RvcmUoKQo+Pgo+PiBPcGVuIHBvaW50czoKPj4KPj4gVGhvbWFzIEtvY2ggaGFzIG9ic2Vy
dmVkIHRoYXQgb24gYSBUNDUwcyB3aXRoIHR3byBiYXR0ZXJpZXMKPj4gaW5oaWJpdC1jaGFyZ2Ug
b24gQkFUMCB3aWxsIGFmZmVjdCBib3RoIGJhdHRlcmllcyBhbmQgZm9yIEJBVDEgaXQgaXMgaWdu
b3JlZAo+PiBlbnRpcmVseSwgdGhpcyBzZWVtcyB0byBiZSBhIGJ1ZyBpbiB0aGUgRUMuCj4+IE9u
IG15IFQ0NjBzIHdpdGggdHdvIGJhdHRlcmllcyBpdCB3b3JrcyBjb3JyZWN0bHkuCj4+Cj4+IFRo
b21hcyBXZWnDn3NjaHVoICg0KToKPj4gICBwb3dlcjogc3VwcGx5OiBhZGQgY2hhcmdlX2JlaGF2
aW91ciBhdHRyaWJ1dGVzCj4+ICAgcG93ZXI6IHN1cHBseTogYWRkIGhlbHBlcnMgZm9yIGNoYXJn
ZV9iZWhhdmlvdXIgc3lzZnMKPj4gICBwbGF0Zm9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IHN1cHBv
cnQgZm9yY2UtZGlzY2hhcmdlCj4+ICAgcGxhdGZvcm0veDg2OiB0aGlua3BhZF9hY3BpOiBzdXBw
b3J0IGluaGliaXQtY2hhcmdlCj4+Cj4+ICBEb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5c2Zz
LWNsYXNzLXBvd2VyIHwgIDE0ICsrCj4+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9h
Y3BpLmMgICAgICAgIHwgMTkxICsrKysrKysrKysrKysrKysrKystCj4+ICBkcml2ZXJzL3Bvd2Vy
L3N1cHBseS9wb3dlcl9zdXBwbHlfc3lzZnMuYyAgIHwgIDUxICsrKysrKwo+PiAgaW5jbHVkZS9s
aW51eC9wb3dlcl9zdXBwbHkuaCAgICAgICAgICAgICAgICB8ICAxNiArKwo+PiAgNCBmaWxlcyBj
aGFuZ2VkLCAyNjggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4KPj4gYmFzZS1j
b21taXQ6IDY2ZjRiZWFhNmMxZDI4MTYxZjUzNDQ3MTQ4NGIyZGFhMmRlMWRjZTAKPj4gLS0gCj4+
IDIuMzQuMAo+PgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2libS1hY3BpLWRldmVsCg==
