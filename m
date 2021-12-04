Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD6A468533
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  4 Dec 2021 14:57:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mtVWZ-0007zH-1l; Sat, 04 Dec 2021 13:56:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mtVWX-0007zB-CY
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 04 Dec 2021 13:56:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3DklwqLIbhF70738BmmNkWjzvOd8rpPIg3v//EXAr9M=; b=NTSx6zotvShsrFadhur0hYNZmv
 sMMbY2ACgPLsD4s+nVlX/ET3VaLLnSk9MWTs43t1yRn36+0gZMui8woPQ3xnhtwQozCvuTQ/r73X4
 XwVxXzB3qp/v5IgWWQnjTfKIc6sD7VvMv2eD+95ij4h6NvdaS7Hp/P0jp9zxy03ouyAE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3DklwqLIbhF70738BmmNkWjzvOd8rpPIg3v//EXAr9M=; b=fWHZvvpiOU4hUUSI5URH+qla1l
 AIwBQ5pKZsL4247Af1yCbGCTzhWDYZBBBs+vfkh0JW8h0Dik4mokMPxtkgUBa7ps2BtGazXL/u0BJ
 PlvDzI1NkmUGeX/M6k9o3//mEALHVnYOO3Gcr1lNgBROWldYqVqlk7dlcNjG3i4q0hbM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mtVWP-003uqt-Lj
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 04 Dec 2021 13:56:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638626165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3DklwqLIbhF70738BmmNkWjzvOd8rpPIg3v//EXAr9M=;
 b=WBS6FaSWOhhOcXPZVA/3X8JbWhrrsEKS0hp4k9UNLThXt/E91XCdFVciHRmfPXFnobTxqq
 APgHYqXhv9ntv5w4Gx0UccgfxrrDccXdHAokbbthRtvwyu7nZNgyBUhblH0CwlB+thXaTe
 YrEajyM5EXtqi3ydfcpABENK1WhStQ4=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-86-fSha1TfONAyKh9GX9YNZqQ-1; Sat, 04 Dec 2021 08:56:02 -0500
X-MC-Unique: fSha1TfONAyKh9GX9YNZqQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 w4-20020aa7cb44000000b003e7c0f7cfffso4870780edt.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 04 Dec 2021 05:56:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=3DklwqLIbhF70738BmmNkWjzvOd8rpPIg3v//EXAr9M=;
 b=yQf/6DCo3stEDM5cGoKvzn6U3BePEZU6uZjqlx3ghK7dQ4sRCHndSzPOhVsJDZLEzh
 TtHGSULvs4hJVu/vs2NtlzxhHkVB3byVY/anvZmNm+Gjcm6syO936cRjHmK+F6jrC+jb
 /VMB3hSkjNOeqoQKFiCriIpl0QIGdvPrhzyHYDW5zjJOMUoaRzf+Omq1vX08yyKlxfV7
 SHl6qwT/INrhDvCs+3usfiNrOoaAHhmX+ER4QufNWN8BndsGmQIy/ufmMhtoDGek+6sm
 GtH/RW9F3v1EiHkASg4cZkNQJnAY4S3xg+I/QJjH98ghEbw6iRPueV8INJEULXmHm1QR
 nVwA==
X-Gm-Message-State: AOAM533Da1PaG8aZBadc87yGAyk5i8KbSsW4nvKiV4A7BubnS0GbyOf9
 RiZAIXDby0ALLHeCO2WIaTp6V0uWQJMzQbJCXbHw6dyC1L/iw3N5vvGbUF5mp6U92+HVrDYFgFc
 571UCHdz4j3wD4Z3Nx1ck7tkKLYVK2MeH2PU=
X-Received: by 2002:a05:6402:100e:: with SMTP id
 c14mr36308609edu.196.1638626161379; 
 Sat, 04 Dec 2021 05:56:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy720jlD8y093U5xCfFPqtufnO7SYwJMPNYXI69mU0Ze3KrgsMlDFozoRuc1r8FLrioVjtByg==
X-Received: by 2002:a05:6402:100e:: with SMTP id
 c14mr36308579edu.196.1638626161173; 
 Sat, 04 Dec 2021 05:56:01 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id ho17sm3820836ejc.111.2021.12.04.05.56.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 04 Dec 2021 05:56:00 -0800 (PST)
Message-ID: <015913c3-171f-3ecb-2813-54404d6db273@redhat.com>
Date: Sat, 4 Dec 2021 14:56:00 +0100
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mtVWP-003uqt-Lj
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
YS5jb20+CgpJIGhhdmVuJ3QgbG9va2VkIGF0IHRoZSB0aGlua3BhZF9hcGNpLmMgYml0cyBjbG9z
ZWx5IHlldCAoZm9yIHRoaXMgbmV3IHZlcnNpb24pLApidXQgYXNzdW1pbmcgdGhvc2UgYXJlIHJl
YWR5IGZvciBtZXJnaW5nIHRvbywgd2UgbmVlZCB0byBkaXNjdXNzIGFib3V0IGhvdwp0byBtZXJn
ZSB0aGlzLgoKVGhlIHRoaW5rcGFkX2FjcGkgY29kZSBoYXMgYWxyZWFkeSBzZWVuIHF1aXRlIGEg
bG90IG9mIGNoYW5nZXMgaW4gLW5leHQsCnNvIEkgd291bGQgbGlrZSB0aGUgdGhpbmtwYWRfYWNw
aSBjaGFuZ2VzIHRvIGdvIHVwc3RyZWFtIHRocm91Z2ggdGhlCnBsYXRmb3JtLWRyaXZlcnMteDg2
LmdpdCB0cmVlIHRvIGF2b2lkIGNvbmZsaWN0cy4KCkFzIHN1Y2ggSSB0aGluayBpdCBpcyBiZXN0
IGlmIHlvdSAoU2ViYXN0aWFuKSBjYW4gcHJlcGFyZSBhbiBpbW11dGFibGUKYnJhbmNoIHdpdGgg
cGF0Y2ggMSArIDIgZm9yIG1lIHRvIG1lcmdlLiBUaGVuIGV2ZW4gaWYgcGF0Y2ggMyArIDQgbmVl
ZAptb3JlIHdvcmssIFRob21hcyBjYW4ganVzdCByZXNwaW4gdGhvc2Ugb24gdG9wIG9mIHRoZSBp
bW11dGFibGUgYnJhbmNoLgoKQWx0ZXJuYXRpdmVseSBJIGNhbiB0YWtlIHRoZSBlbnRpcmUgc2Vy
aWVzIHVwc3RyZWFtIHRocm91Z2ggdGhlCnBsYXRmb3JtLWRyaXZlcnMteDg2LmdpdCB0cmVlIGlm
IHRoYXQgaXMgb2sgd2l0aCB5b3UgKFNlYmFzdGlhbikuCgpFaXRoZXIgd2F5IHBsZWFzZSBsZXQg
bWUga25vdyBob3cgeW91IHdhbnQgdG8gcHJvY2VlZCB3aXRoIHRoaXMuCgpSZWdhcmRzLAoKSGFu
cwoKCgo+PiBQcmV2aW91cyBkaXNjdXNzaW9ucyBhYm91dCB0aGUgQVBJOgo+Pgo+PiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9wbGF0Zm9ybS1kcml2ZXIteDg2LzIwMjExMTA4MTkyODUyLjM1NzQ3
My0xLWxpbnV4QHdlaXNzc2NodWgubmV0Lwo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wbGF0
Zm9ybS1kcml2ZXIteDg2LzIxNTY5YTg5LTgzMDMtODU3My0wNWZiLWMyZmVjMjk5ODNkMUBnbWFp
bC5jb20vCj4+Cj4+IHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjExMTEzMTA0
MjI1LjE0MTMzMy0xLWxpbnV4QHdlaXNzc2NodWgubmV0Lwo+PiB2MSAtPiB2MjoKPj4KPj4gKiBV
c2Ugc3lzZnNfZW1pdC1BUElzIGluc3RlYWQgb2YgcGxhaW4gc3ByaW50Zgo+PiAqIE1vcmUgY2Vj
a3MgZm9yIGFjdHVhbCBmZWF0dXJlIGF2YWlsYWJpbGl0eQo+PiAqIFZhbGlkYXRpb24gb2YgdGhl
IHdyaXR0ZW4gdmFsdWVzCj4+ICogUmVhZCBpbmhpYml0LWNoYXJnZSB2aWEgQklDRyBpbnN0ZWFk
IG9mIFBTU0cgKHBlYWsgc2hpZnQgc3RhdGUpCj4+ICogRG9uJ3QgbWFuZ2xlIGVycm9yIG51bWJl
cnMgaW4gY2hhcmdlX2JlaGF2aW91cl9zdG9yZSgpCj4+Cj4+IE9wZW4gcG9pbnRzOgo+Pgo+PiBU
aG9tYXMgS29jaCBoYXMgb2JzZXJ2ZWQgdGhhdCBvbiBhIFQ0NTBzIHdpdGggdHdvIGJhdHRlcmll
cwo+PiBpbmhpYml0LWNoYXJnZSBvbiBCQVQwIHdpbGwgYWZmZWN0IGJvdGggYmF0dGVyaWVzIGFu
ZCBmb3IgQkFUMSBpdCBpcyBpZ25vcmVkCj4+IGVudGlyZWx5LCB0aGlzIHNlZW1zIHRvIGJlIGEg
YnVnIGluIHRoZSBFQy4KPj4gT24gbXkgVDQ2MHMgd2l0aCB0d28gYmF0dGVyaWVzIGl0IHdvcmtz
IGNvcnJlY3RseS4KPj4KPj4gVGhvbWFzIFdlacOfc2NodWggKDQpOgo+PiAgIHBvd2VyOiBzdXBw
bHk6IGFkZCBjaGFyZ2VfYmVoYXZpb3VyIGF0dHJpYnV0ZXMKPj4gICBwb3dlcjogc3VwcGx5OiBh
ZGQgaGVscGVycyBmb3IgY2hhcmdlX2JlaGF2aW91ciBzeXNmcwo+PiAgIHBsYXRmb3JtL3g4Njog
dGhpbmtwYWRfYWNwaTogc3VwcG9ydCBmb3JjZS1kaXNjaGFyZ2UKPj4gICBwbGF0Zm9ybS94ODY6
IHRoaW5rcGFkX2FjcGk6IHN1cHBvcnQgaW5oaWJpdC1jaGFyZ2UKPj4KPj4gIERvY3VtZW50YXRp
b24vQUJJL3Rlc3Rpbmcvc3lzZnMtY2xhc3MtcG93ZXIgfCAgMTQgKysKPj4gIGRyaXZlcnMvcGxh
dGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyAgICAgICAgfCAxOTEgKysrKysrKysrKysrKysrKysr
Ky0KPj4gIGRyaXZlcnMvcG93ZXIvc3VwcGx5L3Bvd2VyX3N1cHBseV9zeXNmcy5jICAgfCAgNTEg
KysrKysrCj4+ICBpbmNsdWRlL2xpbnV4L3Bvd2VyX3N1cHBseS5oICAgICAgICAgICAgICAgIHwg
IDE2ICsrCj4+ICA0IGZpbGVzIGNoYW5nZWQsIDI2OCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+Pgo+Pgo+PiBiYXNlLWNvbW1pdDogNjZmNGJlYWE2YzFkMjgxNjFmNTM0NDcxNDg0YjJk
YWEyZGUxZGNlMAo+PiAtLSAKPj4gMi4zNC4wCj4+CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0t
YWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
